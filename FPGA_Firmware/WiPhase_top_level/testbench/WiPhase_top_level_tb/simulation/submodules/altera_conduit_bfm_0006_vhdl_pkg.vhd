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
-- This is a Bus Functional Model (BFM) VHDL package for a Standard Conduit Master.
-- This package provides the API that will be used to get the value of the sampled
-- input/bidirection port or set the value to be driven to the output ports.
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





package altera_conduit_bfm_0006_vhdl_pkg is

   -- output signal register
   type altera_conduit_bfm_0006_out_trans_t is record
      sig_MISO_out     : std_logic_vector(0 downto 0);
   end record;
   
   shared variable out_trans        : altera_conduit_bfm_0006_out_trans_t;

   -- input signal register
   signal sig_MOSI_in      : std_logic_vector(0 downto 0);
   signal sig_SCLK_in      : std_logic_vector(0 downto 0);
   signal sig_SS_n_in      : std_logic_vector(2 downto 0);

   -- VHDL Procedure API
   
   -- set MISO value
   procedure set_MISO             (signal_value : in std_logic_vector(0 downto 0));
   
   -- get MOSI value
   procedure get_MOSI             (signal_value : out std_logic_vector(0 downto 0));
   
   -- get SCLK value
   procedure get_SCLK             (signal_value : out std_logic_vector(0 downto 0));
   
   -- get SS_n value
   procedure get_SS_n             (signal_value : out std_logic_vector(2 downto 0));
   
   -- VHDL Event API

   procedure event_MOSI_change;   

   procedure event_SCLK_change;   

   procedure event_SS_n_change;   

end altera_conduit_bfm_0006_vhdl_pkg;

package body altera_conduit_bfm_0006_vhdl_pkg is
   
   procedure set_MISO             (signal_value : in std_logic_vector(0 downto 0)) is
   begin
      
      out_trans.sig_MISO_out := signal_value;
      
   end procedure set_MISO;
   
   procedure get_MOSI             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_MOSI_in;
   
   end procedure get_MOSI;
   
   procedure get_SCLK             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_SCLK_in;
   
   end procedure get_SCLK;
   
   procedure get_SS_n             (signal_value : out std_logic_vector(2 downto 0)) is
   begin

      signal_value := sig_SS_n_in;
   
   end procedure get_SS_n;
   
   procedure event_MOSI_change is
   begin

      wait until (sig_MOSI_in'event);

   end event_MOSI_change;
   procedure event_SCLK_change is
   begin

      wait until (sig_SCLK_in'event);

   end event_SCLK_change;
   procedure event_SS_n_change is
   begin

      wait until (sig_SS_n_in'event);

   end event_SS_n_change;

end altera_conduit_bfm_0006_vhdl_pkg;

