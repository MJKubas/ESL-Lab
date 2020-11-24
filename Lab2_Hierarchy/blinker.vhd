-- File: blinker.vhd
-- Generated by MyHDL 0.11
-- Date: Tue Nov 24 00:30:25 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_011.all;

entity blinker is
    port (
        clk_i: in std_logic;
        led_o: out std_logic
    );
end entity blinker;
-- Inputs:
--   clk_i:  This is a clock signal input.
--   length: This is the number of bits in the counter that generates the led_o output.
-- Outputs:
--   led_o:  This is an output signal that drives an LED on and off.

architecture MyHDL of blinker is



signal cnt: unsigned(21 downto 0);
signal k_next_cnt: unsigned(21 downto 0);
signal k_one: unsigned(21 downto 0);
signal k_k_k_q_o: std_logic;
signal k_k_chunk_insts_21_q_o: std_logic;
signal k_k_chunk_insts_20_q_o: std_logic;
signal k_k_chunk_insts_19_q_o: std_logic;
signal k_k_chunk_insts_18_q_o: std_logic;
signal k_k_chunk_insts_17_q_o: std_logic;
signal k_k_chunk_insts_16_q_o: std_logic;
signal k_k_chunk_insts_15_q_o: std_logic;
signal k_k_chunk_insts_14_q_o: std_logic;
signal k_k_chunk_insts_13_q_o: std_logic;
signal k_k_chunk_insts_12_q_o: std_logic;
signal k_k_chunk_insts_4_q_o: std_logic;
signal k_k_chunk_insts_11_q_o: std_logic;
signal k_k_chunk_insts_10_q_o: std_logic;
signal k_k_chunk_insts_9_q_o: std_logic;
signal k_k_chunk_insts_8_q_o: std_logic;
signal k_k_chunk_insts_7_q_o: std_logic;
signal k_k_chunk_insts_6_q_o: std_logic;
signal k_k_chunk_insts_1_q_o: std_logic;
signal k_k_chunk_insts_5_q_o: std_logic;
signal k_k_chunk_insts_0_q_o: std_logic;
signal k_k_chunk_insts_2_q_o: std_logic;
signal k_k_chunk_insts_2_chunk_insts_3_a: unsigned(21 downto 0);
signal k_chunk_insts_0_c: unsigned(22 downto 0);
signal k_chunk_insts_0_chunk_insts_19_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_19_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_1_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_1_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_3_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_3_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_22_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_22_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_5_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_5_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_6_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_6_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_0_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_0_c_o: std_logic;
signal k_chunk_insts_0_k_s_o: std_logic;
signal k_chunk_insts_0_k_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_21_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_21_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_18_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_18_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_17_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_17_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_16_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_16_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_13_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_13_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_20_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_20_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_12_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_12_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_15_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_15_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_14_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_14_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_11_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_11_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_8_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_8_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_7_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_7_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_10_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_10_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_4_s_o: std_logic;
signal k_chunk_insts_0_chunk_insts_4_c_o: std_logic;
signal k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a: unsigned(21 downto 0);
signal k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a: unsigned(22 downto 0);

begin


k_one <= to_unsigned(1, 22);

k_k_chunk_insts_2_chunk_insts_3_a(21) <= k_k_k_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(20) <= k_k_chunk_insts_21_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(19) <= k_k_chunk_insts_20_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(18) <= k_k_chunk_insts_19_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(17) <= k_k_chunk_insts_18_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(16) <= k_k_chunk_insts_17_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(15) <= k_k_chunk_insts_16_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(14) <= k_k_chunk_insts_15_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(13) <= k_k_chunk_insts_14_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(12) <= k_k_chunk_insts_13_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(11) <= k_k_chunk_insts_12_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(10) <= k_k_chunk_insts_4_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(9) <= k_k_chunk_insts_11_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(8) <= k_k_chunk_insts_10_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(7) <= k_k_chunk_insts_9_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(6) <= k_k_chunk_insts_8_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(5) <= k_k_chunk_insts_7_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(4) <= k_k_chunk_insts_6_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(3) <= k_k_chunk_insts_1_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(2) <= k_k_chunk_insts_5_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(1) <= k_k_chunk_insts_0_q_o;
k_k_chunk_insts_2_chunk_insts_3_a(0) <= k_k_chunk_insts_2_q_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(21) <= k_chunk_insts_0_chunk_insts_19_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(20) <= k_chunk_insts_0_chunk_insts_1_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(19) <= k_chunk_insts_0_chunk_insts_3_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(18) <= k_chunk_insts_0_chunk_insts_22_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(17) <= k_chunk_insts_0_chunk_insts_5_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(16) <= k_chunk_insts_0_chunk_insts_6_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(15) <= k_chunk_insts_0_chunk_insts_0_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(14) <= k_chunk_insts_0_k_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(13) <= k_chunk_insts_0_chunk_insts_21_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(12) <= k_chunk_insts_0_chunk_insts_18_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(11) <= k_chunk_insts_0_chunk_insts_17_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(10) <= k_chunk_insts_0_chunk_insts_16_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(9) <= k_chunk_insts_0_chunk_insts_13_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(8) <= k_chunk_insts_0_chunk_insts_20_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(7) <= k_chunk_insts_0_chunk_insts_12_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(6) <= k_chunk_insts_0_chunk_insts_15_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(5) <= k_chunk_insts_0_chunk_insts_14_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(4) <= k_chunk_insts_0_chunk_insts_11_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(3) <= k_chunk_insts_0_chunk_insts_8_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(2) <= k_chunk_insts_0_chunk_insts_7_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(1) <= k_chunk_insts_0_chunk_insts_10_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a(0) <= k_chunk_insts_0_chunk_insts_4_s_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(22) <= k_chunk_insts_0_chunk_insts_19_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(21) <= k_chunk_insts_0_chunk_insts_1_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(20) <= k_chunk_insts_0_chunk_insts_3_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(19) <= k_chunk_insts_0_chunk_insts_22_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(18) <= k_chunk_insts_0_chunk_insts_5_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(17) <= k_chunk_insts_0_chunk_insts_6_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(16) <= k_chunk_insts_0_chunk_insts_0_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(15) <= k_chunk_insts_0_k_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(14) <= k_chunk_insts_0_chunk_insts_21_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(13) <= k_chunk_insts_0_chunk_insts_18_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(12) <= k_chunk_insts_0_chunk_insts_17_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(11) <= k_chunk_insts_0_chunk_insts_16_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(10) <= k_chunk_insts_0_chunk_insts_13_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(9) <= k_chunk_insts_0_chunk_insts_20_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(8) <= k_chunk_insts_0_chunk_insts_12_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(7) <= k_chunk_insts_0_chunk_insts_15_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(6) <= k_chunk_insts_0_chunk_insts_14_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(5) <= k_chunk_insts_0_chunk_insts_11_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(4) <= k_chunk_insts_0_chunk_insts_8_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(3) <= k_chunk_insts_0_chunk_insts_7_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(2) <= k_chunk_insts_0_chunk_insts_10_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(1) <= k_chunk_insts_0_chunk_insts_4_c_o;
k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a(0) <= None;


led_o <= cnt((22 - 1));


k_chunk_insts_0_chunk_insts_0_s_o <= ((k_one(15) xor cnt(15)) xor k_chunk_insts_0_c(15));
k_chunk_insts_0_chunk_insts_0_c_o <= (((k_one(15) and cnt(15)) or (k_one(15) and k_chunk_insts_0_c(15))) or (cnt(15) and k_chunk_insts_0_c(15)));


k_chunk_insts_0_chunk_insts_1_s_o <= ((k_one(20) xor cnt(20)) xor k_chunk_insts_0_c(20));
k_chunk_insts_0_chunk_insts_1_c_o <= (((k_one(20) and cnt(20)) or (k_one(20) and k_chunk_insts_0_c(20))) or (cnt(20) and k_chunk_insts_0_c(20)));


k_next_cnt <= k_chunk_insts_0_chunk_insts_4_chunk_insts_2_a;


k_chunk_insts_0_chunk_insts_3_s_o <= ((k_one(19) xor cnt(19)) xor k_chunk_insts_0_c(19));
k_chunk_insts_0_chunk_insts_3_c_o <= (((k_one(19) and cnt(19)) or (k_one(19) and k_chunk_insts_0_c(19))) or (cnt(19) and k_chunk_insts_0_c(19)));


k_chunk_insts_0_chunk_insts_4_s_o <= ((k_one(0) xor cnt(0)) xor k_chunk_insts_0_c(0));
k_chunk_insts_0_chunk_insts_4_c_o <= (((k_one(0) and cnt(0)) or (k_one(0) and k_chunk_insts_0_c(0))) or (cnt(0) and k_chunk_insts_0_c(0)));


k_chunk_insts_0_chunk_insts_5_s_o <= ((k_one(17) xor cnt(17)) xor k_chunk_insts_0_c(17));
k_chunk_insts_0_chunk_insts_5_c_o <= (((k_one(17) and cnt(17)) or (k_one(17) and k_chunk_insts_0_c(17))) or (cnt(17) and k_chunk_insts_0_c(17)));


k_chunk_insts_0_chunk_insts_6_s_o <= ((k_one(16) xor cnt(16)) xor k_chunk_insts_0_c(16));
k_chunk_insts_0_chunk_insts_6_c_o <= (((k_one(16) and cnt(16)) or (k_one(16) and k_chunk_insts_0_c(16))) or (cnt(16) and k_chunk_insts_0_c(16)));


k_chunk_insts_0_chunk_insts_7_s_o <= ((k_one(2) xor cnt(2)) xor k_chunk_insts_0_c(2));
k_chunk_insts_0_chunk_insts_7_c_o <= (((k_one(2) and cnt(2)) or (k_one(2) and k_chunk_insts_0_c(2))) or (cnt(2) and k_chunk_insts_0_c(2)));


k_chunk_insts_0_chunk_insts_8_s_o <= ((k_one(3) xor cnt(3)) xor k_chunk_insts_0_c(3));
k_chunk_insts_0_chunk_insts_8_c_o <= (((k_one(3) and cnt(3)) or (k_one(3) and k_chunk_insts_0_c(3))) or (cnt(3) and k_chunk_insts_0_c(3)));


k_chunk_insts_0_c <= k_chunk_insts_0_chunk_insts_4_chunk_insts_9_a;


k_chunk_insts_0_chunk_insts_10_s_o <= ((k_one(1) xor cnt(1)) xor k_chunk_insts_0_c(1));
k_chunk_insts_0_chunk_insts_10_c_o <= (((k_one(1) and cnt(1)) or (k_one(1) and k_chunk_insts_0_c(1))) or (cnt(1) and k_chunk_insts_0_c(1)));


k_chunk_insts_0_chunk_insts_11_s_o <= ((k_one(4) xor cnt(4)) xor k_chunk_insts_0_c(4));
k_chunk_insts_0_chunk_insts_11_c_o <= (((k_one(4) and cnt(4)) or (k_one(4) and k_chunk_insts_0_c(4))) or (cnt(4) and k_chunk_insts_0_c(4)));


k_chunk_insts_0_chunk_insts_12_s_o <= ((k_one(7) xor cnt(7)) xor k_chunk_insts_0_c(7));
k_chunk_insts_0_chunk_insts_12_c_o <= (((k_one(7) and cnt(7)) or (k_one(7) and k_chunk_insts_0_c(7))) or (cnt(7) and k_chunk_insts_0_c(7)));


k_chunk_insts_0_chunk_insts_13_s_o <= ((k_one(9) xor cnt(9)) xor k_chunk_insts_0_c(9));
k_chunk_insts_0_chunk_insts_13_c_o <= (((k_one(9) and cnt(9)) or (k_one(9) and k_chunk_insts_0_c(9))) or (cnt(9) and k_chunk_insts_0_c(9)));


k_chunk_insts_0_chunk_insts_14_s_o <= ((k_one(5) xor cnt(5)) xor k_chunk_insts_0_c(5));
k_chunk_insts_0_chunk_insts_14_c_o <= (((k_one(5) and cnt(5)) or (k_one(5) and k_chunk_insts_0_c(5))) or (cnt(5) and k_chunk_insts_0_c(5)));


k_chunk_insts_0_chunk_insts_15_s_o <= ((k_one(6) xor cnt(6)) xor k_chunk_insts_0_c(6));
k_chunk_insts_0_chunk_insts_15_c_o <= (((k_one(6) and cnt(6)) or (k_one(6) and k_chunk_insts_0_c(6))) or (cnt(6) and k_chunk_insts_0_c(6)));


k_chunk_insts_0_chunk_insts_16_s_o <= ((k_one(10) xor cnt(10)) xor k_chunk_insts_0_c(10));
k_chunk_insts_0_chunk_insts_16_c_o <= (((k_one(10) and cnt(10)) or (k_one(10) and k_chunk_insts_0_c(10))) or (cnt(10) and k_chunk_insts_0_c(10)));


k_chunk_insts_0_chunk_insts_17_s_o <= ((k_one(11) xor cnt(11)) xor k_chunk_insts_0_c(11));
k_chunk_insts_0_chunk_insts_17_c_o <= (((k_one(11) and cnt(11)) or (k_one(11) and k_chunk_insts_0_c(11))) or (cnt(11) and k_chunk_insts_0_c(11)));


k_chunk_insts_0_chunk_insts_18_s_o <= ((k_one(12) xor cnt(12)) xor k_chunk_insts_0_c(12));
k_chunk_insts_0_chunk_insts_18_c_o <= (((k_one(12) and cnt(12)) or (k_one(12) and k_chunk_insts_0_c(12))) or (cnt(12) and k_chunk_insts_0_c(12)));


k_chunk_insts_0_chunk_insts_19_s_o <= ((k_one(21) xor cnt(21)) xor k_chunk_insts_0_c(21));
k_chunk_insts_0_chunk_insts_19_c_o <= (((k_one(21) and cnt(21)) or (k_one(21) and k_chunk_insts_0_c(21))) or (cnt(21) and k_chunk_insts_0_c(21)));


k_chunk_insts_0_chunk_insts_20_s_o <= ((k_one(8) xor cnt(8)) xor k_chunk_insts_0_c(8));
k_chunk_insts_0_chunk_insts_20_c_o <= (((k_one(8) and cnt(8)) or (k_one(8) and k_chunk_insts_0_c(8))) or (cnt(8) and k_chunk_insts_0_c(8)));


k_chunk_insts_0_chunk_insts_21_s_o <= ((k_one(13) xor cnt(13)) xor k_chunk_insts_0_c(13));
k_chunk_insts_0_chunk_insts_21_c_o <= (((k_one(13) and cnt(13)) or (k_one(13) and k_chunk_insts_0_c(13))) or (cnt(13) and k_chunk_insts_0_c(13)));


k_chunk_insts_0_chunk_insts_22_s_o <= ((k_one(18) xor cnt(18)) xor k_chunk_insts_0_c(18));
k_chunk_insts_0_chunk_insts_22_c_o <= (((k_one(18) and cnt(18)) or (k_one(18) and k_chunk_insts_0_c(18))) or (cnt(18) and k_chunk_insts_0_c(18)));


k_chunk_insts_0_k_s_o <= ((k_one(14) xor cnt(14)) xor k_chunk_insts_0_c(14));
k_chunk_insts_0_k_c_o <= (((k_one(14) and cnt(14)) or (k_one(14) and k_chunk_insts_0_c(14))) or (cnt(14) and k_chunk_insts_0_c(14)));

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_0_q_o <= k_next_cnt(1);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_1_q_o <= k_next_cnt(3);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_2_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_2_q_o <= k_next_cnt(0);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_2_LOC_INSTS_CHUNK_INSTS_K;


cnt <= k_k_chunk_insts_2_chunk_insts_3_a;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_4_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_4_q_o <= k_next_cnt(10);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_4_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_5_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_5_q_o <= k_next_cnt(2);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_5_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_6_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_6_q_o <= k_next_cnt(4);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_6_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_7_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_7_q_o <= k_next_cnt(5);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_7_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_8_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_8_q_o <= k_next_cnt(6);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_8_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_9_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_9_q_o <= k_next_cnt(7);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_9_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_10_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_10_q_o <= k_next_cnt(8);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_10_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_11_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_11_q_o <= k_next_cnt(9);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_11_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_12_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_12_q_o <= k_next_cnt(11);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_12_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_13_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_13_q_o <= k_next_cnt(12);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_13_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_14_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_14_q_o <= k_next_cnt(13);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_14_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_15_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_15_q_o <= k_next_cnt(14);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_15_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_16_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_16_q_o <= k_next_cnt(15);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_16_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_17_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_17_q_o <= k_next_cnt(16);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_17_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_18_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_18_q_o <= k_next_cnt(17);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_18_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_19_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_19_q_o <= k_next_cnt(18);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_19_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_20_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_20_q_o <= k_next_cnt(19);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_20_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_21_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_chunk_insts_21_q_o <= k_next_cnt(20);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_21_LOC_INSTS_CHUNK_INSTS_K;

BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        k_k_k_q_o <= k_next_cnt(21);
    end if;
end process BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K;

end architecture MyHDL;
