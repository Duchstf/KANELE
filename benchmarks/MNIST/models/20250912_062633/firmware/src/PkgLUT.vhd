library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package PkgLUT is
-- Layer 0

subtype  lut_output_t_0 is signed(5 downto 0);

subtype  act_0_0_t is signed(7 downto 0);

constant B_0_0 : signed(7 downto 0) := to_signed(-24, 8);
constant C_0_245_0 : signed(7 downto 0) := to_signed(20, 8);
constant C_0_272_0 : signed(7 downto 0) := to_signed(14, 8);
constant C_0_327_0 : signed(7 downto 0) := to_signed(16, 8);
constant C_0_355_0 : signed(7 downto 0) := to_signed(10, 8);

subtype  act_0_1_t is signed(9 downto 0);

constant B_0_1 : signed(9 downto 0) := to_signed(-25, 10);
constant C_0_183_1 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_205_1 : signed(9 downto 0) := to_signed(14, 10);
constant C_0_261_1 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_276_1 : signed(9 downto 0) := to_signed(21, 10);
constant C_0_314_1 : signed(9 downto 0) := to_signed(14, 10);
constant C_0_322_1 : signed(9 downto 0) := to_signed(8, 10);
constant C_0_330_1 : signed(9 downto 0) := to_signed(20, 10);
constant C_0_331_1 : signed(9 downto 0) := to_signed(20, 10);
constant C_0_359_1 : signed(9 downto 0) := to_signed(20, 10);
constant C_0_370_1 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_521_1 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_549_1 : signed(9 downto 0) := to_signed(-25, 10);

subtype  act_0_2_t is signed(5 downto 0);

constant B_0_2 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_3_t is signed(8 downto 0);

constant B_0_3 : signed(8 downto 0) := to_signed(59, 9);
constant C_0_180_3 : signed(8 downto 0) := to_signed(15, 9);
constant C_0_266_3 : signed(8 downto 0) := to_signed(-27, 9);
constant C_0_293_3 : signed(8 downto 0) := to_signed(-22, 9);
constant C_0_320_3 : signed(8 downto 0) := to_signed(-18, 9);
constant C_0_348_3 : signed(8 downto 0) := to_signed(-14, 9);
constant C_0_442_3 : signed(8 downto 0) := to_signed(-21, 9);
constant C_0_469_3 : signed(8 downto 0) := to_signed(-18, 9);
constant C_0_703_3 : signed(8 downto 0) := to_signed(4, 9);

subtype  act_0_4_t is signed(5 downto 0);

constant B_0_4 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_5_t is signed(5 downto 0);

constant B_0_5 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_6_t is signed(9 downto 0);

constant B_0_6 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_204_6 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_322_6 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_323_6 : signed(9 downto 0) := to_signed(21, 10);
constant C_0_325_6 : signed(9 downto 0) := to_signed(18, 10);
constant C_0_354_6 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_408_6 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_432_6 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_458_6 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_464_6 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_635_6 : signed(9 downto 0) := to_signed(-12, 10);

subtype  act_0_7_t is signed(10 downto 0);

constant B_0_7 : signed(10 downto 0) := to_signed(-34, 11);
constant C_0_158_7 : signed(10 downto 0) := to_signed(-18, 11);
constant C_0_159_7 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_219_7 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_245_7 : signed(10 downto 0) := to_signed(22, 11);
constant C_0_247_7 : signed(10 downto 0) := to_signed(15, 11);
constant C_0_271_7 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_272_7 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_276_7 : signed(10 downto 0) := to_signed(21, 11);
constant C_0_291_7 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_342_7 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_356_7 : signed(10 downto 0) := to_signed(-19, 11);
constant C_0_357_7 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_358_7 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_385_7 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_412_7 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_442_7 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_553_7 : signed(10 downto 0) := to_signed(-14, 11);

subtype  act_0_8_t is signed(9 downto 0);

constant B_0_8 : signed(9 downto 0) := to_signed(19, 10);
constant C_0_349_8 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_375_8 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_403_8 : signed(9 downto 0) := to_signed(-7, 10);
constant C_0_430_8 : signed(9 downto 0) := to_signed(-15, 10);
constant C_0_456_8 : signed(9 downto 0) := to_signed(-13, 10);
constant C_0_457_8 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_482_8 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_483_8 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_488_8 : signed(9 downto 0) := to_signed(9, 10);
constant C_0_510_8 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_537_8 : signed(9 downto 0) := to_signed(-31, 10);

subtype  act_0_9_t is signed(10 downto 0);

constant B_0_9 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_149_9 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_150_9 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_151_9 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_176_9 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_205_9 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_206_9 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_232_9 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_259_9 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_261_9 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_262_9 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_290_9 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_298_9 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_302_9 : signed(10 downto 0) := to_signed(-6, 11);
constant C_0_303_9 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_328_9 : signed(10 downto 0) := to_signed(-17, 11);
constant C_0_330_9 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_331_9 : signed(10 downto 0) := to_signed(-21, 11);
constant C_0_427_9 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_430_9 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_462_9 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_497_9 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_624_9 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_628_9 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_686_9 : signed(10 downto 0) := to_signed(-6, 11);

subtype  act_0_10_t is signed(9 downto 0);

constant B_0_10 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_155_10 : signed(9 downto 0) := to_signed(-27, 10);
constant C_0_176_10 : signed(9 downto 0) := to_signed(14, 10);
constant C_0_183_10 : signed(9 downto 0) := to_signed(-35, 10);
constant C_0_207_10 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_210_10 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_211_10 : signed(9 downto 0) := to_signed(-25, 10);
constant C_0_238_10 : signed(9 downto 0) := to_signed(-30, 10);
constant C_0_239_10 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_266_10 : signed(9 downto 0) := to_signed(-30, 10);
constant C_0_286_10 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_294_10 : signed(9 downto 0) := to_signed(-23, 10);
constant C_0_314_10 : signed(9 downto 0) := to_signed(-8, 10);
constant C_0_322_10 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_635_10 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_685_10 : signed(9 downto 0) := to_signed(11, 10);

subtype  act_0_11_t is signed(5 downto 0);

constant B_0_11 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_12_t is signed(10 downto 0);

constant B_0_12 : signed(10 downto 0) := to_signed(-1, 11);
constant C_0_151_12 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_152_12 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_235_12 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_269_12 : signed(10 downto 0) := to_signed(-21, 11);
constant C_0_381_12 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_408_12 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_410_12 : signed(10 downto 0) := to_signed(9, 11);
constant C_0_436_12 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_438_12 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_464_12 : signed(10 downto 0) := to_signed(9, 11);
constant C_0_537_12 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_542_12 : signed(10 downto 0) := to_signed(-21, 11);
constant C_0_543_12 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_566_12 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_567_12 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_568_12 : signed(10 downto 0) := to_signed(-19, 11);
constant C_0_574_12 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_580_12 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_594_12 : signed(10 downto 0) := to_signed(-24, 11);
constant C_0_601_12 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_603_12 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_608_12 : signed(10 downto 0) := to_signed(-9, 11);

subtype  act_0_13_t is signed(10 downto 0);

constant B_0_13 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_184_13 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_292_13 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_319_13 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_320_13 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_327_13 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_383_13 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_410_13 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_411_13 : signed(10 downto 0) := to_signed(-18, 11);
constant C_0_438_13 : signed(10 downto 0) := to_signed(-33, 11);
constant C_0_439_13 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_465_13 : signed(10 downto 0) := to_signed(-29, 11);
constant C_0_466_13 : signed(10 downto 0) := to_signed(-38, 11);
constant C_0_492_13 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_493_13 : signed(10 downto 0) := to_signed(-32, 11);
constant C_0_519_13 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_520_13 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_521_13 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_541_13 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_571_13 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_572_13 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_634_13 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_635_13 : signed(10 downto 0) := to_signed(11, 11);

subtype  act_0_14_t is signed(9 downto 0);

constant B_0_14 : signed(9 downto 0) := to_signed(28, 10);
constant C_0_149_14 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_150_14 : signed(9 downto 0) := to_signed(-19, 10);
constant C_0_276_14 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_382_14 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_411_14 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_439_14 : signed(9 downto 0) := to_signed(-21, 10);
constant C_0_467_14 : signed(9 downto 0) := to_signed(-24, 10);
constant C_0_468_14 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_496_14 : signed(9 downto 0) := to_signed(-26, 10);
constant C_0_525_14 : signed(9 downto 0) := to_signed(-25, 10);
constant C_0_552_14 : signed(9 downto 0) := to_signed(-22, 10);
constant C_0_553_14 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_606_14 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_608_14 : signed(9 downto 0) := to_signed(-16, 10);

subtype  act_0_15_t is signed(10 downto 0);

constant B_0_15 : signed(10 downto 0) := to_signed(6, 11);
constant C_0_129_15 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_158_15 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_183_15 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_185_15 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_189_15 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_247_15 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_266_15 : signed(10 downto 0) := to_signed(-22, 11);
constant C_0_267_15 : signed(10 downto 0) := to_signed(-19, 11);
constant C_0_268_15 : signed(10 downto 0) := to_signed(-30, 11);
constant C_0_269_15 : signed(10 downto 0) := to_signed(-42, 11);
constant C_0_270_15 : signed(10 downto 0) := to_signed(-38, 11);
constant C_0_271_15 : signed(10 downto 0) := to_signed(-35, 11);
constant C_0_272_15 : signed(10 downto 0) := to_signed(-20, 11);
constant C_0_274_15 : signed(10 downto 0) := to_signed(-28, 11);
constant C_0_299_15 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_300_15 : signed(10 downto 0) := to_signed(-20, 11);
constant C_0_301_15 : signed(10 downto 0) := to_signed(-25, 11);
constant C_0_302_15 : signed(10 downto 0) := to_signed(-32, 11);
constant C_0_303_15 : signed(10 downto 0) := to_signed(-30, 11);
constant C_0_330_15 : signed(10 downto 0) := to_signed(-6, 11);

subtype  act_0_16_t is signed(9 downto 0);

constant B_0_16 : signed(9 downto 0) := to_signed(-62, 10);
constant C_0_161_16 : signed(9 downto 0) := to_signed(14, 10);
constant C_0_208_16 : signed(9 downto 0) := to_signed(16, 10);
constant C_0_264_16 : signed(9 downto 0) := to_signed(32, 10);
constant C_0_292_16 : signed(9 downto 0) := to_signed(14, 10);
constant C_0_293_16 : signed(9 downto 0) := to_signed(32, 10);
constant C_0_294_16 : signed(9 downto 0) := to_signed(10, 10);
constant C_0_298_16 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_350_16 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_399_16 : signed(9 downto 0) := to_signed(-27, 10);
constant C_0_400_16 : signed(9 downto 0) := to_signed(-25, 10);
constant C_0_402_16 : signed(9 downto 0) := to_signed(-23, 10);
constant C_0_429_16 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_519_16 : signed(9 downto 0) := to_signed(10, 10);
constant C_0_566_16 : signed(9 downto 0) := to_signed(10, 10);
constant C_0_629_16 : signed(9 downto 0) := to_signed(-13, 10);

subtype  act_0_17_t is signed(11 downto 0);

constant B_0_17 : signed(11 downto 0) := to_signed(6, 12);
constant C_0_150_17 : signed(11 downto 0) := to_signed(-32, 12);
constant C_0_151_17 : signed(11 downto 0) := to_signed(-22, 12);
constant C_0_153_17 : signed(11 downto 0) := to_signed(-29, 12);
constant C_0_157_17 : signed(11 downto 0) := to_signed(-26, 12);
constant C_0_159_17 : signed(11 downto 0) := to_signed(-20, 12);
constant C_0_160_17 : signed(11 downto 0) := to_signed(-23, 12);
constant C_0_176_17 : signed(11 downto 0) := to_signed(-12, 12);
constant C_0_178_17 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_179_17 : signed(11 downto 0) := to_signed(-10, 12);
constant C_0_182_17 : signed(11 downto 0) := to_signed(-13, 12);
constant C_0_183_17 : signed(11 downto 0) := to_signed(-13, 12);
constant C_0_184_17 : signed(11 downto 0) := to_signed(-16, 12);
constant C_0_238_17 : signed(11 downto 0) := to_signed(-13, 12);
constant C_0_318_17 : signed(11 downto 0) := to_signed(13, 12);
constant C_0_319_17 : signed(11 downto 0) := to_signed(12, 12);
constant C_0_353_17 : signed(11 downto 0) := to_signed(10, 12);
constant C_0_377_17 : signed(11 downto 0) := to_signed(-19, 12);
constant C_0_404_17 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_405_17 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_406_17 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_432_17 : signed(11 downto 0) := to_signed(-8, 12);
constant C_0_433_17 : signed(11 downto 0) := to_signed(-21, 12);
constant C_0_459_17 : signed(11 downto 0) := to_signed(-12, 12);
constant C_0_460_17 : signed(11 downto 0) := to_signed(-16, 12);
constant C_0_485_17 : signed(11 downto 0) := to_signed(-10, 12);
constant C_0_486_17 : signed(11 downto 0) := to_signed(-19, 12);
constant C_0_494_17 : signed(11 downto 0) := to_signed(15, 12);
constant C_0_515_17 : signed(11 downto 0) := to_signed(-13, 12);
constant C_0_538_17 : signed(11 downto 0) := to_signed(-15, 12);
constant C_0_542_17 : signed(11 downto 0) := to_signed(-16, 12);
constant C_0_566_17 : signed(11 downto 0) := to_signed(-18, 12);
constant C_0_567_17 : signed(11 downto 0) := to_signed(-33, 12);
constant C_0_580_17 : signed(11 downto 0) := to_signed(-10, 12);
constant C_0_594_17 : signed(11 downto 0) := to_signed(-24, 12);
constant C_0_688_17 : signed(11 downto 0) := to_signed(11, 12);

subtype  act_0_18_t is signed(10 downto 0);

constant B_0_18 : signed(10 downto 0) := to_signed(30, 11);
constant C_0_151_18 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_154_18 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_155_18 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_156_18 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_157_18 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_158_18 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_159_18 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_183_18 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_209_18 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_241_18 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_327_18 : signed(10 downto 0) := to_signed(8, 11);
constant C_0_345_18 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_351_18 : signed(10 downto 0) := to_signed(21, 11);
constant C_0_375_18 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_403_18 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_566_18 : signed(10 downto 0) := to_signed(-36, 11);
constant C_0_567_18 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_568_18 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_604_18 : signed(10 downto 0) := to_signed(-27, 11);
constant C_0_629_18 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_630_18 : signed(10 downto 0) := to_signed(-17, 11);
constant C_0_659_18 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_685_18 : signed(10 downto 0) := to_signed(-15, 11);

subtype  act_0_19_t is signed(5 downto 0);

constant B_0_19 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_20_t is signed(9 downto 0);

constant B_0_20 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_265_20 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_271_20 : signed(9 downto 0) := to_signed(-15, 10);
constant C_0_293_20 : signed(9 downto 0) := to_signed(-26, 10);
constant C_0_294_20 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_299_20 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_321_20 : signed(9 downto 0) := to_signed(-19, 10);
constant C_0_322_20 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_344_20 : signed(9 downto 0) := to_signed(10, 10);
constant C_0_349_20 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_357_20 : signed(9 downto 0) := to_signed(20, 10);
constant C_0_377_20 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_454_20 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_463_20 : signed(9 downto 0) := to_signed(9, 10);
constant C_0_492_20 : signed(9 downto 0) := to_signed(20, 10);
constant C_0_572_20 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_681_20 : signed(9 downto 0) := to_signed(-10, 10);

subtype  act_0_21_t is signed(5 downto 0);

constant B_0_21 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_22_t is signed(5 downto 0);

constant B_0_22 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_23_t is signed(8 downto 0);

constant B_0_23 : signed(8 downto 0) := to_signed(10, 9);
constant C_0_258_23 : signed(8 downto 0) := to_signed(13, 9);
constant C_0_373_23 : signed(8 downto 0) := to_signed(-9, 9);
constant C_0_399_23 : signed(8 downto 0) := to_signed(-9, 9);
constant C_0_400_23 : signed(8 downto 0) := to_signed(-10, 9);
constant C_0_425_23 : signed(8 downto 0) := to_signed(-20, 9);
constant C_0_426_23 : signed(8 downto 0) := to_signed(-12, 9);

subtype  act_0_24_t is signed(10 downto 0);

constant B_0_24 : signed(10 downto 0) := to_signed(57, 11);
constant C_0_29_24 : signed(10 downto 0) := to_signed(1, 11);
constant C_0_147_24 : signed(10 downto 0) := to_signed(3, 11);
constant C_0_365_24 : signed(10 downto 0) := to_signed(0, 11);
constant C_0_403_24 : signed(10 downto 0) := to_signed(7, 11);
constant C_0_431_24 : signed(10 downto 0) := to_signed(8, 11);
constant C_0_450_24 : signed(10 downto 0) := to_signed(4, 11);
constant C_0_485_24 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_509_24 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_510_24 : signed(10 downto 0) := to_signed(7, 11);
constant C_0_515_24 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_527_24 : signed(10 downto 0) := to_signed(-1, 11);
constant C_0_550_24 : signed(10 downto 0) := to_signed(-3, 11);
constant C_0_555_24 : signed(10 downto 0) := to_signed(5, 11);
constant C_0_560_24 : signed(10 downto 0) := to_signed(2, 11);
constant C_0_588_24 : signed(10 downto 0) := to_signed(3, 11);
constant C_0_604_24 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_709_24 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_747_24 : signed(10 downto 0) := to_signed(4, 11);
constant C_0_774_24 : signed(10 downto 0) := to_signed(4, 11);

subtype  act_0_25_t is signed(10 downto 0);

constant B_0_25 : signed(10 downto 0) := to_signed(-53, 11);
constant C_0_149_25 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_270_25 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_298_25 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_313_25 : signed(10 downto 0) := to_signed(15, 11);
constant C_0_321_25 : signed(10 downto 0) := to_signed(-19, 11);
constant C_0_326_25 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_354_25 : signed(10 downto 0) := to_signed(30, 11);
constant C_0_409_25 : signed(10 downto 0) := to_signed(17, 11);
constant C_0_410_25 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_415_25 : signed(10 downto 0) := to_signed(-29, 11);
constant C_0_440_25 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_442_25 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_467_25 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_468_25 : signed(10 downto 0) := to_signed(-6, 11);
constant C_0_494_25 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_495_25 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_686_25 : signed(10 downto 0) := to_signed(-13, 11);

subtype  act_0_26_t is signed(9 downto 0);

constant B_0_26 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_124_26 : signed(9 downto 0) := to_signed(19, 10);
constant C_0_125_26 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_489_26 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_569_26 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_571_26 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_572_26 : signed(9 downto 0) := to_signed(16, 10);
constant C_0_573_26 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_598_26 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_602_26 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_603_26 : signed(9 downto 0) := to_signed(9, 10);
constant C_0_681_26 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_682_26 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_683_26 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_685_26 : signed(9 downto 0) := to_signed(-13, 10);

subtype  act_0_27_t is signed(5 downto 0);

constant B_0_27 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_28_t is signed(8 downto 0);

constant B_0_28 : signed(8 downto 0) := to_signed(0, 9);
constant C_0_190_28 : signed(8 downto 0) := to_signed(11, 9);
constant C_0_214_28 : signed(8 downto 0) := to_signed(14, 9);
constant C_0_297_28 : signed(8 downto 0) := to_signed(-10, 9);
constant C_0_298_28 : signed(8 downto 0) := to_signed(-12, 9);
constant C_0_299_28 : signed(8 downto 0) := to_signed(-8, 9);
constant C_0_303_28 : signed(8 downto 0) := to_signed(-20, 9);

subtype  act_0_29_t is signed(10 downto 0);

constant B_0_29 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_183_29 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_189_29 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_190_29 : signed(10 downto 0) := to_signed(-33, 11);
constant C_0_214_29 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_216_29 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_217_29 : signed(10 downto 0) := to_signed(-6, 11);
constant C_0_218_29 : signed(10 downto 0) := to_signed(-6, 11);
constant C_0_219_29 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_239_29 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_242_29 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_243_29 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_247_29 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_519_29 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_631_29 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_634_29 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_635_29 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_654_29 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_656_29 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_657_29 : signed(10 downto 0) := to_signed(-24, 11);
constant C_0_658_29 : signed(10 downto 0) := to_signed(-24, 11);
constant C_0_659_29 : signed(10 downto 0) := to_signed(-29, 11);
constant C_0_660_29 : signed(10 downto 0) := to_signed(-34, 11);
constant C_0_661_29 : signed(10 downto 0) := to_signed(-35, 11);

subtype  act_0_30_t is signed(5 downto 0);

constant B_0_30 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_31_t is signed(5 downto 0);

constant B_0_31 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_32_t is signed(5 downto 0);

constant B_0_32 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_33_t is signed(9 downto 0);

constant B_0_33 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_426_33 : signed(9 downto 0) := to_signed(-23, 10);
constant C_0_427_33 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_455_33 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_456_33 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_457_33 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_485_33 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_486_33 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_487_33 : signed(9 downto 0) := to_signed(-23, 10);
constant C_0_488_33 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_489_33 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_490_33 : signed(9 downto 0) := to_signed(-8, 10);
constant C_0_516_33 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_569_33 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_571_33 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_594_33 : signed(9 downto 0) := to_signed(12, 10);

subtype  act_0_34_t is signed(10 downto 0);

constant B_0_34 : signed(10 downto 0) := to_signed(-65, 11);
constant C_0_150_34 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_238_34 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_266_34 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_267_34 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_294_34 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_295_34 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_300_34 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_317_34 : signed(10 downto 0) := to_signed(-18, 11);
constant C_0_322_34 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_345_34 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_490_34 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_546_34 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_553_34 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_554_34 : signed(10 downto 0) := to_signed(-25, 11);
constant C_0_567_34 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_569_34 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_580_34 : signed(10 downto 0) := to_signed(-20, 11);
constant C_0_595_34 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_598_34 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_608_34 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_681_34 : signed(10 downto 0) := to_signed(-12, 11);

subtype  act_0_35_t is signed(9 downto 0);

constant B_0_35 : signed(9 downto 0) := to_signed(-26, 10);
constant C_0_325_35 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_330_35 : signed(9 downto 0) := to_signed(18, 10);
constant C_0_358_35 : signed(9 downto 0) := to_signed(8, 10);
constant C_0_359_35 : signed(9 downto 0) := to_signed(20, 10);
constant C_0_380_35 : signed(9 downto 0) := to_signed(-15, 10);
constant C_0_414_35 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_415_35 : signed(9 downto 0) := to_signed(17, 10);
constant C_0_442_35 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_568_35 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_661_35 : signed(9 downto 0) := to_signed(-19, 10);

subtype  act_0_36_t is signed(8 downto 0);

constant B_0_36 : signed(8 downto 0) := to_signed(21, 9);
constant C_0_482_36 : signed(8 downto 0) := to_signed(-8, 9);
constant C_0_509_36 : signed(8 downto 0) := to_signed(-8, 9);
constant C_0_512_36 : signed(8 downto 0) := to_signed(-16, 9);
constant C_0_513_36 : signed(8 downto 0) := to_signed(-10, 9);
constant C_0_514_36 : signed(8 downto 0) := to_signed(-12, 9);
constant C_0_515_36 : signed(8 downto 0) := to_signed(-9, 9);
constant C_0_544_36 : signed(8 downto 0) := to_signed(-11, 9);

subtype  act_0_37_t is signed(9 downto 0);

constant B_0_37 : signed(9 downto 0) := to_signed(37, 10);
constant C_0_302_37 : signed(9 downto 0) := to_signed(-4, 10);
constant C_0_323_37 : signed(9 downto 0) := to_signed(-32, 10);
constant C_0_324_37 : signed(9 downto 0) := to_signed(-18, 10);
constant C_0_325_37 : signed(9 downto 0) := to_signed(-29, 10);
constant C_0_353_37 : signed(9 downto 0) := to_signed(-14, 10);
constant C_0_355_37 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_356_37 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_357_37 : signed(9 downto 0) := to_signed(-15, 10);
constant C_0_358_37 : signed(9 downto 0) := to_signed(-8, 10);
constant C_0_408_37 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_463_37 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_493_37 : signed(9 downto 0) := to_signed(-7, 10);
constant C_0_515_37 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_516_37 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_518_37 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_598_37 : signed(9 downto 0) := to_signed(12, 10);

subtype  act_0_38_t is signed(9 downto 0);

constant B_0_38 : signed(9 downto 0) := to_signed(19, 10);
constant C_0_126_38 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_150_38 : signed(9 downto 0) := to_signed(9, 10);
constant C_0_153_38 : signed(9 downto 0) := to_signed(-24, 10);
constant C_0_181_38 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_182_38 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_205_38 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_209_38 : signed(9 downto 0) := to_signed(-21, 10);
constant C_0_213_38 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_237_38 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_265_38 : signed(9 downto 0) := to_signed(-18, 10);
constant C_0_320_38 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_329_38 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_442_38 : signed(9 downto 0) := to_signed(9, 10);
constant C_0_537_38 : signed(9 downto 0) := to_signed(-8, 10);

subtype  act_0_39_t is signed(7 downto 0);

constant B_0_39 : signed(7 downto 0) := to_signed(-43, 8);
constant C_0_379_39 : signed(7 downto 0) := to_signed(15, 8);
constant C_0_546_39 : signed(7 downto 0) := to_signed(8, 8);
constant C_0_679_39 : signed(7 downto 0) := to_signed(8, 8);
constant C_0_681_39 : signed(7 downto 0) := to_signed(11, 8);

subtype  act_0_40_t is signed(5 downto 0);

constant B_0_40 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_41_t is signed(10 downto 0);

constant B_0_41 : signed(10 downto 0) := to_signed(7, 11);
constant C_0_99_41 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_123_41 : signed(10 downto 0) := to_signed(9, 11);
constant C_0_124_41 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_176_41 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_177_41 : signed(10 downto 0) := to_signed(15, 11);
constant C_0_287_41 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_289_41 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_290_41 : signed(10 downto 0) := to_signed(-23, 11);
constant C_0_291_41 : signed(10 downto 0) := to_signed(-17, 11);
constant C_0_292_41 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_293_41 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_314_41 : signed(10 downto 0) := to_signed(-39, 11);
constant C_0_315_41 : signed(10 downto 0) := to_signed(-39, 11);
constant C_0_316_41 : signed(10 downto 0) := to_signed(-38, 11);
constant C_0_317_41 : signed(10 downto 0) := to_signed(-27, 11);
constant C_0_342_41 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_371_41 : signed(10 downto 0) := to_signed(9, 11);
constant C_0_372_41 : signed(10 downto 0) := to_signed(14, 11);

subtype  act_0_42_t is signed(9 downto 0);

constant B_0_42 : signed(9 downto 0) := to_signed(-31, 10);
constant C_0_202_42 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_247_42 : signed(9 downto 0) := to_signed(18, 10);
constant C_0_272_42 : signed(9 downto 0) := to_signed(19, 10);
constant C_0_285_42 : signed(9 downto 0) := to_signed(-2, 10);
constant C_0_356_42 : signed(9 downto 0) := to_signed(26, 10);
constant C_0_516_42 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_517_42 : signed(9 downto 0) := to_signed(-17, 10);
constant C_0_654_42 : signed(9 downto 0) := to_signed(22, 10);
constant C_0_713_42 : signed(9 downto 0) := to_signed(-15, 10);

subtype  act_0_43_t is signed(9 downto 0);

constant B_0_43 : signed(9 downto 0) := to_signed(7, 10);
constant C_0_129_43 : signed(9 downto 0) := to_signed(-4, 10);
constant C_0_209_43 : signed(9 downto 0) := to_signed(8, 10);
constant C_0_219_43 : signed(9 downto 0) := to_signed(-7, 10);
constant C_0_538_43 : signed(9 downto 0) := to_signed(-21, 10);
constant C_0_545_43 : signed(9 downto 0) := to_signed(-15, 10);
constant C_0_567_43 : signed(9 downto 0) := to_signed(-7, 10);
constant C_0_568_43 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_570_43 : signed(9 downto 0) := to_signed(-19, 10);
constant C_0_571_43 : signed(9 downto 0) := to_signed(-12, 10);

subtype  act_0_44_t is signed(10 downto 0);

constant B_0_44 : signed(10 downto 0) := to_signed(-3, 11);
constant C_0_124_44 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_270_44 : signed(10 downto 0) := to_signed(-9, 11);
constant C_0_397_44 : signed(10 downto 0) := to_signed(-26, 11);
constant C_0_409_44 : signed(10 downto 0) := to_signed(-16, 11);
constant C_0_413_44 : signed(10 downto 0) := to_signed(-37, 11);
constant C_0_414_44 : signed(10 downto 0) := to_signed(-41, 11);
constant C_0_430_44 : signed(10 downto 0) := to_signed(9, 11);
constant C_0_438_44 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_439_44 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_440_44 : signed(10 downto 0) := to_signed(-21, 11);
constant C_0_441_44 : signed(10 downto 0) := to_signed(-31, 11);
constant C_0_463_44 : signed(10 downto 0) := to_signed(15, 11);
constant C_0_467_44 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_550_44 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_554_44 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_580_44 : signed(10 downto 0) := to_signed(19, 11);
constant C_0_581_44 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_609_44 : signed(10 downto 0) := to_signed(20, 11);
constant C_0_657_44 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_658_44 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_683_44 : signed(10 downto 0) := to_signed(-19, 11);
constant C_0_684_44 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_685_44 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_686_44 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_687_44 : signed(10 downto 0) := to_signed(-20, 11);

subtype  act_0_45_t is signed(9 downto 0);

constant B_0_45 : signed(9 downto 0) := to_signed(24, 10);
constant C_0_294_45 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_320_45 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_321_45 : signed(9 downto 0) := to_signed(-23, 10);
constant C_0_342_45 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_344_45 : signed(9 downto 0) := to_signed(-5, 10);
constant C_0_345_45 : signed(9 downto 0) := to_signed(-27, 10);
constant C_0_346_45 : signed(9 downto 0) := to_signed(-34, 10);
constant C_0_347_45 : signed(9 downto 0) := to_signed(-24, 10);
constant C_0_348_45 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_370_45 : signed(9 downto 0) := to_signed(-19, 10);
constant C_0_371_45 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_372_45 : signed(9 downto 0) := to_signed(-12, 10);

subtype  act_0_46_t is signed(5 downto 0);

constant B_0_46 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_47_t is signed(7 downto 0);

constant B_0_47 : signed(7 downto 0) := to_signed(-21, 8);
constant C_0_351_47 : signed(7 downto 0) := to_signed(13, 8);
constant C_0_406_47 : signed(7 downto 0) := to_signed(12, 8);
constant C_0_434_47 : signed(7 downto 0) := to_signed(12, 8);

subtype  act_0_48_t is signed(9 downto 0);

constant B_0_48 : signed(9 downto 0) := to_signed(28, 10);
constant C_0_322_48 : signed(9 downto 0) := to_signed(-19, 10);
constant C_0_350_48 : signed(9 downto 0) := to_signed(-23, 10);
constant C_0_377_48 : signed(9 downto 0) := to_signed(-33, 10);
constant C_0_378_48 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_405_48 : signed(9 downto 0) := to_signed(-40, 10);
constant C_0_432_48 : signed(9 downto 0) := to_signed(-26, 10);
constant C_0_459_48 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_460_48 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_487_48 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_516_48 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_544_48 : signed(9 downto 0) := to_signed(-9, 10);
constant C_0_626_48 : signed(9 downto 0) := to_signed(14, 10);

subtype  act_0_49_t is signed(7 downto 0);

constant B_0_49 : signed(7 downto 0) := to_signed(-13, 8);
constant C_0_66_49 : signed(7 downto 0) := to_signed(-1, 8);
constant C_0_199_49 : signed(7 downto 0) := to_signed(-3, 8);
constant C_0_537_49 : signed(7 downto 0) := to_signed(9, 8);
constant C_0_740_49 : signed(7 downto 0) := to_signed(-4, 8);

subtype  act_0_50_t is signed(5 downto 0);

constant B_0_50 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_51_t is signed(10 downto 0);

constant B_0_51 : signed(10 downto 0) := to_signed(-44, 11);
constant C_0_158_51 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_398_51 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_412_51 : signed(10 downto 0) := to_signed(-11, 11);
constant C_0_440_51 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_491_51 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_548_51 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_627_51 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_629_51 : signed(10 downto 0) := to_signed(13, 11);
constant C_0_634_51 : signed(10 downto 0) := to_signed(18, 11);
constant C_0_652_51 : signed(10 downto 0) := to_signed(17, 11);
constant C_0_657_51 : signed(10 downto 0) := to_signed(8, 11);
constant C_0_658_51 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_659_51 : signed(10 downto 0) := to_signed(14, 11);
constant C_0_660_51 : signed(10 downto 0) := to_signed(12, 11);
constant C_0_662_51 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_682_51 : signed(10 downto 0) := to_signed(9, 11);
constant C_0_684_51 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_688_51 : signed(10 downto 0) := to_signed(12, 11);

subtype  act_0_52_t is signed(8 downto 0);

constant B_0_52 : signed(8 downto 0) := to_signed(16, 9);
constant C_0_38_52 : signed(8 downto 0) := to_signed(5, 9);
constant C_0_305_52 : signed(8 downto 0) := to_signed(0, 9);
constant C_0_368_52 : signed(8 downto 0) := to_signed(6, 9);
constant C_0_472_52 : signed(8 downto 0) := to_signed(6, 9);
constant C_0_559_52 : signed(8 downto 0) := to_signed(5, 9);
constant C_0_737_52 : signed(8 downto 0) := to_signed(2, 9);
constant C_0_769_52 : signed(8 downto 0) := to_signed(4, 9);

subtype  act_0_53_t is signed(10 downto 0);

constant B_0_53 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_125_53 : signed(10 downto 0) := to_signed(-27, 11);
constant C_0_352_53 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_407_53 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_435_53 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_464_53 : signed(10 downto 0) := to_signed(11, 11);
constant C_0_483_53 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_510_53 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_512_53 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_514_53 : signed(10 downto 0) := to_signed(-12, 11);
constant C_0_525_53 : signed(10 downto 0) := to_signed(-24, 11);
constant C_0_538_53 : signed(10 downto 0) := to_signed(-28, 11);
constant C_0_539_53 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_540_53 : signed(10 downto 0) := to_signed(-10, 11);
constant C_0_548_53 : signed(10 downto 0) := to_signed(-19, 11);
constant C_0_549_53 : signed(10 downto 0) := to_signed(-17, 11);
constant C_0_550_53 : signed(10 downto 0) := to_signed(-13, 11);
constant C_0_551_53 : signed(10 downto 0) := to_signed(-14, 11);
constant C_0_552_53 : signed(10 downto 0) := to_signed(-18, 11);
constant C_0_553_53 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_566_53 : signed(10 downto 0) := to_signed(-29, 11);
constant C_0_578_53 : signed(10 downto 0) := to_signed(-18, 11);
constant C_0_580_53 : signed(10 downto 0) := to_signed(-22, 11);
constant C_0_608_53 : signed(10 downto 0) := to_signed(-19, 11);

subtype  act_0_54_t is signed(5 downto 0);

constant B_0_54 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_55_t is signed(11 downto 0);

constant B_0_55 : signed(11 downto 0) := to_signed(-88, 12);
constant C_0_124_55 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_128_55 : signed(11 downto 0) := to_signed(15, 12);
constant C_0_150_55 : signed(11 downto 0) := to_signed(-6, 12);
constant C_0_151_55 : signed(11 downto 0) := to_signed(-7, 12);
constant C_0_157_55 : signed(11 downto 0) := to_signed(10, 12);
constant C_0_178_55 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_205_55 : signed(11 downto 0) := to_signed(-12, 12);
constant C_0_216_55 : signed(11 downto 0) := to_signed(-10, 12);
constant C_0_232_55 : signed(11 downto 0) := to_signed(-14, 12);
constant C_0_233_55 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_269_55 : signed(11 downto 0) := to_signed(-8, 12);
constant C_0_288_55 : signed(11 downto 0) := to_signed(-8, 12);
constant C_0_293_55 : signed(11 downto 0) := to_signed(9, 12);
constant C_0_316_55 : signed(11 downto 0) := to_signed(-12, 12);
constant C_0_343_55 : signed(11 downto 0) := to_signed(-14, 12);
constant C_0_371_55 : signed(11 downto 0) := to_signed(-13, 12);
constant C_0_378_55 : signed(11 downto 0) := to_signed(-27, 12);
constant C_0_403_55 : signed(11 downto 0) := to_signed(20, 12);
constant C_0_431_55 : signed(11 downto 0) := to_signed(25, 12);
constant C_0_438_55 : signed(11 downto 0) := to_signed(19, 12);
constant C_0_459_55 : signed(11 downto 0) := to_signed(37, 12);
constant C_0_482_55 : signed(11 downto 0) := to_signed(-16, 12);
constant C_0_483_55 : signed(11 downto 0) := to_signed(-9, 12);
constant C_0_490_55 : signed(11 downto 0) := to_signed(-11, 12);
constant C_0_509_55 : signed(11 downto 0) := to_signed(-8, 12);
constant C_0_510_55 : signed(11 downto 0) := to_signed(-19, 12);
constant C_0_511_55 : signed(11 downto 0) := to_signed(-17, 12);
constant C_0_514_55 : signed(11 downto 0) := to_signed(21, 12);
constant C_0_517_55 : signed(11 downto 0) := to_signed(-12, 12);
constant C_0_543_55 : signed(11 downto 0) := to_signed(16, 12);
constant C_0_567_55 : signed(11 downto 0) := to_signed(-20, 12);
constant C_0_595_55 : signed(11 downto 0) := to_signed(-6, 12);
constant C_0_601_55 : signed(11 downto 0) := to_signed(18, 12);
constant C_0_624_55 : signed(11 downto 0) := to_signed(-22, 12);
constant C_0_631_55 : signed(11 downto 0) := to_signed(12, 12);

subtype  act_0_56_t is signed(5 downto 0);

constant B_0_56 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_57_t is signed(8 downto 0);

constant B_0_57 : signed(8 downto 0) := to_signed(-46, 9);
constant C_0_150_57 : signed(8 downto 0) := to_signed(12, 9);
constant C_0_230_57 : signed(8 downto 0) := to_signed(0, 9);
constant C_0_245_57 : signed(8 downto 0) := to_signed(-4, 9);
constant C_0_287_57 : signed(8 downto 0) := to_signed(-6, 9);
constant C_0_373_57 : signed(8 downto 0) := to_signed(8, 9);
constant C_0_608_57 : signed(8 downto 0) := to_signed(-3, 9);
constant C_0_629_57 : signed(8 downto 0) := to_signed(10, 9);
constant C_0_652_57 : signed(8 downto 0) := to_signed(-3, 9);

subtype  act_0_58_t is signed(10 downto 0);

constant B_0_58 : signed(10 downto 0) := to_signed(1, 11);
constant C_0_129_58 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_157_58 : signed(10 downto 0) := to_signed(-22, 11);
constant C_0_158_58 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_184_58 : signed(10 downto 0) := to_signed(-8, 11);
constant C_0_185_58 : signed(10 downto 0) := to_signed(-35, 11);
constant C_0_188_58 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_205_58 : signed(10 downto 0) := to_signed(-18, 11);
constant C_0_212_58 : signed(10 downto 0) := to_signed(-20, 11);
constant C_0_213_58 : signed(10 downto 0) := to_signed(-22, 11);
constant C_0_240_58 : signed(10 downto 0) := to_signed(-24, 11);
constant C_0_267_58 : signed(10 downto 0) := to_signed(-15, 11);
constant C_0_268_58 : signed(10 downto 0) := to_signed(-7, 11);
constant C_0_326_58 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_329_58 : signed(10 downto 0) := to_signed(16, 11);
constant C_0_517_58 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_573_58 : signed(10 downto 0) := to_signed(10, 11);
constant C_0_635_58 : signed(10 downto 0) := to_signed(-8, 11);

subtype  act_0_59_t is signed(5 downto 0);

constant B_0_59 : signed(5 downto 0) := to_signed(0, 6);

subtype  act_0_60_t is signed(9 downto 0);

constant B_0_60 : signed(9 downto 0) := to_signed(-26, 10);
constant C_0_126_60 : signed(9 downto 0) := to_signed(-8, 10);
constant C_0_205_60 : signed(9 downto 0) := to_signed(11, 10);
constant C_0_262_60 : signed(9 downto 0) := to_signed(17, 10);
constant C_0_290_60 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_345_60 : signed(9 downto 0) := to_signed(17, 10);
constant C_0_350_60 : signed(9 downto 0) := to_signed(-11, 10);
constant C_0_374_60 : signed(9 downto 0) := to_signed(15, 10);
constant C_0_402_60 : signed(9 downto 0) := to_signed(16, 10);
constant C_0_413_60 : signed(9 downto 0) := to_signed(12, 10);
constant C_0_433_60 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_461_60 : signed(9 downto 0) := to_signed(-22, 10);
constant C_0_470_60 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_498_60 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_516_60 : signed(9 downto 0) := to_signed(-20, 10);
constant C_0_553_60 : signed(9 downto 0) := to_signed(-13, 10);

subtype  act_0_61_t is signed(9 downto 0);

constant B_0_61 : signed(9 downto 0) := to_signed(13, 10);
constant C_0_149_61 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_150_61 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_152_61 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_153_61 : signed(9 downto 0) := to_signed(-12, 10);
constant C_0_155_61 : signed(9 downto 0) := to_signed(-16, 10);
constant C_0_157_61 : signed(9 downto 0) := to_signed(-7, 10);
constant C_0_158_61 : signed(9 downto 0) := to_signed(-7, 10);
constant C_0_159_61 : signed(9 downto 0) := to_signed(-10, 10);
constant C_0_190_61 : signed(9 downto 0) := to_signed(-7, 10);

  -- Layer 1
  constant LUT_SIZE_1        : integer := 64;
  constant LUT_ADDR_WIDTH_1  : integer := 6;
  constant LUT_DATA_WIDTH_1  : integer := 6;
  subtype  lut_input_t_1  is signed(LUT_ADDR_WIDTH_1-1 downto 0);
  subtype  lut_output_t_1 is signed(LUT_DATA_WIDTH_1-1 downto 0);
end package;