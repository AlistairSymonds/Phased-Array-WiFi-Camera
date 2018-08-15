/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <stdint.h>
#include "system.h"
#include "altera_avalon_spi.h"

int main()
{
  printf("Hello from Nios II!\n");

  uint8_t spi_data_rx;
  uint8_t data[3];
  data[0] = 0xAB;
  data[1] = 0xAF;
  data[2] = 0x4D;

  alt_avalon_spi_command(SPI_BASE,0,3,&data,0,&spi_data_rx,0);


  return 0;
}
