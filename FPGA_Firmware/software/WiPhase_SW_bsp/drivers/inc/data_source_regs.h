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

#ifndef __DATA_SOURCE_REGS_H__
#define __DATA_SOURCE_REGS_H__

#include <io.h>

#define DATA_SOURCE_STATUS_REG                        0
#define DATA_SOURCE_CONTROL_REG                       1
#define DATA_SOURCE_FILL_REG                          2

#define DATA_SOURCE_CMD_LO                            0
#define DATA_SOURCE_CMD_HI                            1

// Read slave
#define IORD_DATA_SOURCE_CONTROL(base)                \
        IORD(base, DATA_SOURCE_CONTROL)

#define IORD_DATA_SOURCE_STATUS(base)                 \
        IORD(base, DATA_SOURCE_STATUS)

// Write slave
#define IOWR_DATA_SOURCE_CONTROL(base, data)          \
        IOWR(base, DATA_SOURCE_DATA_CONTROL, data)

// Read command
#define IORD_DATA_SOURCE_CONTROL(base)                \
        IORD(base, DATA_SOURCE_CONTROL)

// Write command
#define IOWR_DATA_SOURCE_CMD_LO(base, data)          \
        IOWR(base, DATA_SOURCE_CMD_LO_REG, data)

#define IOWR_DATA_SOURCE_CMD_HI(base, data)          \
        IOWR(base, DATA_SOURCE_CMD_LO_HI, data)

#define DATA_SOURCE_ENABLE_MSK        (0x00000001)
#define DATA_SOURCE_IGNORE_READY_MSK  (0x00000002)
#define DATA_SOURCE_THROTTLE_MSK      (0x0001FF00)
#define DATA_SOURCE_RESET_MSK         (0x00020000)

#define DATA_SOURCE_ENABLE_RT         (0)
#define DATA_SOURCE_IGNORE_READY_RT   (1)
#define DATA_SOURCE_THROTTLE_RT       (8)
#define DATA_SOURCE_RESET_RT          (17)

#define DATA_SOURCE_ID_MSK             (0x0000FFFF)
#define DATA_SOURCE_ID_RT              (0)
#define DATA_SOURCE_NUMCHANNELS_MSK    (0x00FF0000)
#define DATA_SOURCE_NUMCHANNELS_RT     (16)
#define DATA_SOURCE_NUMSYMBOLS_MSK     (0x7F000000)
#define DATA_SOURCE_NUMSYMBOLS_RT      (24)
#define DATA_SOURCE_SUPPORTPACKETS_MSK (0x80000000)
#define DATA_SOURCE_SUPPORTPACKETS_RT  (31)

#define DATA_SOURCE_BUSY_MSK        (0x01)
#define DATA_SOURCE_BUSY_RT         (0)
#define DATA_SOURCE_FILL_MSK        (0xFF80)
#define DATA_SOURCE_FILL_RT         (7)

#define DATA_SOURCE_CMD_SIZE_MSK         (0x0000FFFF)
#define DATA_SOURCE_CMD_CHANNEL_MSK      (0x3FFF0000)
#define DATA_SOURCE_CMD_SOP_MSK          (0x40000000)
#define DATA_SOURCE_CMD_EOP_MSK          (0x80000000)
#define DATA_SOURCE_CMD_SIGERROR_MSK     (0x0000FFFF)
#define DATA_SOURCE_CMD_DATERROR_MSK     (0x00FF0000)
#define DATA_SOURCE_CMD_SUPPRESS_SOP_MSK (0x01000000)
#define DATA_SOURCE_CMD_SUPPRESS_EOP_MSK (0x02000000)

#define DATA_SOURCE_CMD_SIZE_RT          (0)
#define DATA_SOURCE_CMD_CHANNEL_RT       (16)
#define DATA_SOURCE_CMD_SOP_RT           (30)
#define DATA_SOURCE_CMD_EOP_RT           (31)
#define DATA_SOURCE_CMD_SIGERROR_RT      (0)
#define DATA_SOURCE_CMD_DATERROR_RT      (16)
#define DATA_SOURCE_CMD_SUPPRESS_SOP_RT  (24)
#define DATA_SOURCE_CMD_SUPPRESS_EOP_RT  (25)

#endif /* __DATA_SOURCE_REGS_H__ */

