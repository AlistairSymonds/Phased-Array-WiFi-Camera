//--------------------------------------------------------------------------//
// Title:       c10lp_golden_top.v                                        //
// Rev:         Rev 1                                                       //
//--------------------------------------------------------------------------//
// Description: All Cyclone 10 LP I/O      //
//              FPGA signals and settings such as termination, drive       //
//              strength, etc...  Some toggle_rate=0 where needed for       // 
//					 fitter rules.(TR=0)														 //
//--------------------------------------------------------------------------//
// Revision History:                                                        //
// Rev 1:       Board Revision A FPGA pinout.		 								 //
//----------------------------------------------------------------------------
//------ 1 ------- 2 ------- 3 ------- 4 ------- 5 ------- 6 ------- 7 ------7
//------ 0 ------- 0 ------- 0 ------- 0 ------- 0 ------- 0 ------- 0 ------8
//----------------------------------------------------------------------------
//Copyright 2017 Altera Corporation. All rights reserved.  Altera products  
//are protected under numerous U.S. and foreign patents, maskwork rights,     
//copyrights and other intellectual property laws.                            
//                                                                            
//This reference design file, and your use thereof, is subject to and         
//governed by the terms and conditions of the applicable Altera Reference     
//Design License Agreement.  By using this reference design file, you         
//indicate your acceptance of such terms and conditions between you and       
//Altera Corporation.  In the event that you do not agree with such terms and 
//conditions, you may not use the reference design file. Please promptly      
//destroy any copies you have made.                                           
//                                                                            
//This reference design file being provided on an "as-is" basis and as an     
//accommodation and therefore all warranties, representations or guarantees   
//of any kind (whether express, implied or statutory) including, without      
//limitation, warranties of merchantability, non-infringement, or fitness for 
//a particular purpose, are specifically disclaimed.  By making this          
//reference design file available, Altera expressly does not recommend,       
//suggest or require that this reference design file be used in combination   
//with any other product not provided by Altera.           

module c10lp_baseline_pinout (
//Clocks
	input			C10_CLK50M,			//3.3V-LVCMOS					FPGA clock
	input			USB_CLK,				//3.3V-LVCMOS					USB clock
	input			ENET_CLK_125M,		//LVCMOS - 125MHz				Ethernet clock
	input			HBUS_CLK_50M,		//LVCMOS - 50MHz				HyperRAM clock
	input			C10_CLK_ADJ,		//LVCMOS Adjustable				

//User Input-Output Components
	input			[3:0] USER_PB,		//3.3V			User-defined push buttons
	input			[2:0] USER_DIP,	//3.3V			User-defined DIP switches
	output		[3:0] USER_LED,	//3.3V			User-defined LEDs
	
//Arduino Digital IO
	inout			[13:0] ARDUINO_IO,	//3.3V		Arduino input-output
	input			ARDUINO_RSTn,			//3.3V		Arduino reset
	
//Arduino I2C
	inout			ARDUINO_SCL,		//3.3V			Ardunio serial clock
	inout			ARDUINO_SDA,		//3.3V			Arduino serial data
	
//Ardunio ADC I2C
	output		ARDUINO_ADC_SCL,	//3.3V			Arduino analog to digital serial clock
	inout			ARDUINO_ADC_SDA,	//3.3V			Arduino analog to digital serial data
	
//HyperRAM (HyperBUS)
	inout			[7:0] HBUS_DQ,		//1.8V
	inout			HBUS_RWDS,			//1.8V
	output		HBUS_CKp,			//1.8V
	output		HBUS_CKn,			//1.8V
	output		HBUS_CS2n,			//1.8V
	output		HBUS_RSTn,			//1.8V
	output		HBUS_CS1n,			//1.8V			Reserved for MCP/Flash
	input			HBUS_RSTOn,			//1.8V			Reserved for MCP/Flash
	input			HBUS_INTn,			//1.8V			Reserved for MCP/Flash

//2x20 GPIO
	inout			[35:0] GPIO,		//3.3V			General purpose I/O

//C10 M10 Interconnection
	inout			[3:0] C10_M10_IO,	//3.3V			

//C10 Misc. Signals	
	input			C10_RESETn,			//3.3V			
//	output		C10_CONF_DONE,		//3.3V			
	output		C10_CRC_ERROR,		//3.3V			
	output		C10_INIT_DONE,		//3.3V			
	
//Ethernet
	input			ENET_RG_RXCLK,		//3.3V			Ethernet RX clock
	input			ENET_RG_RXCTL,		//3.3V			Ethernet RX control
	input			ENET_RG_RXD0,		//3.3V			Ethernet RX data 0
	input			ENET_RG_RXD1,		//3.3V			Ethernet RX data 1
	input			ENET_RG_RXD2,		//3.3V			Ethernet RX data 2
	input			ENET_RG_RXD3,		//3.3V			Ethernet RX data 3
	output		ENET_RG_TXCLK,		//3.3V			Ethernet TX clock
	output		ENET_RG_TXCTL,		//3.3V			Ethernet TX control
	output		ENET_RG_TXD0,		//3.3V			Ethernet TX data 0
	output		ENET_RG_TXD1,		//3.3V			Ethernet TX data 1
	output		ENET_RG_TXD2,		//3.3V			Ethernet TX data 2
	output		ENET_RG_TXD3,		//3.3V			Ethernet TX data 3
	output		ENET_MDC,			//3.3V			
	inout			ENET_MDIO,			//3.3V			
	input			ENET_INT,			//3.3V			Ethernet interrupt
	output		ENET_RSTn,			//3.3V			Ethernet reset

//M10 USB Interface
	inout			[7:0] USB_DATA,	//3.3V			USB data
	inout			[1:0] USB_ADDR,	//3.3V			USB address
	output		USB_FULL,			//3.3V			USB full flag
	output		USB_EMPTY,			//3.3V			USB empty flag
	input			USB_SCL,				//3.3V			USB serial clock
	inout			USC_SDA,				//3.3V			USB serial data
	input			USB_RESETn,			//3.3V			USB reset
	input			USB_OEn,				//3.3V			USB enable
	input			USB_RDn,				//3.3V			USB read enable
	input			USB_WRn,				//3.3V			USB write enable
	
//PMOD
	inout			[7:0] PMOD_D		//3.3V

);

endmodule
