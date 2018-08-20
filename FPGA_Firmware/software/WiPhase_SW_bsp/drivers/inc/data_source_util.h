/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2007 Altera Corporation, San Jose, California, USA.           *
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

#ifndef __DATA_SOURCE_UTIL_H__
#define __DATA_SOURCE_UTIL_H__

#include "data_source_regs.h"

#define DATA_SOURCE_ID                100
#define DATA_SOURCE_SEND_SOP          0x01
#define DATA_SOURCE_SEND_EOP          0x02
#define DATA_SOURCE_SEND_SAFE         0x04
#define DATA_SOURCE_SEND_SUPPRESS_SOP 0x08
#define DATA_SOURCE_SEND_SUPPRESS_EOP 0x10

/****************************************************  
 * Public API                                       *
 ****************************************************/

/*************************
 * Reset & Configuration
 *************************/

// Reset the data source, including all internal counters.
void data_source_reset(alt_u32 base);

// Initialize the Data Source
int data_source_init(alt_u32 csr_base, alt_u32 command_base); 

// Get the Data Source ID
int data_source_get_id(alt_u32 base);

// Returns 1 if the data soruce supports packets.
int data_source_get_supports_packets(alt_u32 base);

// Returns the number of channels the data source supports.
int data_source_get_num_channels(alt_u32 base);

// Returns the number of symbols per cycles that the data source supports.
int data_source_get_symbols_per_cycle(alt_u32 base);

// Get & set the enable bit.  When not enabled, the data 
// source will not send data, regardless of the commands.
void data_source_set_enable(alt_u32 base, alt_u32 value);
int data_source_get_enable(alt_u32 base);

// Get & set the throttle.  Throttle is an integer between 
// 0 and 256, inclusively, where the data source sends at 
// a rate of throttle/256.  
void data_source_set_throttle(alt_u32 base, alt_u32 value);
int data_source_get_throttle(alt_u32 base);

/*************************
 * Operational (CSR slave)
 *************************/

// Returns true if the source is sending or has 
// unsent data in it's command FIFO.
int data_source_is_busy(alt_u32 base);

// Return the Source's FIFO's fill level. 
int data_source_fill_level(alt_u32 base);

/*************************
 * Operational (CMD slave)
 *************************/

// Send a data fragment of the specified length to the specified 
// channel.  
// 
// When packets are supported, the caller must ensure that 
// a) sop and eop consistancy is maintained for any given channel. 
// b) non-eop packet framents are a multiple of the source's data width.
//
// When packets are not supported, the caller must ensure that 
// a) sop and eop are not used 
// b) all data fragments are a multiple of the source's data width.
//
// The DATA_SOURCE_SEND_SOP & DATA_SOURCE_SEND_EOP flags indicate 
// start and end of packets, respectively. 
//
// The DATA_SOURCE_SEND_SUPPRESS_SOP & DATA_SOURCE_SEND_SUPPRESS_EOP
// flags cause the beginning and end of the packets with the sop or 
// eop flags suppressed.
//
// The 'error' input is the value to assert on the otuput interface's 
// 'error' signals.  0 if not specified. 
//
// The 'data_error_mask' input is a mask to OR with the outgoing data 
// to cause a data error to be detected by the sink. 
//
int data_source_send_data(alt_u32 cmd_base, alt_u16 channel, alt_u16 size,
                          alt_u32 flags, alt_u16 error, alt_u8 data_error_mask);

// The same as data_source_send_data, but modifies the arguments to
// ensure that the command is safe.
// 
// The following conditions are checked, and a 0 is returned if any 
// of the conditions are not met.
//
// a) Data is not sent for an unsupported channel. Data sent on 
// unsupported channels will be sent on the maximum channel instead.
//  
// b) Non-eop data fragments, including unpacketized fragments 
// are a multiple of the source's data width. Transaction sizes
// will be rounded upwards to the nearest good size.
//
// c) If packets are not supported, sop and eop are not used. Sop and 
// eop flags will be removed from the command.
//
int data_source_send_safe_data(alt_u32 cmd_base, alt_u32 csr_base, alt_u16 channel,
           alt_u16 size, alt_u32 flags, alt_u16 error, alt_u8 data_error_mask);

#endif /* __DATA_SOURCE_UTIL_H__ */
