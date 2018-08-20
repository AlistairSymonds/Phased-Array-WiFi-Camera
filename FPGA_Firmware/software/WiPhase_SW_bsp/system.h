/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu_v2' in SOPC Builder design 'WiPhase_top_level'
 * SOPC Builder design path: ../../WiPhase_top_level.sopcinfo
 *
 * Generated: Mon Aug 20 16:06:50 EST 2018
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00010820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x11
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00008020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x11
#define ALT_CPU_NAME "cpu_v2"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00008000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00010820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x11
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00008020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x11
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00008000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_SPI
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_ETH_TSE
#define __ALTERA_NIOS2_GEN2
#define __ALTPLL
#define __DATA_SOURCE


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone 10 LP"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x11470
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x11470
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x11470
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "WiPhase_top_level"


/*
 * eth configuration
 *
 */

#define ALT_MODULE_CLASS_eth altera_eth_tse
#define ETH_BASE 0x11000
#define ETH_ENABLE_MACLITE 0
#define ETH_FIFO_WIDTH 32
#define ETH_IRQ -1
#define ETH_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ETH_IS_MULTICHANNEL_MAC 0
#define ETH_MACLITE_GIGE 0
#define ETH_MDIO_SHARED 0
#define ETH_NAME "/dev/eth"
#define ETH_NUMBER_OF_CHANNEL 1
#define ETH_NUMBER_OF_MAC_MDIO_SHARED 1
#define ETH_PCS 0
#define ETH_PCS_ID 0
#define ETH_PCS_SGMII 0
#define ETH_RECEIVE_FIFO_DEPTH 2048
#define ETH_REGISTER_SHARED 0
#define ETH_RGMII 1
#define ETH_SPAN 1024
#define ETH_TRANSMIT_FIFO_DEPTH 2048
#define ETH_TYPE "altera_eth_tse"
#define ETH_USE_MDIO 1


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x11470
#define JTAG_UART_IRQ 4
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * ram_onchip configuration
 *
 */

#define ALT_MODULE_CLASS_ram_onchip altera_avalon_onchip_memory2
#define RAM_ONCHIP_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define RAM_ONCHIP_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define RAM_ONCHIP_BASE 0x8000
#define RAM_ONCHIP_CONTENTS_INFO ""
#define RAM_ONCHIP_DUAL_PORT 0
#define RAM_ONCHIP_GUI_RAM_BLOCK_TYPE "AUTO"
#define RAM_ONCHIP_INIT_CONTENTS_FILE "WiPhase_top_level_ram_onchip"
#define RAM_ONCHIP_INIT_MEM_CONTENT 1
#define RAM_ONCHIP_INSTANCE_ID "NONE"
#define RAM_ONCHIP_IRQ -1
#define RAM_ONCHIP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RAM_ONCHIP_NAME "/dev/ram_onchip"
#define RAM_ONCHIP_NON_DEFAULT_INIT_FILE_ENABLED 0
#define RAM_ONCHIP_RAM_BLOCK_TYPE "AUTO"
#define RAM_ONCHIP_READ_DURING_WRITE_MODE "DONT_CARE"
#define RAM_ONCHIP_SINGLE_CLOCK_OP 0
#define RAM_ONCHIP_SIZE_MULTIPLE 1
#define RAM_ONCHIP_SIZE_VALUE 20480
#define RAM_ONCHIP_SPAN 20480
#define RAM_ONCHIP_TYPE "altera_avalon_onchip_memory2"
#define RAM_ONCHIP_WRITABLE 1


/*
 * sample_pll configuration
 *
 */

#define ALT_MODULE_CLASS_sample_pll altpll
#define SAMPLE_PLL_BASE 0x11450
#define SAMPLE_PLL_IRQ -1
#define SAMPLE_PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SAMPLE_PLL_NAME "/dev/sample_pll"
#define SAMPLE_PLL_SPAN 16
#define SAMPLE_PLL_TYPE "altpll"


/*
 * spi configuration
 *
 */

#define ALT_MODULE_CLASS_spi altera_avalon_spi
#define SPI_BASE 0x11400
#define SPI_CLOCKMULT 1
#define SPI_CLOCKPHASE 0
#define SPI_CLOCKPOLARITY 0
#define SPI_CLOCKUNITS "Hz"
#define SPI_DATABITS 8
#define SPI_DATAWIDTH 16
#define SPI_DELAYMULT "1.0E-9"
#define SPI_DELAYUNITS "ns"
#define SPI_EXTRADELAY 1
#define SPI_INSERT_SYNC 0
#define SPI_IRQ 2
#define SPI_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SPI_ISMASTER 1
#define SPI_LSBFIRST 0
#define SPI_NAME "/dev/spi"
#define SPI_NUMSLAVES 3
#define SPI_PREFIX "spi_"
#define SPI_SPAN 32
#define SPI_SYNC_REG_DEPTH 2
#define SPI_TARGETCLOCK 50000u
#define SPI_TARGETSSDELAY "100000.0"
#define SPI_TYPE "altera_avalon_spi"


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid_qsys
#define SYSID_BASE 0x11468
#define SYSID_ID 305419896
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1534736125
#define SYSID_TYPE "altera_avalon_sysid_qsys"


/*
 * test_pattern_st_gen_command configuration
 *
 */

#define ALT_MODULE_CLASS_test_pattern_st_gen_command data_source
#define TEST_PATTERN_ST_GEN_COMMAND_BASE 0x11460
#define TEST_PATTERN_ST_GEN_COMMAND_IRQ -1
#define TEST_PATTERN_ST_GEN_COMMAND_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TEST_PATTERN_ST_GEN_COMMAND_NAME "/dev/test_pattern_st_gen_command"
#define TEST_PATTERN_ST_GEN_COMMAND_SPAN 8
#define TEST_PATTERN_ST_GEN_COMMAND_TYPE "data_source"


/*
 * test_pattern_st_gen_csr configuration
 *
 */

#define ALT_MODULE_CLASS_test_pattern_st_gen_csr data_source
#define TEST_PATTERN_ST_GEN_CSR_BASE 0x11440
#define TEST_PATTERN_ST_GEN_CSR_IRQ -1
#define TEST_PATTERN_ST_GEN_CSR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TEST_PATTERN_ST_GEN_CSR_NAME "/dev/test_pattern_st_gen_csr"
#define TEST_PATTERN_ST_GEN_CSR_SPAN 16
#define TEST_PATTERN_ST_GEN_CSR_TYPE "data_source"


/*
 * timer configuration
 *
 */

#define ALT_MODULE_CLASS_timer altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0x11420
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 50000000
#define TIMER_IRQ 1
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 49999
#define TIMER_MULT 0.001
#define TIMER_NAME "/dev/timer"
#define TIMER_PERIOD 1
#define TIMER_PERIOD_UNITS "ms"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 1000
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"

#endif /* __SYSTEM_H_ */
