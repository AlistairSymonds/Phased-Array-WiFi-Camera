/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2009 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
*                                                                             *
******************************************************************************/

#include "data_source_util.h"
#include "data_source_regs.h"

/*************************
 * Private Utility Functions
 *************************/
int data_source_io_rd(alt_u32 base, alt_u32 address, alt_u32 mask, alt_u32 rightbit) {
    return (IORD(base, address) & mask) >> rightbit;
}

int data_source_io_wr(alt_u32 base, alt_u32 address, alt_u32 value) {
    IOWR(base, address, value);
    return value;
}

int data_source_io_rmw(alt_u32 base, alt_u32 address, alt_u32 value, alt_u32 mask, alt_u32 rightbit)
{
    alt_u32 rd = IORD(base, address) & ~mask;
    alt_u32 wr  = ((value << rightbit) & mask) | rd;
    IOWR(base, address, wr);
    return wr;
}

/*************************
 * Reset & Configuration
 *************************/

void data_source_reset(alt_u32 base)
{
    data_source_io_rmw(base, DATA_SOURCE_CONTROL_REG, 1, DATA_SOURCE_RESET_MSK, DATA_SOURCE_RESET_RT);
    data_source_io_rmw(base, DATA_SOURCE_CONTROL_REG, 0, DATA_SOURCE_RESET_MSK, DATA_SOURCE_RESET_RT);
}

void data_source_set_errors(alt_u32 base, alt_u32 value) {
    data_source_io_wr(base, DATA_SOURCE_CMD_HI, value);
}


// Initialize the Data Source
int data_source_init(alt_u32 csr_base, alt_u32 command_base)
{
    int x = data_source_get_id(csr_base);
    if (x != DATA_SOURCE_ID)
      return 0;

    data_source_reset(csr_base);

    data_source_set_enable(csr_base, 0);
    if (data_source_get_enable(csr_base) != 0) {
       return 0;
    }

    data_source_set_throttle(csr_base, 256);
    if (data_source_get_throttle(csr_base) != 256) {
       return 0;
    }

    x = data_source_is_busy(csr_base);
    if (x==1) {
       return 0;
    }

    x = data_source_fill_level(csr_base);
    if (x != 0) {
       return 0;
    }

    data_source_set_errors(command_base, 0);
    return 1;
}


int data_source_get_id(alt_u32 base)
{
    return data_source_io_rd(base, DATA_SOURCE_STATUS_REG, DATA_SOURCE_ID_MSK, DATA_SOURCE_ID_RT);
}

int data_source_get_supports_packets(alt_u32 base) {
    return data_source_io_rd(base, DATA_SOURCE_STATUS_REG, DATA_SOURCE_SUPPORTPACKETS_MSK, DATA_SOURCE_SUPPORTPACKETS_RT);
}

int data_source_get_num_channels(alt_u32 base) {
    return data_source_io_rd(base, DATA_SOURCE_STATUS_REG, DATA_SOURCE_NUMCHANNELS_MSK, DATA_SOURCE_NUMCHANNELS_RT);
}

int data_source_get_symbols_per_cycle(alt_u32 base) {
    return data_source_io_rd(base, DATA_SOURCE_STATUS_REG, DATA_SOURCE_NUMSYMBOLS_MSK, DATA_SOURCE_NUMSYMBOLS_RT);
}

void data_source_set_enable(alt_u32 base, alt_u32 value)
{
    data_source_io_rmw(base, DATA_SOURCE_CONTROL_REG, value, DATA_SOURCE_ENABLE_MSK, DATA_SOURCE_ENABLE_RT);
}

int data_source_get_enable(alt_u32 base)
{
    return data_source_io_rd(base, DATA_SOURCE_CONTROL_REG, DATA_SOURCE_ENABLE_MSK, DATA_SOURCE_ENABLE_RT);
}

void data_source_set_throttle(alt_u32 base, alt_u32 value)
{
    data_source_io_rmw(base, DATA_SOURCE_CONTROL_REG, value, DATA_SOURCE_THROTTLE_MSK, DATA_SOURCE_THROTTLE_RT);
}

int data_source_get_throttle(alt_u32 base)
{
    return data_source_io_rd(base, DATA_SOURCE_CONTROL_REG, DATA_SOURCE_THROTTLE_MSK, DATA_SOURCE_THROTTLE_RT);
}

/*************************
 * Operational (CSR slave)
 *************************/

int data_source_is_busy(alt_u32 base)
{
    return data_source_io_rd(base, DATA_SOURCE_FILL_REG, DATA_SOURCE_BUSY_MSK, DATA_SOURCE_BUSY_RT);
}

int data_source_fill_level(alt_u32 base)
{
    return data_source_io_rd(base, DATA_SOURCE_FILL_REG, DATA_SOURCE_FILL_MSK, DATA_SOURCE_FILL_RT);
}


/*************************
 * Operational (CMD slave)
 *************************/
int data_source_do_command(alt_u32 base, alt_u32 cmd, alt_u32 cmd_hi) {
    int result;
    if (cmd_hi) {
        data_source_set_errors(base, cmd_hi);           // Set errors
        result = data_source_io_wr(base, DATA_SOURCE_CMD_LO, cmd);
        data_source_set_errors(base, 0);                // Clear errors
    } else {
        result = data_source_io_wr(base, DATA_SOURCE_CMD_LO, cmd);
    }
    return (result == cmd);
}


int data_source_send_data(alt_u32 cmd_base, alt_u16 channel, alt_u16 size,
                          alt_u32 flags, alt_u16 error, alt_u8 data_error_mask)
{
    alt_u32 flags2 = flags;
    alt_u32 cmd_hi = 0;
    alt_u32 cmd = 0;

    // Set up cmd_hi
    cmd_hi |= DATA_SOURCE_CMD_SIGERROR_MSK & (error << DATA_SOURCE_CMD_SIZE_RT);
    cmd_hi |= DATA_SOURCE_CMD_DATERROR_MSK & (data_error_mask << DATA_SOURCE_CMD_DATERROR_RT);

    if (flags & DATA_SOURCE_SEND_SUPPRESS_SOP) {
      flags2 |= DATA_SOURCE_SEND_SOP;
      cmd_hi |= DATA_SOURCE_CMD_SUPPRESS_SOP_MSK;
    }

    if (flags & DATA_SOURCE_SEND_SUPPRESS_EOP) {
      flags2 |= DATA_SOURCE_SEND_SOP;
      cmd_hi |= DATA_SOURCE_CMD_SUPPRESS_EOP_MSK;
    }

    // Set up cmd
    cmd += DATA_SOURCE_CMD_SIZE_MSK & (size << DATA_SOURCE_CMD_SIZE_RT);
    cmd += DATA_SOURCE_CMD_CHANNEL_MSK & (channel << DATA_SOURCE_CMD_CHANNEL_RT);

    if (flags & DATA_SOURCE_SEND_SOP)
      cmd += DATA_SOURCE_CMD_SOP_MSK;

    if (flags & DATA_SOURCE_SEND_EOP)
      cmd += DATA_SOURCE_CMD_EOP_MSK;

    return data_source_do_command(cmd_base, cmd, cmd_hi);
}

int data_source_send_safe_data(alt_u32 cmd_base, alt_u32 csr_base, alt_u16 channel,
           alt_u16 size, alt_u32 flags, alt_u16 error, alt_u8 data_error_mask)
{

    int ok = 1;

    // ensure channel does not exceed max channel
    int numChannels = data_source_get_num_channels(csr_base);
    int maxChannel = (numChannels == 0) ? 0 : numChannels - 1;

    if (channel > maxChannel)
    {
        ok = 0;
        channel = maxChannel;
    }

    // ensure sop and eop flags are not used for non-packet transfers
    if (!data_source_get_supports_packets(csr_base))
    {
        if (flags & (DATA_SOURCE_SEND_SOP | DATA_SOURCE_SEND_EOP))
        {
            flags &= ~(DATA_SOURCE_SEND_SOP);
            flags &= ~(DATA_SOURCE_SEND_EOP);
            ok = 0;
        }
    }

    // ensure data fragment size
    int isEOP = flags & DATA_SOURCE_SEND_EOP;
    if (!isEOP)
    {
        int symbolsPerBeat = data_source_get_symbols_per_cycle(csr_base);
        if (size % symbolsPerBeat != 0)
        {
            int correction = symbolsPerBeat - (size % symbolsPerBeat);
            size += correction;
            ok = 0;
        }
    }

    data_source_send_data(cmd_base, channel, size, flags, error, data_error_mask);
    return ok;
}
