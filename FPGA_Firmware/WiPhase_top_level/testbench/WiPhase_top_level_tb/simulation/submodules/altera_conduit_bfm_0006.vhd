-- (C) 2001-2017 Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files from any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License Subscription 
-- Agreement, Intel FPGA IP License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Intel and sold by 
-- Intel or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.


-- $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
-- $Revision: #7 $
-- $Date: 2010/08/05 $
-- $Author: klong $
-------------------------------------------------------------------------------
-- =head1 NAME
-- altera_conduit_bfm
-- =head1 SYNOPSIS
-- Bus Functional Model (BFM) for a Standard Conduit BFM
-------------------------------------------------------------------------------
-- =head1 DESCRIPTION
-- This is a Bus Functional Model (BFM) for a Standard Conduit Master.
-- This BFM sampled the input/bidirection port value or driving user's value to 
-- output ports when user call the API.  
-- This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
-- Generation parameters:
-- output_name:                  altera_conduit_bfm_0006
-- role:width:direction:         MISO:1:output,MOSI:1:input,SCLK:1:input,SS_n:3:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;
use work.altera_conduit_bfm_0006_vhdl_pkg.all;

entity altera_conduit_bfm_0006 is
   port (
      sig_MISO   : out   std_logic_vector(0 downto 0);
      sig_MOSI   : in    std_logic_vector(0 downto 0);
      sig_SCLK   : in    std_logic_vector(0 downto 0);
      sig_SS_n   : in    std_logic_vector(2 downto 0)
   );
end altera_conduit_bfm_0006;

architecture altera_conduit_bfm_0006_arch of altera_conduit_bfm_0006 is 

      signal update : std_logic := '0';

   begin
      process begin
         wait for 1 ps;
         update <= not update;
      end process;

      process (update) begin
         sig_MISO   <= out_trans.sig_MISO_out after 1 ps;
         sig_MOSI_in <= sig_MOSI;
         sig_SCLK_in <= sig_SCLK;
         sig_SS_n_in <= sig_SS_n;
      end process;

end altera_conduit_bfm_0006_arch;

