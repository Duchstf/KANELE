library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PkgKAN.all;
use work.PkgLUT.all;

entity KAN is
  port (
    clk    : in  std_logic;
    en     : in  std_logic := '1';
    input  : in  input_vec_t;
    output : out output_vec_t
  );
end entity;

architecture rtl of KAN is
  -- === auto: signal declarations ===
  -- Layer 0 (784->62)
  signal act_0_245_0, act_0_272_0, act_0_327_0, act_0_355_0 : act_0_0_t;
  signal act_0_183_1, act_0_205_1, act_0_261_1, act_0_276_1, act_0_314_1, act_0_322_1, act_0_330_1, act_0_331_1, act_0_359_1, act_0_370_1, act_0_521_1, act_0_549_1 : act_0_1_t;
  signal act_0_180_3, act_0_266_3, act_0_293_3, act_0_320_3, act_0_348_3, act_0_442_3, act_0_469_3, act_0_703_3 : act_0_3_t;
  signal act_0_204_6, act_0_322_6, act_0_323_6, act_0_325_6, act_0_354_6, act_0_408_6, act_0_432_6, act_0_458_6, act_0_464_6, act_0_635_6 : act_0_6_t;
  signal act_0_158_7, act_0_159_7, act_0_219_7, act_0_245_7, act_0_247_7, act_0_271_7, act_0_272_7, act_0_276_7, act_0_291_7, act_0_342_7, act_0_356_7, act_0_357_7, act_0_358_7, act_0_385_7, act_0_412_7, act_0_442_7 : act_0_7_t;
  signal act_0_553_7 : act_0_7_t;
  signal act_0_349_8, act_0_375_8, act_0_403_8, act_0_430_8, act_0_456_8, act_0_457_8, act_0_482_8, act_0_483_8, act_0_488_8, act_0_510_8, act_0_537_8 : act_0_8_t;
  signal act_0_149_9, act_0_150_9, act_0_151_9, act_0_176_9, act_0_205_9, act_0_206_9, act_0_232_9, act_0_259_9, act_0_261_9, act_0_262_9, act_0_290_9, act_0_298_9, act_0_302_9, act_0_303_9, act_0_328_9, act_0_330_9 : act_0_9_t;
  signal act_0_331_9, act_0_427_9, act_0_430_9, act_0_462_9, act_0_497_9, act_0_624_9, act_0_628_9, act_0_686_9 : act_0_9_t;
  signal act_0_155_10, act_0_176_10, act_0_183_10, act_0_207_10, act_0_210_10, act_0_211_10, act_0_238_10, act_0_239_10, act_0_266_10, act_0_286_10, act_0_294_10, act_0_314_10, act_0_322_10, act_0_635_10, act_0_685_10 : act_0_10_t;
  signal act_0_151_12, act_0_152_12, act_0_235_12, act_0_269_12, act_0_381_12, act_0_408_12, act_0_410_12, act_0_436_12, act_0_438_12, act_0_464_12, act_0_537_12, act_0_542_12, act_0_543_12, act_0_566_12, act_0_567_12, act_0_568_12 : act_0_12_t;
  signal act_0_574_12, act_0_580_12, act_0_594_12, act_0_601_12, act_0_603_12, act_0_608_12 : act_0_12_t;
  signal act_0_184_13, act_0_292_13, act_0_319_13, act_0_320_13, act_0_327_13, act_0_383_13, act_0_410_13, act_0_411_13, act_0_438_13, act_0_439_13, act_0_465_13, act_0_466_13, act_0_492_13, act_0_493_13, act_0_519_13, act_0_520_13 : act_0_13_t;
  signal act_0_521_13, act_0_541_13, act_0_571_13, act_0_572_13, act_0_634_13, act_0_635_13 : act_0_13_t;
  signal act_0_149_14, act_0_150_14, act_0_276_14, act_0_382_14, act_0_411_14, act_0_439_14, act_0_467_14, act_0_468_14, act_0_496_14, act_0_525_14, act_0_552_14, act_0_553_14, act_0_606_14, act_0_608_14 : act_0_14_t;
  signal act_0_129_15, act_0_158_15, act_0_183_15, act_0_185_15, act_0_189_15, act_0_247_15, act_0_266_15, act_0_267_15, act_0_268_15, act_0_269_15, act_0_270_15, act_0_271_15, act_0_272_15, act_0_274_15, act_0_299_15, act_0_300_15 : act_0_15_t;
  signal act_0_301_15, act_0_302_15, act_0_303_15, act_0_330_15 : act_0_15_t;
  signal act_0_161_16, act_0_208_16, act_0_264_16, act_0_292_16, act_0_293_16, act_0_294_16, act_0_298_16, act_0_350_16, act_0_399_16, act_0_400_16, act_0_402_16, act_0_429_16, act_0_519_16, act_0_566_16, act_0_629_16 : act_0_16_t;
  signal act_0_150_17, act_0_151_17, act_0_153_17, act_0_157_17, act_0_159_17, act_0_160_17, act_0_176_17, act_0_178_17, act_0_179_17, act_0_182_17, act_0_183_17, act_0_184_17, act_0_238_17, act_0_318_17, act_0_319_17, act_0_353_17 : act_0_17_t;
  signal act_0_377_17, act_0_404_17, act_0_405_17, act_0_406_17, act_0_432_17, act_0_433_17, act_0_459_17, act_0_460_17, act_0_485_17, act_0_486_17, act_0_494_17, act_0_515_17, act_0_538_17, act_0_542_17, act_0_566_17, act_0_567_17 : act_0_17_t;
  signal act_0_580_17, act_0_594_17, act_0_688_17 : act_0_17_t;
  signal act_0_151_18, act_0_154_18, act_0_155_18, act_0_156_18, act_0_157_18, act_0_158_18, act_0_159_18, act_0_183_18, act_0_209_18, act_0_241_18, act_0_327_18, act_0_345_18, act_0_351_18, act_0_375_18, act_0_403_18, act_0_566_18 : act_0_18_t;
  signal act_0_567_18, act_0_568_18, act_0_604_18, act_0_629_18, act_0_630_18, act_0_659_18, act_0_685_18 : act_0_18_t;
  signal act_0_265_20, act_0_271_20, act_0_293_20, act_0_294_20, act_0_299_20, act_0_321_20, act_0_322_20, act_0_344_20, act_0_349_20, act_0_357_20, act_0_377_20, act_0_454_20, act_0_463_20, act_0_492_20, act_0_572_20, act_0_681_20 : act_0_20_t;
  signal act_0_258_23, act_0_373_23, act_0_399_23, act_0_400_23, act_0_425_23, act_0_426_23 : act_0_23_t;
  signal act_0_29_24, act_0_147_24, act_0_365_24, act_0_403_24, act_0_431_24, act_0_450_24, act_0_485_24, act_0_509_24, act_0_510_24, act_0_515_24, act_0_527_24, act_0_550_24, act_0_555_24, act_0_560_24, act_0_588_24, act_0_604_24 : act_0_24_t;
  signal act_0_709_24, act_0_747_24, act_0_774_24 : act_0_24_t;
  signal act_0_149_25, act_0_270_25, act_0_298_25, act_0_313_25, act_0_321_25, act_0_326_25, act_0_354_25, act_0_409_25, act_0_410_25, act_0_415_25, act_0_440_25, act_0_442_25, act_0_467_25, act_0_468_25, act_0_494_25, act_0_495_25 : act_0_25_t;
  signal act_0_686_25 : act_0_25_t;
  signal act_0_124_26, act_0_125_26, act_0_489_26, act_0_569_26, act_0_571_26, act_0_572_26, act_0_573_26, act_0_598_26, act_0_602_26, act_0_603_26, act_0_681_26, act_0_682_26, act_0_683_26, act_0_685_26 : act_0_26_t;
  signal act_0_190_28, act_0_214_28, act_0_297_28, act_0_298_28, act_0_299_28, act_0_303_28 : act_0_28_t;
  signal act_0_183_29, act_0_189_29, act_0_190_29, act_0_214_29, act_0_216_29, act_0_217_29, act_0_218_29, act_0_219_29, act_0_239_29, act_0_242_29, act_0_243_29, act_0_247_29, act_0_519_29, act_0_631_29, act_0_634_29, act_0_635_29 : act_0_29_t;
  signal act_0_654_29, act_0_656_29, act_0_657_29, act_0_658_29, act_0_659_29, act_0_660_29, act_0_661_29 : act_0_29_t;
  signal act_0_426_33, act_0_427_33, act_0_455_33, act_0_456_33, act_0_457_33, act_0_485_33, act_0_486_33, act_0_487_33, act_0_488_33, act_0_489_33, act_0_490_33, act_0_516_33, act_0_569_33, act_0_571_33, act_0_594_33 : act_0_33_t;
  signal act_0_150_34, act_0_238_34, act_0_266_34, act_0_267_34, act_0_294_34, act_0_295_34, act_0_300_34, act_0_317_34, act_0_322_34, act_0_345_34, act_0_490_34, act_0_546_34, act_0_553_34, act_0_554_34, act_0_567_34, act_0_569_34 : act_0_34_t;
  signal act_0_580_34, act_0_595_34, act_0_598_34, act_0_608_34, act_0_681_34 : act_0_34_t;
  signal act_0_325_35, act_0_330_35, act_0_358_35, act_0_359_35, act_0_380_35, act_0_414_35, act_0_415_35, act_0_442_35, act_0_568_35, act_0_661_35 : act_0_35_t;
  signal act_0_482_36, act_0_509_36, act_0_512_36, act_0_513_36, act_0_514_36, act_0_515_36, act_0_544_36 : act_0_36_t;
  signal act_0_302_37, act_0_323_37, act_0_324_37, act_0_325_37, act_0_353_37, act_0_355_37, act_0_356_37, act_0_357_37, act_0_358_37, act_0_408_37, act_0_463_37, act_0_493_37, act_0_515_37, act_0_516_37, act_0_518_37, act_0_598_37 : act_0_37_t;
  signal act_0_126_38, act_0_150_38, act_0_153_38, act_0_181_38, act_0_182_38, act_0_205_38, act_0_209_38, act_0_213_38, act_0_237_38, act_0_265_38, act_0_320_38, act_0_329_38, act_0_442_38, act_0_537_38 : act_0_38_t;
  signal act_0_379_39, act_0_546_39, act_0_679_39, act_0_681_39 : act_0_39_t;
  signal act_0_99_41, act_0_123_41, act_0_124_41, act_0_176_41, act_0_177_41, act_0_287_41, act_0_289_41, act_0_290_41, act_0_291_41, act_0_292_41, act_0_293_41, act_0_314_41, act_0_315_41, act_0_316_41, act_0_317_41, act_0_342_41 : act_0_41_t;
  signal act_0_371_41, act_0_372_41 : act_0_41_t;
  signal act_0_202_42, act_0_247_42, act_0_272_42, act_0_285_42, act_0_356_42, act_0_516_42, act_0_517_42, act_0_654_42, act_0_713_42 : act_0_42_t;
  signal act_0_129_43, act_0_209_43, act_0_219_43, act_0_538_43, act_0_545_43, act_0_567_43, act_0_568_43, act_0_570_43, act_0_571_43 : act_0_43_t;
  signal act_0_124_44, act_0_270_44, act_0_397_44, act_0_409_44, act_0_413_44, act_0_414_44, act_0_430_44, act_0_438_44, act_0_439_44, act_0_440_44, act_0_441_44, act_0_463_44, act_0_467_44, act_0_550_44, act_0_554_44, act_0_580_44 : act_0_44_t;
  signal act_0_581_44, act_0_609_44, act_0_657_44, act_0_658_44, act_0_683_44, act_0_684_44, act_0_685_44, act_0_686_44, act_0_687_44 : act_0_44_t;
  signal act_0_294_45, act_0_320_45, act_0_321_45, act_0_342_45, act_0_344_45, act_0_345_45, act_0_346_45, act_0_347_45, act_0_348_45, act_0_370_45, act_0_371_45, act_0_372_45 : act_0_45_t;
  signal act_0_351_47, act_0_406_47, act_0_434_47 : act_0_47_t;
  signal act_0_322_48, act_0_350_48, act_0_377_48, act_0_378_48, act_0_405_48, act_0_432_48, act_0_459_48, act_0_460_48, act_0_487_48, act_0_516_48, act_0_544_48, act_0_626_48 : act_0_48_t;
  signal act_0_66_49, act_0_199_49, act_0_537_49, act_0_740_49 : act_0_49_t;
  signal act_0_158_51, act_0_398_51, act_0_412_51, act_0_440_51, act_0_491_51, act_0_548_51, act_0_627_51, act_0_629_51, act_0_634_51, act_0_652_51, act_0_657_51, act_0_658_51, act_0_659_51, act_0_660_51, act_0_662_51, act_0_682_51 : act_0_51_t;
  signal act_0_684_51, act_0_688_51 : act_0_51_t;
  signal act_0_38_52, act_0_305_52, act_0_368_52, act_0_472_52, act_0_559_52, act_0_737_52, act_0_769_52 : act_0_52_t;
  signal act_0_125_53, act_0_352_53, act_0_407_53, act_0_435_53, act_0_464_53, act_0_483_53, act_0_510_53, act_0_512_53, act_0_514_53, act_0_525_53, act_0_538_53, act_0_539_53, act_0_540_53, act_0_548_53, act_0_549_53, act_0_550_53 : act_0_53_t;
  signal act_0_551_53, act_0_552_53, act_0_553_53, act_0_566_53, act_0_578_53, act_0_580_53, act_0_608_53 : act_0_53_t;
  signal act_0_124_55, act_0_128_55, act_0_150_55, act_0_151_55, act_0_157_55, act_0_178_55, act_0_205_55, act_0_216_55, act_0_232_55, act_0_233_55, act_0_269_55, act_0_288_55, act_0_293_55, act_0_316_55, act_0_343_55, act_0_371_55 : act_0_55_t;
  signal act_0_378_55, act_0_403_55, act_0_431_55, act_0_438_55, act_0_459_55, act_0_482_55, act_0_483_55, act_0_490_55, act_0_509_55, act_0_510_55, act_0_511_55, act_0_514_55, act_0_517_55, act_0_543_55, act_0_567_55, act_0_595_55 : act_0_55_t;
  signal act_0_601_55, act_0_624_55, act_0_631_55 : act_0_55_t;
  signal act_0_150_57, act_0_230_57, act_0_245_57, act_0_287_57, act_0_373_57, act_0_608_57, act_0_629_57, act_0_652_57 : act_0_57_t;
  signal act_0_129_58, act_0_157_58, act_0_158_58, act_0_184_58, act_0_185_58, act_0_188_58, act_0_205_58, act_0_212_58, act_0_213_58, act_0_240_58, act_0_267_58, act_0_268_58, act_0_326_58, act_0_329_58, act_0_517_58, act_0_573_58 : act_0_58_t;
  signal act_0_635_58 : act_0_58_t;
  signal act_0_126_60, act_0_205_60, act_0_262_60, act_0_290_60, act_0_345_60, act_0_350_60, act_0_374_60, act_0_402_60, act_0_413_60, act_0_433_60, act_0_461_60, act_0_470_60, act_0_498_60, act_0_516_60, act_0_553_60 : act_0_60_t;
  signal act_0_149_61, act_0_150_61, act_0_152_61, act_0_153_61, act_0_155_61, act_0_157_61, act_0_158_61, act_0_159_61, act_0_190_61 : act_0_61_t;
  signal out0_0, out0_1, out0_2, out0_3, out0_4, out0_5, out0_6, out0_7, out0_8, out0_9, out0_10, out0_11, out0_12, out0_13, out0_14, out0_15 : lut_output_t_0;
  signal out0_16, out0_17, out0_18, out0_19, out0_20, out0_21, out0_22, out0_23, out0_24, out0_25, out0_26, out0_27, out0_28, out0_29, out0_30, out0_31 : lut_output_t_0;
  signal out0_32, out0_33, out0_34, out0_35, out0_36, out0_37, out0_38, out0_39, out0_40, out0_41, out0_42, out0_43, out0_44, out0_45, out0_46, out0_47 : lut_output_t_0;
  signal out0_48, out0_49, out0_50, out0_51, out0_52, out0_53, out0_54, out0_55, out0_56, out0_57, out0_58, out0_59, out0_60, out0_61 : lut_output_t_0;
  signal out0_0_reg, out0_1_reg, out0_2_reg, out0_3_reg, out0_4_reg, out0_5_reg, out0_6_reg, out0_7_reg, out0_8_reg, out0_9_reg, out0_10_reg, out0_11_reg, out0_12_reg, out0_13_reg, out0_14_reg, out0_15_reg : lut_output_t_0;
  signal out0_16_reg, out0_17_reg, out0_18_reg, out0_19_reg, out0_20_reg, out0_21_reg, out0_22_reg, out0_23_reg, out0_24_reg, out0_25_reg, out0_26_reg, out0_27_reg, out0_28_reg, out0_29_reg, out0_30_reg, out0_31_reg : lut_output_t_0;
  signal out0_32_reg, out0_33_reg, out0_34_reg, out0_35_reg, out0_36_reg, out0_37_reg, out0_38_reg, out0_39_reg, out0_40_reg, out0_41_reg, out0_42_reg, out0_43_reg, out0_44_reg, out0_45_reg, out0_46_reg, out0_47_reg : lut_output_t_0;
  signal out0_48_reg, out0_49_reg, out0_50_reg, out0_51_reg, out0_52_reg, out0_53_reg, out0_54_reg, out0_55_reg, out0_56_reg, out0_57_reg, out0_58_reg, out0_59_reg, out0_60_reg, out0_61_reg : lut_output_t_0;

-- Layer 1 (62->10)
  signal act_1_0_0, act_1_0_1, act_1_0_3, act_1_0_5, act_1_0_6, act_1_0_7, act_1_0_8, act_1_0_9, act_1_1_3, act_1_1_5, act_1_1_8, act_1_3_8, act_1_3_9, act_1_6_0, act_1_6_1, act_1_6_2 : lut_output_t_1;
  signal act_1_6_6, act_1_6_8, act_1_7_5, act_1_7_7, act_1_7_9, act_1_8_0, act_1_8_1, act_1_8_2, act_1_8_3, act_1_8_8, act_1_8_9, act_1_9_0, act_1_9_1, act_1_9_2, act_1_9_3, act_1_9_4 : lut_output_t_1;
  signal act_1_9_6, act_1_9_7, act_1_10_3, act_1_10_4, act_1_10_6, act_1_10_7, act_1_12_0, act_1_12_4, act_1_12_6, act_1_12_9, act_1_13_0, act_1_13_1, act_1_13_2, act_1_13_3, act_1_13_4, act_1_13_5 : lut_output_t_1;
  signal act_1_14_1, act_1_14_2, act_1_14_7, act_1_14_8, act_1_15_0, act_1_15_2, act_1_15_3, act_1_15_4, act_1_15_5, act_1_15_6, act_1_16_1, act_1_16_6, act_1_17_7, act_1_18_8, act_1_18_9, act_1_20_3 : lut_output_t_1;
  signal act_1_20_4, act_1_23_2, act_1_23_3, act_1_23_4, act_1_23_6, act_1_23_7, act_1_23_8, act_1_23_9, act_1_24_1, act_1_24_3, act_1_24_5, act_1_24_7, act_1_25_5, act_1_25_6, act_1_25_8, act_1_25_9 : lut_output_t_1;
  signal act_1_26_0, act_1_26_1, act_1_26_3, act_1_26_5, act_1_26_6, act_1_26_7, act_1_26_8, act_1_28_3, act_1_28_4, act_1_28_5, act_1_28_6, act_1_29_2, act_1_29_5, act_1_29_6, act_1_29_7, act_1_33_1 : lut_output_t_1;
  signal act_1_33_3, act_1_33_5, act_1_33_6, act_1_33_8, act_1_34_1, act_1_34_3, act_1_34_7, act_1_34_8, act_1_35_0, act_1_35_2, act_1_35_5, act_1_35_6, act_1_36_0, act_1_36_1, act_1_36_2, act_1_36_6 : lut_output_t_1;
  signal act_1_36_7, act_1_36_8, act_1_37_0, act_1_37_4, act_1_37_5, act_1_37_8, act_1_37_9, act_1_38_1, act_1_38_7, act_1_38_9, act_1_39_1, act_1_39_3, act_1_39_5, act_1_41_1, act_1_41_3, act_1_41_4 : lut_output_t_1;
  signal act_1_41_6, act_1_41_7, act_1_41_8, act_1_41_9, act_1_42_0, act_1_42_6, act_1_43_0, act_1_43_2, act_1_43_3, act_1_43_8, act_1_43_9, act_1_44_0, act_1_44_1, act_1_44_2, act_1_44_7, act_1_45_0 : lut_output_t_1;
  signal act_1_45_2, act_1_45_3, act_1_45_4, act_1_45_8, act_1_45_9, act_1_47_0, act_1_47_3, act_1_47_4, act_1_47_6, act_1_47_8, act_1_48_0, act_1_48_4, act_1_48_7, act_1_48_9, act_1_49_0, act_1_49_6 : lut_output_t_1;
  signal act_1_51_0, act_1_51_2, act_1_51_3, act_1_51_4, act_1_51_5, act_1_51_7, act_1_51_8, act_1_51_9, act_1_52_4, act_1_53_4, act_1_53_5, act_1_53_7, act_1_53_9, act_1_55_0, act_1_55_6, act_1_57_6 : lut_output_t_1;
  signal act_1_58_1, act_1_58_4, act_1_58_5, act_1_58_6, act_1_58_9, act_1_60_3, act_1_61_0, act_1_61_1, act_1_61_2, act_1_61_3, act_1_61_4, act_1_61_5, act_1_61_6, act_1_61_7, act_1_61_8, act_1_61_9 : lut_output_t_1;
begin

  -- === auto: layer blocks ===
  -- LAYER 0, ch 0
  gen_l0c0 : block
  signal s1_0, s1_1 : sum_t_0_0;
  signal s2_0 : sum_t_0_0;
  signal sum_0_0 : sum_t_0_0;
  begin
    i00 : act_0_245_0 <= C_0_245_0 when input(245)(0) = '1' else (others => '0');
    i01 : act_0_272_0 <= C_0_272_0 when input(272)(0) = '1' else (others => '0');
    i02 : act_0_327_0 <= C_0_327_0 when input(327)(0) = '1' else (others => '0');
    i03 : act_0_355_0 <= C_0_355_0 when input(355)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_0 + act_0_245_0 + act_0_272_0 + act_0_327_0;
        s1_1 <= act_0_355_0;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_0 <= s2_0;
      end if;
    end process;
    out0_0 <= saturate(sum_0_0, 6);
  end block;

  -- LAYER 0, ch 1
  gen_l0c1 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_1;
  signal s2_0 : sum_t_0_1;
  signal sum_0_1 : sum_t_0_1;
  begin
    i00 : act_0_183_1 <= C_0_183_1 when input(183)(0) = '1' else (others => '0');
    i01 : act_0_205_1 <= C_0_205_1 when input(205)(0) = '1' else (others => '0');
    i02 : act_0_261_1 <= C_0_261_1 when input(261)(0) = '1' else (others => '0');
    i03 : act_0_276_1 <= C_0_276_1 when input(276)(0) = '1' else (others => '0');
    i04 : act_0_314_1 <= C_0_314_1 when input(314)(0) = '1' else (others => '0');
    i05 : act_0_322_1 <= C_0_322_1 when input(322)(0) = '1' else (others => '0');
    i06 : act_0_330_1 <= C_0_330_1 when input(330)(0) = '1' else (others => '0');
    i07 : act_0_331_1 <= C_0_331_1 when input(331)(0) = '1' else (others => '0');
    i08 : act_0_359_1 <= C_0_359_1 when input(359)(0) = '1' else (others => '0');
    i09 : act_0_370_1 <= C_0_370_1 when input(370)(0) = '1' else (others => '0');
    i10 : act_0_521_1 <= C_0_521_1 when input(521)(0) = '1' else (others => '0');
    i11 : act_0_549_1 <= C_0_549_1 when input(549)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_1 + act_0_183_1 + act_0_205_1 + act_0_261_1;
        s1_1 <= act_0_276_1 + act_0_314_1 + act_0_322_1 + act_0_330_1;
        s1_2 <= act_0_331_1 + act_0_359_1 + act_0_370_1 + act_0_521_1;
        s1_3 <= act_0_549_1;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_1 <= s2_0;
      end if;
    end process;
    out0_1 <= saturate(sum_0_1, 6);
  end block;

  -- LAYER 0, ch 2
  gen_l0c2 : block
  signal s1_2_pipe : sum_t_0_2;
  signal s2_2_pipe : sum_t_0_2;
  signal sum_0_2 : sum_t_0_2;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_2_pipe <= B_0_2;
        -- Stage 2
        s2_2_pipe <= s1_2_pipe;
        -- Stage 3
        sum_0_2 <= s2_2_pipe;
      end if;
    end process;
    out0_2 <= saturate(sum_0_2, 6);
  end block;

  -- LAYER 0, ch 3
  gen_l0c3 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_3;
  signal s2_0 : sum_t_0_3;
  signal sum_0_3 : sum_t_0_3;
  begin
    i00 : act_0_180_3 <= C_0_180_3 when input(180)(0) = '1' else (others => '0');
    i01 : act_0_266_3 <= C_0_266_3 when input(266)(0) = '1' else (others => '0');
    i02 : act_0_293_3 <= C_0_293_3 when input(293)(0) = '1' else (others => '0');
    i03 : act_0_320_3 <= C_0_320_3 when input(320)(0) = '1' else (others => '0');
    i04 : act_0_348_3 <= C_0_348_3 when input(348)(0) = '1' else (others => '0');
    i05 : act_0_442_3 <= C_0_442_3 when input(442)(0) = '1' else (others => '0');
    i06 : act_0_469_3 <= C_0_469_3 when input(469)(0) = '1' else (others => '0');
    i07 : act_0_703_3 <= C_0_703_3 when input(703)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_3 + act_0_180_3 + act_0_266_3 + act_0_293_3;
        s1_1 <= act_0_320_3 + act_0_348_3 + act_0_442_3 + act_0_469_3;
        s1_2 <= act_0_703_3;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_3 <= s2_0;
      end if;
    end process;
    out0_3 <= saturate(sum_0_3, 6);
  end block;

  -- LAYER 0, ch 4
  gen_l0c4 : block
  signal s1_4_pipe : sum_t_0_4;
  signal s2_4_pipe : sum_t_0_4;
  signal sum_0_4 : sum_t_0_4;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_4_pipe <= B_0_4;
        -- Stage 2
        s2_4_pipe <= s1_4_pipe;
        -- Stage 3
        sum_0_4 <= s2_4_pipe;
      end if;
    end process;
    out0_4 <= saturate(sum_0_4, 6);
  end block;

  -- LAYER 0, ch 5
  gen_l0c5 : block
  signal s1_5_pipe : sum_t_0_5;
  signal s2_5_pipe : sum_t_0_5;
  signal sum_0_5 : sum_t_0_5;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_5_pipe <= B_0_5;
        -- Stage 2
        s2_5_pipe <= s1_5_pipe;
        -- Stage 3
        sum_0_5 <= s2_5_pipe;
      end if;
    end process;
    out0_5 <= saturate(sum_0_5, 6);
  end block;

  -- LAYER 0, ch 6
  gen_l0c6 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_6;
  signal s2_0 : sum_t_0_6;
  signal sum_0_6 : sum_t_0_6;
  begin
    i00 : act_0_204_6 <= C_0_204_6 when input(204)(0) = '1' else (others => '0');
    i01 : act_0_322_6 <= C_0_322_6 when input(322)(0) = '1' else (others => '0');
    i02 : act_0_323_6 <= C_0_323_6 when input(323)(0) = '1' else (others => '0');
    i03 : act_0_325_6 <= C_0_325_6 when input(325)(0) = '1' else (others => '0');
    i04 : act_0_354_6 <= C_0_354_6 when input(354)(0) = '1' else (others => '0');
    i05 : act_0_408_6 <= C_0_408_6 when input(408)(0) = '1' else (others => '0');
    i06 : act_0_432_6 <= C_0_432_6 when input(432)(0) = '1' else (others => '0');
    i07 : act_0_458_6 <= C_0_458_6 when input(458)(0) = '1' else (others => '0');
    i08 : act_0_464_6 <= C_0_464_6 when input(464)(0) = '1' else (others => '0');
    i09 : act_0_635_6 <= C_0_635_6 when input(635)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_6 + act_0_204_6 + act_0_322_6 + act_0_323_6;
        s1_1 <= act_0_325_6 + act_0_354_6 + act_0_408_6 + act_0_432_6;
        s1_2 <= act_0_458_6 + act_0_464_6 + act_0_635_6;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_6 <= s2_0;
      end if;
    end process;
    out0_6 <= saturate(sum_0_6, 6);
  end block;

  -- LAYER 0, ch 7
  gen_l0c7 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_7;
  signal s2_0, s2_1 : sum_t_0_7;
  signal sum_0_7 : sum_t_0_7;
  begin
    i00 : act_0_158_7 <= C_0_158_7 when input(158)(0) = '1' else (others => '0');
    i01 : act_0_159_7 <= C_0_159_7 when input(159)(0) = '1' else (others => '0');
    i02 : act_0_219_7 <= C_0_219_7 when input(219)(0) = '1' else (others => '0');
    i03 : act_0_245_7 <= C_0_245_7 when input(245)(0) = '1' else (others => '0');
    i04 : act_0_247_7 <= C_0_247_7 when input(247)(0) = '1' else (others => '0');
    i05 : act_0_271_7 <= C_0_271_7 when input(271)(0) = '1' else (others => '0');
    i06 : act_0_272_7 <= C_0_272_7 when input(272)(0) = '1' else (others => '0');
    i07 : act_0_276_7 <= C_0_276_7 when input(276)(0) = '1' else (others => '0');
    i08 : act_0_291_7 <= C_0_291_7 when input(291)(0) = '1' else (others => '0');
    i09 : act_0_342_7 <= C_0_342_7 when input(342)(0) = '1' else (others => '0');
    i10 : act_0_356_7 <= C_0_356_7 when input(356)(0) = '1' else (others => '0');
    i11 : act_0_357_7 <= C_0_357_7 when input(357)(0) = '1' else (others => '0');
    i12 : act_0_358_7 <= C_0_358_7 when input(358)(0) = '1' else (others => '0');
    i13 : act_0_385_7 <= C_0_385_7 when input(385)(0) = '1' else (others => '0');
    i14 : act_0_412_7 <= C_0_412_7 when input(412)(0) = '1' else (others => '0');
    i15 : act_0_442_7 <= C_0_442_7 when input(442)(0) = '1' else (others => '0');
    i16 : act_0_553_7 <= C_0_553_7 when input(553)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_7 + act_0_158_7 + act_0_159_7 + act_0_219_7;
        s1_1 <= act_0_245_7 + act_0_247_7 + act_0_271_7 + act_0_272_7;
        s1_2 <= act_0_276_7 + act_0_291_7 + act_0_342_7 + act_0_356_7;
        s1_3 <= act_0_357_7 + act_0_358_7 + act_0_385_7 + act_0_412_7;
        s1_4 <= act_0_442_7 + act_0_553_7;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_7 <= s2_0 + s2_1;
      end if;
    end process;
    out0_7 <= saturate(sum_0_7, 6);
  end block;

  -- LAYER 0, ch 8
  gen_l0c8 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_8;
  signal s2_0 : sum_t_0_8;
  signal sum_0_8 : sum_t_0_8;
  begin
    i00 : act_0_349_8 <= C_0_349_8 when input(349)(0) = '1' else (others => '0');
    i01 : act_0_375_8 <= C_0_375_8 when input(375)(0) = '1' else (others => '0');
    i02 : act_0_403_8 <= C_0_403_8 when input(403)(0) = '1' else (others => '0');
    i03 : act_0_430_8 <= C_0_430_8 when input(430)(0) = '1' else (others => '0');
    i04 : act_0_456_8 <= C_0_456_8 when input(456)(0) = '1' else (others => '0');
    i05 : act_0_457_8 <= C_0_457_8 when input(457)(0) = '1' else (others => '0');
    i06 : act_0_482_8 <= C_0_482_8 when input(482)(0) = '1' else (others => '0');
    i07 : act_0_483_8 <= C_0_483_8 when input(483)(0) = '1' else (others => '0');
    i08 : act_0_488_8 <= C_0_488_8 when input(488)(0) = '1' else (others => '0');
    i09 : act_0_510_8 <= C_0_510_8 when input(510)(0) = '1' else (others => '0');
    i10 : act_0_537_8 <= C_0_537_8 when input(537)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_8 + act_0_349_8 + act_0_375_8 + act_0_403_8;
        s1_1 <= act_0_430_8 + act_0_456_8 + act_0_457_8 + act_0_482_8;
        s1_2 <= act_0_483_8 + act_0_488_8 + act_0_510_8 + act_0_537_8;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_8 <= s2_0;
      end if;
    end process;
    out0_8 <= saturate(sum_0_8, 6);
  end block;

  -- LAYER 0, ch 9
  gen_l0c9 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6 : sum_t_0_9;
  signal s2_0, s2_1 : sum_t_0_9;
  signal sum_0_9 : sum_t_0_9;
  begin
    i00 : act_0_149_9 <= C_0_149_9 when input(149)(0) = '1' else (others => '0');
    i01 : act_0_150_9 <= C_0_150_9 when input(150)(0) = '1' else (others => '0');
    i02 : act_0_151_9 <= C_0_151_9 when input(151)(0) = '1' else (others => '0');
    i03 : act_0_176_9 <= C_0_176_9 when input(176)(0) = '1' else (others => '0');
    i04 : act_0_205_9 <= C_0_205_9 when input(205)(0) = '1' else (others => '0');
    i05 : act_0_206_9 <= C_0_206_9 when input(206)(0) = '1' else (others => '0');
    i06 : act_0_232_9 <= C_0_232_9 when input(232)(0) = '1' else (others => '0');
    i07 : act_0_259_9 <= C_0_259_9 when input(259)(0) = '1' else (others => '0');
    i08 : act_0_261_9 <= C_0_261_9 when input(261)(0) = '1' else (others => '0');
    i09 : act_0_262_9 <= C_0_262_9 when input(262)(0) = '1' else (others => '0');
    i10 : act_0_290_9 <= C_0_290_9 when input(290)(0) = '1' else (others => '0');
    i11 : act_0_298_9 <= C_0_298_9 when input(298)(0) = '1' else (others => '0');
    i12 : act_0_302_9 <= C_0_302_9 when input(302)(0) = '1' else (others => '0');
    i13 : act_0_303_9 <= C_0_303_9 when input(303)(0) = '1' else (others => '0');
    i14 : act_0_328_9 <= C_0_328_9 when input(328)(0) = '1' else (others => '0');
    i15 : act_0_330_9 <= C_0_330_9 when input(330)(0) = '1' else (others => '0');
    i16 : act_0_331_9 <= C_0_331_9 when input(331)(0) = '1' else (others => '0');
    i17 : act_0_427_9 <= C_0_427_9 when input(427)(0) = '1' else (others => '0');
    i18 : act_0_430_9 <= C_0_430_9 when input(430)(0) = '1' else (others => '0');
    i19 : act_0_462_9 <= C_0_462_9 when input(462)(0) = '1' else (others => '0');
    i20 : act_0_497_9 <= C_0_497_9 when input(497)(0) = '1' else (others => '0');
    i21 : act_0_624_9 <= C_0_624_9 when input(624)(0) = '1' else (others => '0');
    i22 : act_0_628_9 <= C_0_628_9 when input(628)(0) = '1' else (others => '0');
    i23 : act_0_686_9 <= C_0_686_9 when input(686)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_9 + act_0_149_9 + act_0_150_9 + act_0_151_9;
        s1_1 <= act_0_176_9 + act_0_205_9 + act_0_206_9 + act_0_232_9;
        s1_2 <= act_0_259_9 + act_0_261_9 + act_0_262_9 + act_0_290_9;
        s1_3 <= act_0_298_9 + act_0_302_9 + act_0_303_9 + act_0_328_9;
        s1_4 <= act_0_330_9 + act_0_331_9 + act_0_427_9 + act_0_430_9;
        s1_5 <= act_0_462_9 + act_0_497_9 + act_0_624_9 + act_0_628_9;
        s1_6 <= act_0_686_9;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5 + s1_6;
        -- Stage 3
        sum_0_9 <= s2_0 + s2_1;
      end if;
    end process;
    out0_9 <= saturate(sum_0_9, 6);
  end block;

  -- LAYER 0, ch 10
  gen_l0c10 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_10;
  signal s2_0 : sum_t_0_10;
  signal sum_0_10 : sum_t_0_10;
  begin
    i00 : act_0_155_10 <= C_0_155_10 when input(155)(0) = '1' else (others => '0');
    i01 : act_0_176_10 <= C_0_176_10 when input(176)(0) = '1' else (others => '0');
    i02 : act_0_183_10 <= C_0_183_10 when input(183)(0) = '1' else (others => '0');
    i03 : act_0_207_10 <= C_0_207_10 when input(207)(0) = '1' else (others => '0');
    i04 : act_0_210_10 <= C_0_210_10 when input(210)(0) = '1' else (others => '0');
    i05 : act_0_211_10 <= C_0_211_10 when input(211)(0) = '1' else (others => '0');
    i06 : act_0_238_10 <= C_0_238_10 when input(238)(0) = '1' else (others => '0');
    i07 : act_0_239_10 <= C_0_239_10 when input(239)(0) = '1' else (others => '0');
    i08 : act_0_266_10 <= C_0_266_10 when input(266)(0) = '1' else (others => '0');
    i09 : act_0_286_10 <= C_0_286_10 when input(286)(0) = '1' else (others => '0');
    i10 : act_0_294_10 <= C_0_294_10 when input(294)(0) = '1' else (others => '0');
    i11 : act_0_314_10 <= C_0_314_10 when input(314)(0) = '1' else (others => '0');
    i12 : act_0_322_10 <= C_0_322_10 when input(322)(0) = '1' else (others => '0');
    i13 : act_0_635_10 <= C_0_635_10 when input(635)(0) = '1' else (others => '0');
    i14 : act_0_685_10 <= C_0_685_10 when input(685)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_10 + act_0_155_10 + act_0_176_10 + act_0_183_10;
        s1_1 <= act_0_207_10 + act_0_210_10 + act_0_211_10 + act_0_238_10;
        s1_2 <= act_0_239_10 + act_0_266_10 + act_0_286_10 + act_0_294_10;
        s1_3 <= act_0_314_10 + act_0_322_10 + act_0_635_10 + act_0_685_10;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_10 <= s2_0;
      end if;
    end process;
    out0_10 <= saturate(sum_0_10, 6);
  end block;

  -- LAYER 0, ch 11
  gen_l0c11 : block
  signal s1_11_pipe : sum_t_0_11;
  signal s2_11_pipe : sum_t_0_11;
  signal sum_0_11 : sum_t_0_11;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_11_pipe <= B_0_11;
        -- Stage 2
        s2_11_pipe <= s1_11_pipe;
        -- Stage 3
        sum_0_11 <= s2_11_pipe;
      end if;
    end process;
    out0_11 <= saturate(sum_0_11, 6);
  end block;

  -- LAYER 0, ch 12
  gen_l0c12 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_12;
  signal s2_0, s2_1 : sum_t_0_12;
  signal sum_0_12 : sum_t_0_12;
  begin
    i00 : act_0_151_12 <= C_0_151_12 when input(151)(0) = '1' else (others => '0');
    i01 : act_0_152_12 <= C_0_152_12 when input(152)(0) = '1' else (others => '0');
    i02 : act_0_235_12 <= C_0_235_12 when input(235)(0) = '1' else (others => '0');
    i03 : act_0_269_12 <= C_0_269_12 when input(269)(0) = '1' else (others => '0');
    i04 : act_0_381_12 <= C_0_381_12 when input(381)(0) = '1' else (others => '0');
    i05 : act_0_408_12 <= C_0_408_12 when input(408)(0) = '1' else (others => '0');
    i06 : act_0_410_12 <= C_0_410_12 when input(410)(0) = '1' else (others => '0');
    i07 : act_0_436_12 <= C_0_436_12 when input(436)(0) = '1' else (others => '0');
    i08 : act_0_438_12 <= C_0_438_12 when input(438)(0) = '1' else (others => '0');
    i09 : act_0_464_12 <= C_0_464_12 when input(464)(0) = '1' else (others => '0');
    i10 : act_0_537_12 <= C_0_537_12 when input(537)(0) = '1' else (others => '0');
    i11 : act_0_542_12 <= C_0_542_12 when input(542)(0) = '1' else (others => '0');
    i12 : act_0_543_12 <= C_0_543_12 when input(543)(0) = '1' else (others => '0');
    i13 : act_0_566_12 <= C_0_566_12 when input(566)(0) = '1' else (others => '0');
    i14 : act_0_567_12 <= C_0_567_12 when input(567)(0) = '1' else (others => '0');
    i15 : act_0_568_12 <= C_0_568_12 when input(568)(0) = '1' else (others => '0');
    i16 : act_0_574_12 <= C_0_574_12 when input(574)(0) = '1' else (others => '0');
    i17 : act_0_580_12 <= C_0_580_12 when input(580)(0) = '1' else (others => '0');
    i18 : act_0_594_12 <= C_0_594_12 when input(594)(0) = '1' else (others => '0');
    i19 : act_0_601_12 <= C_0_601_12 when input(601)(0) = '1' else (others => '0');
    i20 : act_0_603_12 <= C_0_603_12 when input(603)(0) = '1' else (others => '0');
    i21 : act_0_608_12 <= C_0_608_12 when input(608)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_12 + act_0_151_12 + act_0_152_12 + act_0_235_12;
        s1_1 <= act_0_269_12 + act_0_381_12 + act_0_408_12 + act_0_410_12;
        s1_2 <= act_0_436_12 + act_0_438_12 + act_0_464_12 + act_0_537_12;
        s1_3 <= act_0_542_12 + act_0_543_12 + act_0_566_12 + act_0_567_12;
        s1_4 <= act_0_568_12 + act_0_574_12 + act_0_580_12 + act_0_594_12;
        s1_5 <= act_0_601_12 + act_0_603_12 + act_0_608_12;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_12 <= s2_0 + s2_1;
      end if;
    end process;
    out0_12 <= saturate(sum_0_12, 6);
  end block;

  -- LAYER 0, ch 13
  gen_l0c13 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_13;
  signal s2_0, s2_1 : sum_t_0_13;
  signal sum_0_13 : sum_t_0_13;
  begin
    i00 : act_0_184_13 <= C_0_184_13 when input(184)(0) = '1' else (others => '0');
    i01 : act_0_292_13 <= C_0_292_13 when input(292)(0) = '1' else (others => '0');
    i02 : act_0_319_13 <= C_0_319_13 when input(319)(0) = '1' else (others => '0');
    i03 : act_0_320_13 <= C_0_320_13 when input(320)(0) = '1' else (others => '0');
    i04 : act_0_327_13 <= C_0_327_13 when input(327)(0) = '1' else (others => '0');
    i05 : act_0_383_13 <= C_0_383_13 when input(383)(0) = '1' else (others => '0');
    i06 : act_0_410_13 <= C_0_410_13 when input(410)(0) = '1' else (others => '0');
    i07 : act_0_411_13 <= C_0_411_13 when input(411)(0) = '1' else (others => '0');
    i08 : act_0_438_13 <= C_0_438_13 when input(438)(0) = '1' else (others => '0');
    i09 : act_0_439_13 <= C_0_439_13 when input(439)(0) = '1' else (others => '0');
    i10 : act_0_465_13 <= C_0_465_13 when input(465)(0) = '1' else (others => '0');
    i11 : act_0_466_13 <= C_0_466_13 when input(466)(0) = '1' else (others => '0');
    i12 : act_0_492_13 <= C_0_492_13 when input(492)(0) = '1' else (others => '0');
    i13 : act_0_493_13 <= C_0_493_13 when input(493)(0) = '1' else (others => '0');
    i14 : act_0_519_13 <= C_0_519_13 when input(519)(0) = '1' else (others => '0');
    i15 : act_0_520_13 <= C_0_520_13 when input(520)(0) = '1' else (others => '0');
    i16 : act_0_521_13 <= C_0_521_13 when input(521)(0) = '1' else (others => '0');
    i17 : act_0_541_13 <= C_0_541_13 when input(541)(0) = '1' else (others => '0');
    i18 : act_0_571_13 <= C_0_571_13 when input(571)(0) = '1' else (others => '0');
    i19 : act_0_572_13 <= C_0_572_13 when input(572)(0) = '1' else (others => '0');
    i20 : act_0_634_13 <= C_0_634_13 when input(634)(0) = '1' else (others => '0');
    i21 : act_0_635_13 <= C_0_635_13 when input(635)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_13 + act_0_184_13 + act_0_292_13 + act_0_319_13;
        s1_1 <= act_0_320_13 + act_0_327_13 + act_0_383_13 + act_0_410_13;
        s1_2 <= act_0_411_13 + act_0_438_13 + act_0_439_13 + act_0_465_13;
        s1_3 <= act_0_466_13 + act_0_492_13 + act_0_493_13 + act_0_519_13;
        s1_4 <= act_0_520_13 + act_0_521_13 + act_0_541_13 + act_0_571_13;
        s1_5 <= act_0_572_13 + act_0_634_13 + act_0_635_13;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_13 <= s2_0 + s2_1;
      end if;
    end process;
    out0_13 <= saturate(sum_0_13, 6);
  end block;

  -- LAYER 0, ch 14
  gen_l0c14 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_14;
  signal s2_0 : sum_t_0_14;
  signal sum_0_14 : sum_t_0_14;
  begin
    i00 : act_0_149_14 <= C_0_149_14 when input(149)(0) = '1' else (others => '0');
    i01 : act_0_150_14 <= C_0_150_14 when input(150)(0) = '1' else (others => '0');
    i02 : act_0_276_14 <= C_0_276_14 when input(276)(0) = '1' else (others => '0');
    i03 : act_0_382_14 <= C_0_382_14 when input(382)(0) = '1' else (others => '0');
    i04 : act_0_411_14 <= C_0_411_14 when input(411)(0) = '1' else (others => '0');
    i05 : act_0_439_14 <= C_0_439_14 when input(439)(0) = '1' else (others => '0');
    i06 : act_0_467_14 <= C_0_467_14 when input(467)(0) = '1' else (others => '0');
    i07 : act_0_468_14 <= C_0_468_14 when input(468)(0) = '1' else (others => '0');
    i08 : act_0_496_14 <= C_0_496_14 when input(496)(0) = '1' else (others => '0');
    i09 : act_0_525_14 <= C_0_525_14 when input(525)(0) = '1' else (others => '0');
    i10 : act_0_552_14 <= C_0_552_14 when input(552)(0) = '1' else (others => '0');
    i11 : act_0_553_14 <= C_0_553_14 when input(553)(0) = '1' else (others => '0');
    i12 : act_0_606_14 <= C_0_606_14 when input(606)(0) = '1' else (others => '0');
    i13 : act_0_608_14 <= C_0_608_14 when input(608)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_14 + act_0_149_14 + act_0_150_14 + act_0_276_14;
        s1_1 <= act_0_382_14 + act_0_411_14 + act_0_439_14 + act_0_467_14;
        s1_2 <= act_0_468_14 + act_0_496_14 + act_0_525_14 + act_0_552_14;
        s1_3 <= act_0_553_14 + act_0_606_14 + act_0_608_14;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_14 <= s2_0;
      end if;
    end process;
    out0_14 <= saturate(sum_0_14, 6);
  end block;

  -- LAYER 0, ch 15
  gen_l0c15 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_15;
  signal s2_0, s2_1 : sum_t_0_15;
  signal sum_0_15 : sum_t_0_15;
  begin
    i00 : act_0_129_15 <= C_0_129_15 when input(129)(0) = '1' else (others => '0');
    i01 : act_0_158_15 <= C_0_158_15 when input(158)(0) = '1' else (others => '0');
    i02 : act_0_183_15 <= C_0_183_15 when input(183)(0) = '1' else (others => '0');
    i03 : act_0_185_15 <= C_0_185_15 when input(185)(0) = '1' else (others => '0');
    i04 : act_0_189_15 <= C_0_189_15 when input(189)(0) = '1' else (others => '0');
    i05 : act_0_247_15 <= C_0_247_15 when input(247)(0) = '1' else (others => '0');
    i06 : act_0_266_15 <= C_0_266_15 when input(266)(0) = '1' else (others => '0');
    i07 : act_0_267_15 <= C_0_267_15 when input(267)(0) = '1' else (others => '0');
    i08 : act_0_268_15 <= C_0_268_15 when input(268)(0) = '1' else (others => '0');
    i09 : act_0_269_15 <= C_0_269_15 when input(269)(0) = '1' else (others => '0');
    i10 : act_0_270_15 <= C_0_270_15 when input(270)(0) = '1' else (others => '0');
    i11 : act_0_271_15 <= C_0_271_15 when input(271)(0) = '1' else (others => '0');
    i12 : act_0_272_15 <= C_0_272_15 when input(272)(0) = '1' else (others => '0');
    i13 : act_0_274_15 <= C_0_274_15 when input(274)(0) = '1' else (others => '0');
    i14 : act_0_299_15 <= C_0_299_15 when input(299)(0) = '1' else (others => '0');
    i15 : act_0_300_15 <= C_0_300_15 when input(300)(0) = '1' else (others => '0');
    i16 : act_0_301_15 <= C_0_301_15 when input(301)(0) = '1' else (others => '0');
    i17 : act_0_302_15 <= C_0_302_15 when input(302)(0) = '1' else (others => '0');
    i18 : act_0_303_15 <= C_0_303_15 when input(303)(0) = '1' else (others => '0');
    i19 : act_0_330_15 <= C_0_330_15 when input(330)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_15 + act_0_129_15 + act_0_158_15 + act_0_183_15;
        s1_1 <= act_0_185_15 + act_0_189_15 + act_0_247_15 + act_0_266_15;
        s1_2 <= act_0_267_15 + act_0_268_15 + act_0_269_15 + act_0_270_15;
        s1_3 <= act_0_271_15 + act_0_272_15 + act_0_274_15 + act_0_299_15;
        s1_4 <= act_0_300_15 + act_0_301_15 + act_0_302_15 + act_0_303_15;
        s1_5 <= act_0_330_15;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_15 <= s2_0 + s2_1;
      end if;
    end process;
    out0_15 <= saturate(sum_0_15, 6);
  end block;

  -- LAYER 0, ch 16
  gen_l0c16 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_16;
  signal s2_0 : sum_t_0_16;
  signal sum_0_16 : sum_t_0_16;
  begin
    i00 : act_0_161_16 <= C_0_161_16 when input(161)(0) = '1' else (others => '0');
    i01 : act_0_208_16 <= C_0_208_16 when input(208)(0) = '1' else (others => '0');
    i02 : act_0_264_16 <= C_0_264_16 when input(264)(0) = '1' else (others => '0');
    i03 : act_0_292_16 <= C_0_292_16 when input(292)(0) = '1' else (others => '0');
    i04 : act_0_293_16 <= C_0_293_16 when input(293)(0) = '1' else (others => '0');
    i05 : act_0_294_16 <= C_0_294_16 when input(294)(0) = '1' else (others => '0');
    i06 : act_0_298_16 <= C_0_298_16 when input(298)(0) = '1' else (others => '0');
    i07 : act_0_350_16 <= C_0_350_16 when input(350)(0) = '1' else (others => '0');
    i08 : act_0_399_16 <= C_0_399_16 when input(399)(0) = '1' else (others => '0');
    i09 : act_0_400_16 <= C_0_400_16 when input(400)(0) = '1' else (others => '0');
    i10 : act_0_402_16 <= C_0_402_16 when input(402)(0) = '1' else (others => '0');
    i11 : act_0_429_16 <= C_0_429_16 when input(429)(0) = '1' else (others => '0');
    i12 : act_0_519_16 <= C_0_519_16 when input(519)(0) = '1' else (others => '0');
    i13 : act_0_566_16 <= C_0_566_16 when input(566)(0) = '1' else (others => '0');
    i14 : act_0_629_16 <= C_0_629_16 when input(629)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_16 + act_0_161_16 + act_0_208_16 + act_0_264_16;
        s1_1 <= act_0_292_16 + act_0_293_16 + act_0_294_16 + act_0_298_16;
        s1_2 <= act_0_350_16 + act_0_399_16 + act_0_400_16 + act_0_402_16;
        s1_3 <= act_0_429_16 + act_0_519_16 + act_0_566_16 + act_0_629_16;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_16 <= s2_0;
      end if;
    end process;
    out0_16 <= saturate(sum_0_16, 6);
  end block;

  -- LAYER 0, ch 17
  gen_l0c17 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6, s1_7, s1_8 : sum_t_0_17;
  signal s2_0, s2_1, s2_2 : sum_t_0_17;
  signal sum_0_17 : sum_t_0_17;
  begin
    i00 : act_0_150_17 <= C_0_150_17 when input(150)(0) = '1' else (others => '0');
    i01 : act_0_151_17 <= C_0_151_17 when input(151)(0) = '1' else (others => '0');
    i02 : act_0_153_17 <= C_0_153_17 when input(153)(0) = '1' else (others => '0');
    i03 : act_0_157_17 <= C_0_157_17 when input(157)(0) = '1' else (others => '0');
    i04 : act_0_159_17 <= C_0_159_17 when input(159)(0) = '1' else (others => '0');
    i05 : act_0_160_17 <= C_0_160_17 when input(160)(0) = '1' else (others => '0');
    i06 : act_0_176_17 <= C_0_176_17 when input(176)(0) = '1' else (others => '0');
    i07 : act_0_178_17 <= C_0_178_17 when input(178)(0) = '1' else (others => '0');
    i08 : act_0_179_17 <= C_0_179_17 when input(179)(0) = '1' else (others => '0');
    i09 : act_0_182_17 <= C_0_182_17 when input(182)(0) = '1' else (others => '0');
    i10 : act_0_183_17 <= C_0_183_17 when input(183)(0) = '1' else (others => '0');
    i11 : act_0_184_17 <= C_0_184_17 when input(184)(0) = '1' else (others => '0');
    i12 : act_0_238_17 <= C_0_238_17 when input(238)(0) = '1' else (others => '0');
    i13 : act_0_318_17 <= C_0_318_17 when input(318)(0) = '1' else (others => '0');
    i14 : act_0_319_17 <= C_0_319_17 when input(319)(0) = '1' else (others => '0');
    i15 : act_0_353_17 <= C_0_353_17 when input(353)(0) = '1' else (others => '0');
    i16 : act_0_377_17 <= C_0_377_17 when input(377)(0) = '1' else (others => '0');
    i17 : act_0_404_17 <= C_0_404_17 when input(404)(0) = '1' else (others => '0');
    i18 : act_0_405_17 <= C_0_405_17 when input(405)(0) = '1' else (others => '0');
    i19 : act_0_406_17 <= C_0_406_17 when input(406)(0) = '1' else (others => '0');
    i20 : act_0_432_17 <= C_0_432_17 when input(432)(0) = '1' else (others => '0');
    i21 : act_0_433_17 <= C_0_433_17 when input(433)(0) = '1' else (others => '0');
    i22 : act_0_459_17 <= C_0_459_17 when input(459)(0) = '1' else (others => '0');
    i23 : act_0_460_17 <= C_0_460_17 when input(460)(0) = '1' else (others => '0');
    i24 : act_0_485_17 <= C_0_485_17 when input(485)(0) = '1' else (others => '0');
    i25 : act_0_486_17 <= C_0_486_17 when input(486)(0) = '1' else (others => '0');
    i26 : act_0_494_17 <= C_0_494_17 when input(494)(0) = '1' else (others => '0');
    i27 : act_0_515_17 <= C_0_515_17 when input(515)(0) = '1' else (others => '0');
    i28 : act_0_538_17 <= C_0_538_17 when input(538)(0) = '1' else (others => '0');
    i29 : act_0_542_17 <= C_0_542_17 when input(542)(0) = '1' else (others => '0');
    i30 : act_0_566_17 <= C_0_566_17 when input(566)(0) = '1' else (others => '0');
    i31 : act_0_567_17 <= C_0_567_17 when input(567)(0) = '1' else (others => '0');
    i32 : act_0_580_17 <= C_0_580_17 when input(580)(0) = '1' else (others => '0');
    i33 : act_0_594_17 <= C_0_594_17 when input(594)(0) = '1' else (others => '0');
    i34 : act_0_688_17 <= C_0_688_17 when input(688)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_17 + act_0_150_17 + act_0_151_17 + act_0_153_17;
        s1_1 <= act_0_157_17 + act_0_159_17 + act_0_160_17 + act_0_176_17;
        s1_2 <= act_0_178_17 + act_0_179_17 + act_0_182_17 + act_0_183_17;
        s1_3 <= act_0_184_17 + act_0_238_17 + act_0_318_17 + act_0_319_17;
        s1_4 <= act_0_353_17 + act_0_377_17 + act_0_404_17 + act_0_405_17;
        s1_5 <= act_0_406_17 + act_0_432_17 + act_0_433_17 + act_0_459_17;
        s1_6 <= act_0_460_17 + act_0_485_17 + act_0_486_17 + act_0_494_17;
        s1_7 <= act_0_515_17 + act_0_538_17 + act_0_542_17 + act_0_566_17;
        s1_8 <= act_0_567_17 + act_0_580_17 + act_0_594_17 + act_0_688_17;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5 + s1_6 + s1_7;
        s2_2 <= s1_8;
        -- Stage 3
        sum_0_17 <= s2_0 + s2_1 + s2_2;
      end if;
    end process;
    out0_17 <= saturate(sum_0_17, 6);
  end block;

  -- LAYER 0, ch 18
  gen_l0c18 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_18;
  signal s2_0, s2_1 : sum_t_0_18;
  signal sum_0_18 : sum_t_0_18;
  begin
    i00 : act_0_151_18 <= C_0_151_18 when input(151)(0) = '1' else (others => '0');
    i01 : act_0_154_18 <= C_0_154_18 when input(154)(0) = '1' else (others => '0');
    i02 : act_0_155_18 <= C_0_155_18 when input(155)(0) = '1' else (others => '0');
    i03 : act_0_156_18 <= C_0_156_18 when input(156)(0) = '1' else (others => '0');
    i04 : act_0_157_18 <= C_0_157_18 when input(157)(0) = '1' else (others => '0');
    i05 : act_0_158_18 <= C_0_158_18 when input(158)(0) = '1' else (others => '0');
    i06 : act_0_159_18 <= C_0_159_18 when input(159)(0) = '1' else (others => '0');
    i07 : act_0_183_18 <= C_0_183_18 when input(183)(0) = '1' else (others => '0');
    i08 : act_0_209_18 <= C_0_209_18 when input(209)(0) = '1' else (others => '0');
    i09 : act_0_241_18 <= C_0_241_18 when input(241)(0) = '1' else (others => '0');
    i10 : act_0_327_18 <= C_0_327_18 when input(327)(0) = '1' else (others => '0');
    i11 : act_0_345_18 <= C_0_345_18 when input(345)(0) = '1' else (others => '0');
    i12 : act_0_351_18 <= C_0_351_18 when input(351)(0) = '1' else (others => '0');
    i13 : act_0_375_18 <= C_0_375_18 when input(375)(0) = '1' else (others => '0');
    i14 : act_0_403_18 <= C_0_403_18 when input(403)(0) = '1' else (others => '0');
    i15 : act_0_566_18 <= C_0_566_18 when input(566)(0) = '1' else (others => '0');
    i16 : act_0_567_18 <= C_0_567_18 when input(567)(0) = '1' else (others => '0');
    i17 : act_0_568_18 <= C_0_568_18 when input(568)(0) = '1' else (others => '0');
    i18 : act_0_604_18 <= C_0_604_18 when input(604)(0) = '1' else (others => '0');
    i19 : act_0_629_18 <= C_0_629_18 when input(629)(0) = '1' else (others => '0');
    i20 : act_0_630_18 <= C_0_630_18 when input(630)(0) = '1' else (others => '0');
    i21 : act_0_659_18 <= C_0_659_18 when input(659)(0) = '1' else (others => '0');
    i22 : act_0_685_18 <= C_0_685_18 when input(685)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_18 + act_0_151_18 + act_0_154_18 + act_0_155_18;
        s1_1 <= act_0_156_18 + act_0_157_18 + act_0_158_18 + act_0_159_18;
        s1_2 <= act_0_183_18 + act_0_209_18 + act_0_241_18 + act_0_327_18;
        s1_3 <= act_0_345_18 + act_0_351_18 + act_0_375_18 + act_0_403_18;
        s1_4 <= act_0_566_18 + act_0_567_18 + act_0_568_18 + act_0_604_18;
        s1_5 <= act_0_629_18 + act_0_630_18 + act_0_659_18 + act_0_685_18;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_18 <= s2_0 + s2_1;
      end if;
    end process;
    out0_18 <= saturate(sum_0_18, 6);
  end block;

  -- LAYER 0, ch 19
  gen_l0c19 : block
  signal s1_19_pipe : sum_t_0_19;
  signal s2_19_pipe : sum_t_0_19;
  signal sum_0_19 : sum_t_0_19;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_19_pipe <= B_0_19;
        -- Stage 2
        s2_19_pipe <= s1_19_pipe;
        -- Stage 3
        sum_0_19 <= s2_19_pipe;
      end if;
    end process;
    out0_19 <= saturate(sum_0_19, 6);
  end block;

  -- LAYER 0, ch 20
  gen_l0c20 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_20;
  signal s2_0, s2_1 : sum_t_0_20;
  signal sum_0_20 : sum_t_0_20;
  begin
    i00 : act_0_265_20 <= C_0_265_20 when input(265)(0) = '1' else (others => '0');
    i01 : act_0_271_20 <= C_0_271_20 when input(271)(0) = '1' else (others => '0');
    i02 : act_0_293_20 <= C_0_293_20 when input(293)(0) = '1' else (others => '0');
    i03 : act_0_294_20 <= C_0_294_20 when input(294)(0) = '1' else (others => '0');
    i04 : act_0_299_20 <= C_0_299_20 when input(299)(0) = '1' else (others => '0');
    i05 : act_0_321_20 <= C_0_321_20 when input(321)(0) = '1' else (others => '0');
    i06 : act_0_322_20 <= C_0_322_20 when input(322)(0) = '1' else (others => '0');
    i07 : act_0_344_20 <= C_0_344_20 when input(344)(0) = '1' else (others => '0');
    i08 : act_0_349_20 <= C_0_349_20 when input(349)(0) = '1' else (others => '0');
    i09 : act_0_357_20 <= C_0_357_20 when input(357)(0) = '1' else (others => '0');
    i10 : act_0_377_20 <= C_0_377_20 when input(377)(0) = '1' else (others => '0');
    i11 : act_0_454_20 <= C_0_454_20 when input(454)(0) = '1' else (others => '0');
    i12 : act_0_463_20 <= C_0_463_20 when input(463)(0) = '1' else (others => '0');
    i13 : act_0_492_20 <= C_0_492_20 when input(492)(0) = '1' else (others => '0');
    i14 : act_0_572_20 <= C_0_572_20 when input(572)(0) = '1' else (others => '0');
    i15 : act_0_681_20 <= C_0_681_20 when input(681)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_20 + act_0_265_20 + act_0_271_20 + act_0_293_20;
        s1_1 <= act_0_294_20 + act_0_299_20 + act_0_321_20 + act_0_322_20;
        s1_2 <= act_0_344_20 + act_0_349_20 + act_0_357_20 + act_0_377_20;
        s1_3 <= act_0_454_20 + act_0_463_20 + act_0_492_20 + act_0_572_20;
        s1_4 <= act_0_681_20;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_20 <= s2_0 + s2_1;
      end if;
    end process;
    out0_20 <= saturate(sum_0_20, 6);
  end block;

  -- LAYER 0, ch 21
  gen_l0c21 : block
  signal s1_21_pipe : sum_t_0_21;
  signal s2_21_pipe : sum_t_0_21;
  signal sum_0_21 : sum_t_0_21;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_21_pipe <= B_0_21;
        -- Stage 2
        s2_21_pipe <= s1_21_pipe;
        -- Stage 3
        sum_0_21 <= s2_21_pipe;
      end if;
    end process;
    out0_21 <= saturate(sum_0_21, 6);
  end block;

  -- LAYER 0, ch 22
  gen_l0c22 : block
  signal s1_22_pipe : sum_t_0_22;
  signal s2_22_pipe : sum_t_0_22;
  signal sum_0_22 : sum_t_0_22;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_22_pipe <= B_0_22;
        -- Stage 2
        s2_22_pipe <= s1_22_pipe;
        -- Stage 3
        sum_0_22 <= s2_22_pipe;
      end if;
    end process;
    out0_22 <= saturate(sum_0_22, 6);
  end block;

  -- LAYER 0, ch 23
  gen_l0c23 : block
  signal s1_0, s1_1 : sum_t_0_23;
  signal s2_0 : sum_t_0_23;
  signal sum_0_23 : sum_t_0_23;
  begin
    i00 : act_0_258_23 <= C_0_258_23 when input(258)(0) = '1' else (others => '0');
    i01 : act_0_373_23 <= C_0_373_23 when input(373)(0) = '1' else (others => '0');
    i02 : act_0_399_23 <= C_0_399_23 when input(399)(0) = '1' else (others => '0');
    i03 : act_0_400_23 <= C_0_400_23 when input(400)(0) = '1' else (others => '0');
    i04 : act_0_425_23 <= C_0_425_23 when input(425)(0) = '1' else (others => '0');
    i05 : act_0_426_23 <= C_0_426_23 when input(426)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_23 + act_0_258_23 + act_0_373_23 + act_0_399_23;
        s1_1 <= act_0_400_23 + act_0_425_23 + act_0_426_23;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_23 <= s2_0;
      end if;
    end process;
    out0_23 <= saturate(sum_0_23, 6);
  end block;

  -- LAYER 0, ch 24
  gen_l0c24 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_24;
  signal s2_0, s2_1 : sum_t_0_24;
  signal sum_0_24 : sum_t_0_24;
  begin
    i00 : act_0_29_24 <= C_0_29_24 when input(29)(0) = '1' else (others => '0');
    i01 : act_0_147_24 <= C_0_147_24 when input(147)(0) = '1' else (others => '0');
    i02 : act_0_365_24 <= C_0_365_24 when input(365)(0) = '1' else (others => '0');
    i03 : act_0_403_24 <= C_0_403_24 when input(403)(0) = '1' else (others => '0');
    i04 : act_0_431_24 <= C_0_431_24 when input(431)(0) = '1' else (others => '0');
    i05 : act_0_450_24 <= C_0_450_24 when input(450)(0) = '1' else (others => '0');
    i06 : act_0_485_24 <= C_0_485_24 when input(485)(0) = '1' else (others => '0');
    i07 : act_0_509_24 <= C_0_509_24 when input(509)(0) = '1' else (others => '0');
    i08 : act_0_510_24 <= C_0_510_24 when input(510)(0) = '1' else (others => '0');
    i09 : act_0_515_24 <= C_0_515_24 when input(515)(0) = '1' else (others => '0');
    i10 : act_0_527_24 <= C_0_527_24 when input(527)(0) = '1' else (others => '0');
    i11 : act_0_550_24 <= C_0_550_24 when input(550)(0) = '1' else (others => '0');
    i12 : act_0_555_24 <= C_0_555_24 when input(555)(0) = '1' else (others => '0');
    i13 : act_0_560_24 <= C_0_560_24 when input(560)(0) = '1' else (others => '0');
    i14 : act_0_588_24 <= C_0_588_24 when input(588)(0) = '1' else (others => '0');
    i15 : act_0_604_24 <= C_0_604_24 when input(604)(0) = '1' else (others => '0');
    i16 : act_0_709_24 <= C_0_709_24 when input(709)(0) = '1' else (others => '0');
    i17 : act_0_747_24 <= C_0_747_24 when input(747)(0) = '1' else (others => '0');
    i18 : act_0_774_24 <= C_0_774_24 when input(774)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_24 + act_0_29_24 + act_0_147_24 + act_0_365_24;
        s1_1 <= act_0_403_24 + act_0_431_24 + act_0_450_24 + act_0_485_24;
        s1_2 <= act_0_509_24 + act_0_510_24 + act_0_515_24 + act_0_527_24;
        s1_3 <= act_0_550_24 + act_0_555_24 + act_0_560_24 + act_0_588_24;
        s1_4 <= act_0_604_24 + act_0_709_24 + act_0_747_24 + act_0_774_24;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_24 <= s2_0 + s2_1;
      end if;
    end process;
    out0_24 <= saturate(sum_0_24, 6);
  end block;

  -- LAYER 0, ch 25
  gen_l0c25 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_25;
  signal s2_0, s2_1 : sum_t_0_25;
  signal sum_0_25 : sum_t_0_25;
  begin
    i00 : act_0_149_25 <= C_0_149_25 when input(149)(0) = '1' else (others => '0');
    i01 : act_0_270_25 <= C_0_270_25 when input(270)(0) = '1' else (others => '0');
    i02 : act_0_298_25 <= C_0_298_25 when input(298)(0) = '1' else (others => '0');
    i03 : act_0_313_25 <= C_0_313_25 when input(313)(0) = '1' else (others => '0');
    i04 : act_0_321_25 <= C_0_321_25 when input(321)(0) = '1' else (others => '0');
    i05 : act_0_326_25 <= C_0_326_25 when input(326)(0) = '1' else (others => '0');
    i06 : act_0_354_25 <= C_0_354_25 when input(354)(0) = '1' else (others => '0');
    i07 : act_0_409_25 <= C_0_409_25 when input(409)(0) = '1' else (others => '0');
    i08 : act_0_410_25 <= C_0_410_25 when input(410)(0) = '1' else (others => '0');
    i09 : act_0_415_25 <= C_0_415_25 when input(415)(0) = '1' else (others => '0');
    i10 : act_0_440_25 <= C_0_440_25 when input(440)(0) = '1' else (others => '0');
    i11 : act_0_442_25 <= C_0_442_25 when input(442)(0) = '1' else (others => '0');
    i12 : act_0_467_25 <= C_0_467_25 when input(467)(0) = '1' else (others => '0');
    i13 : act_0_468_25 <= C_0_468_25 when input(468)(0) = '1' else (others => '0');
    i14 : act_0_494_25 <= C_0_494_25 when input(494)(0) = '1' else (others => '0');
    i15 : act_0_495_25 <= C_0_495_25 when input(495)(0) = '1' else (others => '0');
    i16 : act_0_686_25 <= C_0_686_25 when input(686)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_25 + act_0_149_25 + act_0_270_25 + act_0_298_25;
        s1_1 <= act_0_313_25 + act_0_321_25 + act_0_326_25 + act_0_354_25;
        s1_2 <= act_0_409_25 + act_0_410_25 + act_0_415_25 + act_0_440_25;
        s1_3 <= act_0_442_25 + act_0_467_25 + act_0_468_25 + act_0_494_25;
        s1_4 <= act_0_495_25 + act_0_686_25;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_25 <= s2_0 + s2_1;
      end if;
    end process;
    out0_25 <= saturate(sum_0_25, 6);
  end block;

  -- LAYER 0, ch 26
  gen_l0c26 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_26;
  signal s2_0 : sum_t_0_26;
  signal sum_0_26 : sum_t_0_26;
  begin
    i00 : act_0_124_26 <= C_0_124_26 when input(124)(0) = '1' else (others => '0');
    i01 : act_0_125_26 <= C_0_125_26 when input(125)(0) = '1' else (others => '0');
    i02 : act_0_489_26 <= C_0_489_26 when input(489)(0) = '1' else (others => '0');
    i03 : act_0_569_26 <= C_0_569_26 when input(569)(0) = '1' else (others => '0');
    i04 : act_0_571_26 <= C_0_571_26 when input(571)(0) = '1' else (others => '0');
    i05 : act_0_572_26 <= C_0_572_26 when input(572)(0) = '1' else (others => '0');
    i06 : act_0_573_26 <= C_0_573_26 when input(573)(0) = '1' else (others => '0');
    i07 : act_0_598_26 <= C_0_598_26 when input(598)(0) = '1' else (others => '0');
    i08 : act_0_602_26 <= C_0_602_26 when input(602)(0) = '1' else (others => '0');
    i09 : act_0_603_26 <= C_0_603_26 when input(603)(0) = '1' else (others => '0');
    i10 : act_0_681_26 <= C_0_681_26 when input(681)(0) = '1' else (others => '0');
    i11 : act_0_682_26 <= C_0_682_26 when input(682)(0) = '1' else (others => '0');
    i12 : act_0_683_26 <= C_0_683_26 when input(683)(0) = '1' else (others => '0');
    i13 : act_0_685_26 <= C_0_685_26 when input(685)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_26 + act_0_124_26 + act_0_125_26 + act_0_489_26;
        s1_1 <= act_0_569_26 + act_0_571_26 + act_0_572_26 + act_0_573_26;
        s1_2 <= act_0_598_26 + act_0_602_26 + act_0_603_26 + act_0_681_26;
        s1_3 <= act_0_682_26 + act_0_683_26 + act_0_685_26;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_26 <= s2_0;
      end if;
    end process;
    out0_26 <= saturate(sum_0_26, 6);
  end block;

  -- LAYER 0, ch 27
  gen_l0c27 : block
  signal s1_27_pipe : sum_t_0_27;
  signal s2_27_pipe : sum_t_0_27;
  signal sum_0_27 : sum_t_0_27;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_27_pipe <= B_0_27;
        -- Stage 2
        s2_27_pipe <= s1_27_pipe;
        -- Stage 3
        sum_0_27 <= s2_27_pipe;
      end if;
    end process;
    out0_27 <= saturate(sum_0_27, 6);
  end block;

  -- LAYER 0, ch 28
  gen_l0c28 : block
  signal s1_0, s1_1 : sum_t_0_28;
  signal s2_0 : sum_t_0_28;
  signal sum_0_28 : sum_t_0_28;
  begin
    i00 : act_0_190_28 <= C_0_190_28 when input(190)(0) = '1' else (others => '0');
    i01 : act_0_214_28 <= C_0_214_28 when input(214)(0) = '1' else (others => '0');
    i02 : act_0_297_28 <= C_0_297_28 when input(297)(0) = '1' else (others => '0');
    i03 : act_0_298_28 <= C_0_298_28 when input(298)(0) = '1' else (others => '0');
    i04 : act_0_299_28 <= C_0_299_28 when input(299)(0) = '1' else (others => '0');
    i05 : act_0_303_28 <= C_0_303_28 when input(303)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_28 + act_0_190_28 + act_0_214_28 + act_0_297_28;
        s1_1 <= act_0_298_28 + act_0_299_28 + act_0_303_28;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_28 <= s2_0;
      end if;
    end process;
    out0_28 <= saturate(sum_0_28, 6);
  end block;

  -- LAYER 0, ch 29
  gen_l0c29 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_29;
  signal s2_0, s2_1 : sum_t_0_29;
  signal sum_0_29 : sum_t_0_29;
  begin
    i00 : act_0_183_29 <= C_0_183_29 when input(183)(0) = '1' else (others => '0');
    i01 : act_0_189_29 <= C_0_189_29 when input(189)(0) = '1' else (others => '0');
    i02 : act_0_190_29 <= C_0_190_29 when input(190)(0) = '1' else (others => '0');
    i03 : act_0_214_29 <= C_0_214_29 when input(214)(0) = '1' else (others => '0');
    i04 : act_0_216_29 <= C_0_216_29 when input(216)(0) = '1' else (others => '0');
    i05 : act_0_217_29 <= C_0_217_29 when input(217)(0) = '1' else (others => '0');
    i06 : act_0_218_29 <= C_0_218_29 when input(218)(0) = '1' else (others => '0');
    i07 : act_0_219_29 <= C_0_219_29 when input(219)(0) = '1' else (others => '0');
    i08 : act_0_239_29 <= C_0_239_29 when input(239)(0) = '1' else (others => '0');
    i09 : act_0_242_29 <= C_0_242_29 when input(242)(0) = '1' else (others => '0');
    i10 : act_0_243_29 <= C_0_243_29 when input(243)(0) = '1' else (others => '0');
    i11 : act_0_247_29 <= C_0_247_29 when input(247)(0) = '1' else (others => '0');
    i12 : act_0_519_29 <= C_0_519_29 when input(519)(0) = '1' else (others => '0');
    i13 : act_0_631_29 <= C_0_631_29 when input(631)(0) = '1' else (others => '0');
    i14 : act_0_634_29 <= C_0_634_29 when input(634)(0) = '1' else (others => '0');
    i15 : act_0_635_29 <= C_0_635_29 when input(635)(0) = '1' else (others => '0');
    i16 : act_0_654_29 <= C_0_654_29 when input(654)(0) = '1' else (others => '0');
    i17 : act_0_656_29 <= C_0_656_29 when input(656)(0) = '1' else (others => '0');
    i18 : act_0_657_29 <= C_0_657_29 when input(657)(0) = '1' else (others => '0');
    i19 : act_0_658_29 <= C_0_658_29 when input(658)(0) = '1' else (others => '0');
    i20 : act_0_659_29 <= C_0_659_29 when input(659)(0) = '1' else (others => '0');
    i21 : act_0_660_29 <= C_0_660_29 when input(660)(0) = '1' else (others => '0');
    i22 : act_0_661_29 <= C_0_661_29 when input(661)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_29 + act_0_183_29 + act_0_189_29 + act_0_190_29;
        s1_1 <= act_0_214_29 + act_0_216_29 + act_0_217_29 + act_0_218_29;
        s1_2 <= act_0_219_29 + act_0_239_29 + act_0_242_29 + act_0_243_29;
        s1_3 <= act_0_247_29 + act_0_519_29 + act_0_631_29 + act_0_634_29;
        s1_4 <= act_0_635_29 + act_0_654_29 + act_0_656_29 + act_0_657_29;
        s1_5 <= act_0_658_29 + act_0_659_29 + act_0_660_29 + act_0_661_29;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_29 <= s2_0 + s2_1;
      end if;
    end process;
    out0_29 <= saturate(sum_0_29, 6);
  end block;

  -- LAYER 0, ch 30
  gen_l0c30 : block
  signal s1_30_pipe : sum_t_0_30;
  signal s2_30_pipe : sum_t_0_30;
  signal sum_0_30 : sum_t_0_30;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_30_pipe <= B_0_30;
        -- Stage 2
        s2_30_pipe <= s1_30_pipe;
        -- Stage 3
        sum_0_30 <= s2_30_pipe;
      end if;
    end process;
    out0_30 <= saturate(sum_0_30, 6);
  end block;

  -- LAYER 0, ch 31
  gen_l0c31 : block
  signal s1_31_pipe : sum_t_0_31;
  signal s2_31_pipe : sum_t_0_31;
  signal sum_0_31 : sum_t_0_31;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_31_pipe <= B_0_31;
        -- Stage 2
        s2_31_pipe <= s1_31_pipe;
        -- Stage 3
        sum_0_31 <= s2_31_pipe;
      end if;
    end process;
    out0_31 <= saturate(sum_0_31, 6);
  end block;

  -- LAYER 0, ch 32
  gen_l0c32 : block
  signal s1_32_pipe : sum_t_0_32;
  signal s2_32_pipe : sum_t_0_32;
  signal sum_0_32 : sum_t_0_32;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_32_pipe <= B_0_32;
        -- Stage 2
        s2_32_pipe <= s1_32_pipe;
        -- Stage 3
        sum_0_32 <= s2_32_pipe;
      end if;
    end process;
    out0_32 <= saturate(sum_0_32, 6);
  end block;

  -- LAYER 0, ch 33
  gen_l0c33 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_33;
  signal s2_0 : sum_t_0_33;
  signal sum_0_33 : sum_t_0_33;
  begin
    i00 : act_0_426_33 <= C_0_426_33 when input(426)(0) = '1' else (others => '0');
    i01 : act_0_427_33 <= C_0_427_33 when input(427)(0) = '1' else (others => '0');
    i02 : act_0_455_33 <= C_0_455_33 when input(455)(0) = '1' else (others => '0');
    i03 : act_0_456_33 <= C_0_456_33 when input(456)(0) = '1' else (others => '0');
    i04 : act_0_457_33 <= C_0_457_33 when input(457)(0) = '1' else (others => '0');
    i05 : act_0_485_33 <= C_0_485_33 when input(485)(0) = '1' else (others => '0');
    i06 : act_0_486_33 <= C_0_486_33 when input(486)(0) = '1' else (others => '0');
    i07 : act_0_487_33 <= C_0_487_33 when input(487)(0) = '1' else (others => '0');
    i08 : act_0_488_33 <= C_0_488_33 when input(488)(0) = '1' else (others => '0');
    i09 : act_0_489_33 <= C_0_489_33 when input(489)(0) = '1' else (others => '0');
    i10 : act_0_490_33 <= C_0_490_33 when input(490)(0) = '1' else (others => '0');
    i11 : act_0_516_33 <= C_0_516_33 when input(516)(0) = '1' else (others => '0');
    i12 : act_0_569_33 <= C_0_569_33 when input(569)(0) = '1' else (others => '0');
    i13 : act_0_571_33 <= C_0_571_33 when input(571)(0) = '1' else (others => '0');
    i14 : act_0_594_33 <= C_0_594_33 when input(594)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_33 + act_0_426_33 + act_0_427_33 + act_0_455_33;
        s1_1 <= act_0_456_33 + act_0_457_33 + act_0_485_33 + act_0_486_33;
        s1_2 <= act_0_487_33 + act_0_488_33 + act_0_489_33 + act_0_490_33;
        s1_3 <= act_0_516_33 + act_0_569_33 + act_0_571_33 + act_0_594_33;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_33 <= s2_0;
      end if;
    end process;
    out0_33 <= saturate(sum_0_33, 6);
  end block;

  -- LAYER 0, ch 34
  gen_l0c34 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_34;
  signal s2_0, s2_1 : sum_t_0_34;
  signal sum_0_34 : sum_t_0_34;
  begin
    i00 : act_0_150_34 <= C_0_150_34 when input(150)(0) = '1' else (others => '0');
    i01 : act_0_238_34 <= C_0_238_34 when input(238)(0) = '1' else (others => '0');
    i02 : act_0_266_34 <= C_0_266_34 when input(266)(0) = '1' else (others => '0');
    i03 : act_0_267_34 <= C_0_267_34 when input(267)(0) = '1' else (others => '0');
    i04 : act_0_294_34 <= C_0_294_34 when input(294)(0) = '1' else (others => '0');
    i05 : act_0_295_34 <= C_0_295_34 when input(295)(0) = '1' else (others => '0');
    i06 : act_0_300_34 <= C_0_300_34 when input(300)(0) = '1' else (others => '0');
    i07 : act_0_317_34 <= C_0_317_34 when input(317)(0) = '1' else (others => '0');
    i08 : act_0_322_34 <= C_0_322_34 when input(322)(0) = '1' else (others => '0');
    i09 : act_0_345_34 <= C_0_345_34 when input(345)(0) = '1' else (others => '0');
    i10 : act_0_490_34 <= C_0_490_34 when input(490)(0) = '1' else (others => '0');
    i11 : act_0_546_34 <= C_0_546_34 when input(546)(0) = '1' else (others => '0');
    i12 : act_0_553_34 <= C_0_553_34 when input(553)(0) = '1' else (others => '0');
    i13 : act_0_554_34 <= C_0_554_34 when input(554)(0) = '1' else (others => '0');
    i14 : act_0_567_34 <= C_0_567_34 when input(567)(0) = '1' else (others => '0');
    i15 : act_0_569_34 <= C_0_569_34 when input(569)(0) = '1' else (others => '0');
    i16 : act_0_580_34 <= C_0_580_34 when input(580)(0) = '1' else (others => '0');
    i17 : act_0_595_34 <= C_0_595_34 when input(595)(0) = '1' else (others => '0');
    i18 : act_0_598_34 <= C_0_598_34 when input(598)(0) = '1' else (others => '0');
    i19 : act_0_608_34 <= C_0_608_34 when input(608)(0) = '1' else (others => '0');
    i20 : act_0_681_34 <= C_0_681_34 when input(681)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_34 + act_0_150_34 + act_0_238_34 + act_0_266_34;
        s1_1 <= act_0_267_34 + act_0_294_34 + act_0_295_34 + act_0_300_34;
        s1_2 <= act_0_317_34 + act_0_322_34 + act_0_345_34 + act_0_490_34;
        s1_3 <= act_0_546_34 + act_0_553_34 + act_0_554_34 + act_0_567_34;
        s1_4 <= act_0_569_34 + act_0_580_34 + act_0_595_34 + act_0_598_34;
        s1_5 <= act_0_608_34 + act_0_681_34;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_34 <= s2_0 + s2_1;
      end if;
    end process;
    out0_34 <= saturate(sum_0_34, 6);
  end block;

  -- LAYER 0, ch 35
  gen_l0c35 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_35;
  signal s2_0 : sum_t_0_35;
  signal sum_0_35 : sum_t_0_35;
  begin
    i00 : act_0_325_35 <= C_0_325_35 when input(325)(0) = '1' else (others => '0');
    i01 : act_0_330_35 <= C_0_330_35 when input(330)(0) = '1' else (others => '0');
    i02 : act_0_358_35 <= C_0_358_35 when input(358)(0) = '1' else (others => '0');
    i03 : act_0_359_35 <= C_0_359_35 when input(359)(0) = '1' else (others => '0');
    i04 : act_0_380_35 <= C_0_380_35 when input(380)(0) = '1' else (others => '0');
    i05 : act_0_414_35 <= C_0_414_35 when input(414)(0) = '1' else (others => '0');
    i06 : act_0_415_35 <= C_0_415_35 when input(415)(0) = '1' else (others => '0');
    i07 : act_0_442_35 <= C_0_442_35 when input(442)(0) = '1' else (others => '0');
    i08 : act_0_568_35 <= C_0_568_35 when input(568)(0) = '1' else (others => '0');
    i09 : act_0_661_35 <= C_0_661_35 when input(661)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_35 + act_0_325_35 + act_0_330_35 + act_0_358_35;
        s1_1 <= act_0_359_35 + act_0_380_35 + act_0_414_35 + act_0_415_35;
        s1_2 <= act_0_442_35 + act_0_568_35 + act_0_661_35;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_35 <= s2_0;
      end if;
    end process;
    out0_35 <= saturate(sum_0_35, 6);
  end block;

  -- LAYER 0, ch 36
  gen_l0c36 : block
  signal s1_0, s1_1 : sum_t_0_36;
  signal s2_0 : sum_t_0_36;
  signal sum_0_36 : sum_t_0_36;
  begin
    i00 : act_0_482_36 <= C_0_482_36 when input(482)(0) = '1' else (others => '0');
    i01 : act_0_509_36 <= C_0_509_36 when input(509)(0) = '1' else (others => '0');
    i02 : act_0_512_36 <= C_0_512_36 when input(512)(0) = '1' else (others => '0');
    i03 : act_0_513_36 <= C_0_513_36 when input(513)(0) = '1' else (others => '0');
    i04 : act_0_514_36 <= C_0_514_36 when input(514)(0) = '1' else (others => '0');
    i05 : act_0_515_36 <= C_0_515_36 when input(515)(0) = '1' else (others => '0');
    i06 : act_0_544_36 <= C_0_544_36 when input(544)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_36 + act_0_482_36 + act_0_509_36 + act_0_512_36;
        s1_1 <= act_0_513_36 + act_0_514_36 + act_0_515_36 + act_0_544_36;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_36 <= s2_0;
      end if;
    end process;
    out0_36 <= saturate(sum_0_36, 6);
  end block;

  -- LAYER 0, ch 37
  gen_l0c37 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_37;
  signal s2_0, s2_1 : sum_t_0_37;
  signal sum_0_37 : sum_t_0_37;
  begin
    i00 : act_0_302_37 <= C_0_302_37 when input(302)(0) = '1' else (others => '0');
    i01 : act_0_323_37 <= C_0_323_37 when input(323)(0) = '1' else (others => '0');
    i02 : act_0_324_37 <= C_0_324_37 when input(324)(0) = '1' else (others => '0');
    i03 : act_0_325_37 <= C_0_325_37 when input(325)(0) = '1' else (others => '0');
    i04 : act_0_353_37 <= C_0_353_37 when input(353)(0) = '1' else (others => '0');
    i05 : act_0_355_37 <= C_0_355_37 when input(355)(0) = '1' else (others => '0');
    i06 : act_0_356_37 <= C_0_356_37 when input(356)(0) = '1' else (others => '0');
    i07 : act_0_357_37 <= C_0_357_37 when input(357)(0) = '1' else (others => '0');
    i08 : act_0_358_37 <= C_0_358_37 when input(358)(0) = '1' else (others => '0');
    i09 : act_0_408_37 <= C_0_408_37 when input(408)(0) = '1' else (others => '0');
    i10 : act_0_463_37 <= C_0_463_37 when input(463)(0) = '1' else (others => '0');
    i11 : act_0_493_37 <= C_0_493_37 when input(493)(0) = '1' else (others => '0');
    i12 : act_0_515_37 <= C_0_515_37 when input(515)(0) = '1' else (others => '0');
    i13 : act_0_516_37 <= C_0_516_37 when input(516)(0) = '1' else (others => '0');
    i14 : act_0_518_37 <= C_0_518_37 when input(518)(0) = '1' else (others => '0');
    i15 : act_0_598_37 <= C_0_598_37 when input(598)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_37 + act_0_302_37 + act_0_323_37 + act_0_324_37;
        s1_1 <= act_0_325_37 + act_0_353_37 + act_0_355_37 + act_0_356_37;
        s1_2 <= act_0_357_37 + act_0_358_37 + act_0_408_37 + act_0_463_37;
        s1_3 <= act_0_493_37 + act_0_515_37 + act_0_516_37 + act_0_518_37;
        s1_4 <= act_0_598_37;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_37 <= s2_0 + s2_1;
      end if;
    end process;
    out0_37 <= saturate(sum_0_37, 6);
  end block;

  -- LAYER 0, ch 38
  gen_l0c38 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_38;
  signal s2_0 : sum_t_0_38;
  signal sum_0_38 : sum_t_0_38;
  begin
    i00 : act_0_126_38 <= C_0_126_38 when input(126)(0) = '1' else (others => '0');
    i01 : act_0_150_38 <= C_0_150_38 when input(150)(0) = '1' else (others => '0');
    i02 : act_0_153_38 <= C_0_153_38 when input(153)(0) = '1' else (others => '0');
    i03 : act_0_181_38 <= C_0_181_38 when input(181)(0) = '1' else (others => '0');
    i04 : act_0_182_38 <= C_0_182_38 when input(182)(0) = '1' else (others => '0');
    i05 : act_0_205_38 <= C_0_205_38 when input(205)(0) = '1' else (others => '0');
    i06 : act_0_209_38 <= C_0_209_38 when input(209)(0) = '1' else (others => '0');
    i07 : act_0_213_38 <= C_0_213_38 when input(213)(0) = '1' else (others => '0');
    i08 : act_0_237_38 <= C_0_237_38 when input(237)(0) = '1' else (others => '0');
    i09 : act_0_265_38 <= C_0_265_38 when input(265)(0) = '1' else (others => '0');
    i10 : act_0_320_38 <= C_0_320_38 when input(320)(0) = '1' else (others => '0');
    i11 : act_0_329_38 <= C_0_329_38 when input(329)(0) = '1' else (others => '0');
    i12 : act_0_442_38 <= C_0_442_38 when input(442)(0) = '1' else (others => '0');
    i13 : act_0_537_38 <= C_0_537_38 when input(537)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_38 + act_0_126_38 + act_0_150_38 + act_0_153_38;
        s1_1 <= act_0_181_38 + act_0_182_38 + act_0_205_38 + act_0_209_38;
        s1_2 <= act_0_213_38 + act_0_237_38 + act_0_265_38 + act_0_320_38;
        s1_3 <= act_0_329_38 + act_0_442_38 + act_0_537_38;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_38 <= s2_0;
      end if;
    end process;
    out0_38 <= saturate(sum_0_38, 6);
  end block;

  -- LAYER 0, ch 39
  gen_l0c39 : block
  signal s1_0, s1_1 : sum_t_0_39;
  signal s2_0 : sum_t_0_39;
  signal sum_0_39 : sum_t_0_39;
  begin
    i00 : act_0_379_39 <= C_0_379_39 when input(379)(0) = '1' else (others => '0');
    i01 : act_0_546_39 <= C_0_546_39 when input(546)(0) = '1' else (others => '0');
    i02 : act_0_679_39 <= C_0_679_39 when input(679)(0) = '1' else (others => '0');
    i03 : act_0_681_39 <= C_0_681_39 when input(681)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_39 + act_0_379_39 + act_0_546_39 + act_0_679_39;
        s1_1 <= act_0_681_39;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_39 <= s2_0;
      end if;
    end process;
    out0_39 <= saturate(sum_0_39, 6);
  end block;

  -- LAYER 0, ch 40
  gen_l0c40 : block
  signal s1_40_pipe : sum_t_0_40;
  signal s2_40_pipe : sum_t_0_40;
  signal sum_0_40 : sum_t_0_40;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_40_pipe <= B_0_40;
        -- Stage 2
        s2_40_pipe <= s1_40_pipe;
        -- Stage 3
        sum_0_40 <= s2_40_pipe;
      end if;
    end process;
    out0_40 <= saturate(sum_0_40, 6);
  end block;

  -- LAYER 0, ch 41
  gen_l0c41 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_41;
  signal s2_0, s2_1 : sum_t_0_41;
  signal sum_0_41 : sum_t_0_41;
  begin
    i00 : act_0_99_41 <= C_0_99_41 when input(99)(0) = '1' else (others => '0');
    i01 : act_0_123_41 <= C_0_123_41 when input(123)(0) = '1' else (others => '0');
    i02 : act_0_124_41 <= C_0_124_41 when input(124)(0) = '1' else (others => '0');
    i03 : act_0_176_41 <= C_0_176_41 when input(176)(0) = '1' else (others => '0');
    i04 : act_0_177_41 <= C_0_177_41 when input(177)(0) = '1' else (others => '0');
    i05 : act_0_287_41 <= C_0_287_41 when input(287)(0) = '1' else (others => '0');
    i06 : act_0_289_41 <= C_0_289_41 when input(289)(0) = '1' else (others => '0');
    i07 : act_0_290_41 <= C_0_290_41 when input(290)(0) = '1' else (others => '0');
    i08 : act_0_291_41 <= C_0_291_41 when input(291)(0) = '1' else (others => '0');
    i09 : act_0_292_41 <= C_0_292_41 when input(292)(0) = '1' else (others => '0');
    i10 : act_0_293_41 <= C_0_293_41 when input(293)(0) = '1' else (others => '0');
    i11 : act_0_314_41 <= C_0_314_41 when input(314)(0) = '1' else (others => '0');
    i12 : act_0_315_41 <= C_0_315_41 when input(315)(0) = '1' else (others => '0');
    i13 : act_0_316_41 <= C_0_316_41 when input(316)(0) = '1' else (others => '0');
    i14 : act_0_317_41 <= C_0_317_41 when input(317)(0) = '1' else (others => '0');
    i15 : act_0_342_41 <= C_0_342_41 when input(342)(0) = '1' else (others => '0');
    i16 : act_0_371_41 <= C_0_371_41 when input(371)(0) = '1' else (others => '0');
    i17 : act_0_372_41 <= C_0_372_41 when input(372)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_41 + act_0_99_41 + act_0_123_41 + act_0_124_41;
        s1_1 <= act_0_176_41 + act_0_177_41 + act_0_287_41 + act_0_289_41;
        s1_2 <= act_0_290_41 + act_0_291_41 + act_0_292_41 + act_0_293_41;
        s1_3 <= act_0_314_41 + act_0_315_41 + act_0_316_41 + act_0_317_41;
        s1_4 <= act_0_342_41 + act_0_371_41 + act_0_372_41;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_41 <= s2_0 + s2_1;
      end if;
    end process;
    out0_41 <= saturate(sum_0_41, 6);
  end block;

  -- LAYER 0, ch 42
  gen_l0c42 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_42;
  signal s2_0 : sum_t_0_42;
  signal sum_0_42 : sum_t_0_42;
  begin
    i00 : act_0_202_42 <= C_0_202_42 when input(202)(0) = '1' else (others => '0');
    i01 : act_0_247_42 <= C_0_247_42 when input(247)(0) = '1' else (others => '0');
    i02 : act_0_272_42 <= C_0_272_42 when input(272)(0) = '1' else (others => '0');
    i03 : act_0_285_42 <= C_0_285_42 when input(285)(0) = '1' else (others => '0');
    i04 : act_0_356_42 <= C_0_356_42 when input(356)(0) = '1' else (others => '0');
    i05 : act_0_516_42 <= C_0_516_42 when input(516)(0) = '1' else (others => '0');
    i06 : act_0_517_42 <= C_0_517_42 when input(517)(0) = '1' else (others => '0');
    i07 : act_0_654_42 <= C_0_654_42 when input(654)(0) = '1' else (others => '0');
    i08 : act_0_713_42 <= C_0_713_42 when input(713)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_42 + act_0_202_42 + act_0_247_42 + act_0_272_42;
        s1_1 <= act_0_285_42 + act_0_356_42 + act_0_516_42 + act_0_517_42;
        s1_2 <= act_0_654_42 + act_0_713_42;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_42 <= s2_0;
      end if;
    end process;
    out0_42 <= saturate(sum_0_42, 6);
  end block;

  -- LAYER 0, ch 43
  gen_l0c43 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_43;
  signal s2_0 : sum_t_0_43;
  signal sum_0_43 : sum_t_0_43;
  begin
    i00 : act_0_129_43 <= C_0_129_43 when input(129)(0) = '1' else (others => '0');
    i01 : act_0_209_43 <= C_0_209_43 when input(209)(0) = '1' else (others => '0');
    i02 : act_0_219_43 <= C_0_219_43 when input(219)(0) = '1' else (others => '0');
    i03 : act_0_538_43 <= C_0_538_43 when input(538)(0) = '1' else (others => '0');
    i04 : act_0_545_43 <= C_0_545_43 when input(545)(0) = '1' else (others => '0');
    i05 : act_0_567_43 <= C_0_567_43 when input(567)(0) = '1' else (others => '0');
    i06 : act_0_568_43 <= C_0_568_43 when input(568)(0) = '1' else (others => '0');
    i07 : act_0_570_43 <= C_0_570_43 when input(570)(0) = '1' else (others => '0');
    i08 : act_0_571_43 <= C_0_571_43 when input(571)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_43 + act_0_129_43 + act_0_209_43 + act_0_219_43;
        s1_1 <= act_0_538_43 + act_0_545_43 + act_0_567_43 + act_0_568_43;
        s1_2 <= act_0_570_43 + act_0_571_43;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_43 <= s2_0;
      end if;
    end process;
    out0_43 <= saturate(sum_0_43, 6);
  end block;

  -- LAYER 0, ch 44
  gen_l0c44 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6 : sum_t_0_44;
  signal s2_0, s2_1 : sum_t_0_44;
  signal sum_0_44 : sum_t_0_44;
  begin
    i00 : act_0_124_44 <= C_0_124_44 when input(124)(0) = '1' else (others => '0');
    i01 : act_0_270_44 <= C_0_270_44 when input(270)(0) = '1' else (others => '0');
    i02 : act_0_397_44 <= C_0_397_44 when input(397)(0) = '1' else (others => '0');
    i03 : act_0_409_44 <= C_0_409_44 when input(409)(0) = '1' else (others => '0');
    i04 : act_0_413_44 <= C_0_413_44 when input(413)(0) = '1' else (others => '0');
    i05 : act_0_414_44 <= C_0_414_44 when input(414)(0) = '1' else (others => '0');
    i06 : act_0_430_44 <= C_0_430_44 when input(430)(0) = '1' else (others => '0');
    i07 : act_0_438_44 <= C_0_438_44 when input(438)(0) = '1' else (others => '0');
    i08 : act_0_439_44 <= C_0_439_44 when input(439)(0) = '1' else (others => '0');
    i09 : act_0_440_44 <= C_0_440_44 when input(440)(0) = '1' else (others => '0');
    i10 : act_0_441_44 <= C_0_441_44 when input(441)(0) = '1' else (others => '0');
    i11 : act_0_463_44 <= C_0_463_44 when input(463)(0) = '1' else (others => '0');
    i12 : act_0_467_44 <= C_0_467_44 when input(467)(0) = '1' else (others => '0');
    i13 : act_0_550_44 <= C_0_550_44 when input(550)(0) = '1' else (others => '0');
    i14 : act_0_554_44 <= C_0_554_44 when input(554)(0) = '1' else (others => '0');
    i15 : act_0_580_44 <= C_0_580_44 when input(580)(0) = '1' else (others => '0');
    i16 : act_0_581_44 <= C_0_581_44 when input(581)(0) = '1' else (others => '0');
    i17 : act_0_609_44 <= C_0_609_44 when input(609)(0) = '1' else (others => '0');
    i18 : act_0_657_44 <= C_0_657_44 when input(657)(0) = '1' else (others => '0');
    i19 : act_0_658_44 <= C_0_658_44 when input(658)(0) = '1' else (others => '0');
    i20 : act_0_683_44 <= C_0_683_44 when input(683)(0) = '1' else (others => '0');
    i21 : act_0_684_44 <= C_0_684_44 when input(684)(0) = '1' else (others => '0');
    i22 : act_0_685_44 <= C_0_685_44 when input(685)(0) = '1' else (others => '0');
    i23 : act_0_686_44 <= C_0_686_44 when input(686)(0) = '1' else (others => '0');
    i24 : act_0_687_44 <= C_0_687_44 when input(687)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_44 + act_0_124_44 + act_0_270_44 + act_0_397_44;
        s1_1 <= act_0_409_44 + act_0_413_44 + act_0_414_44 + act_0_430_44;
        s1_2 <= act_0_438_44 + act_0_439_44 + act_0_440_44 + act_0_441_44;
        s1_3 <= act_0_463_44 + act_0_467_44 + act_0_550_44 + act_0_554_44;
        s1_4 <= act_0_580_44 + act_0_581_44 + act_0_609_44 + act_0_657_44;
        s1_5 <= act_0_658_44 + act_0_683_44 + act_0_684_44 + act_0_685_44;
        s1_6 <= act_0_686_44 + act_0_687_44;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5 + s1_6;
        -- Stage 3
        sum_0_44 <= s2_0 + s2_1;
      end if;
    end process;
    out0_44 <= saturate(sum_0_44, 6);
  end block;

  -- LAYER 0, ch 45
  gen_l0c45 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_45;
  signal s2_0 : sum_t_0_45;
  signal sum_0_45 : sum_t_0_45;
  begin
    i00 : act_0_294_45 <= C_0_294_45 when input(294)(0) = '1' else (others => '0');
    i01 : act_0_320_45 <= C_0_320_45 when input(320)(0) = '1' else (others => '0');
    i02 : act_0_321_45 <= C_0_321_45 when input(321)(0) = '1' else (others => '0');
    i03 : act_0_342_45 <= C_0_342_45 when input(342)(0) = '1' else (others => '0');
    i04 : act_0_344_45 <= C_0_344_45 when input(344)(0) = '1' else (others => '0');
    i05 : act_0_345_45 <= C_0_345_45 when input(345)(0) = '1' else (others => '0');
    i06 : act_0_346_45 <= C_0_346_45 when input(346)(0) = '1' else (others => '0');
    i07 : act_0_347_45 <= C_0_347_45 when input(347)(0) = '1' else (others => '0');
    i08 : act_0_348_45 <= C_0_348_45 when input(348)(0) = '1' else (others => '0');
    i09 : act_0_370_45 <= C_0_370_45 when input(370)(0) = '1' else (others => '0');
    i10 : act_0_371_45 <= C_0_371_45 when input(371)(0) = '1' else (others => '0');
    i11 : act_0_372_45 <= C_0_372_45 when input(372)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_45 + act_0_294_45 + act_0_320_45 + act_0_321_45;
        s1_1 <= act_0_342_45 + act_0_344_45 + act_0_345_45 + act_0_346_45;
        s1_2 <= act_0_347_45 + act_0_348_45 + act_0_370_45 + act_0_371_45;
        s1_3 <= act_0_372_45;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_45 <= s2_0;
      end if;
    end process;
    out0_45 <= saturate(sum_0_45, 6);
  end block;

  -- LAYER 0, ch 46
  gen_l0c46 : block
  signal s1_46_pipe : sum_t_0_46;
  signal s2_46_pipe : sum_t_0_46;
  signal sum_0_46 : sum_t_0_46;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_46_pipe <= B_0_46;
        -- Stage 2
        s2_46_pipe <= s1_46_pipe;
        -- Stage 3
        sum_0_46 <= s2_46_pipe;
      end if;
    end process;
    out0_46 <= saturate(sum_0_46, 6);
  end block;

  -- LAYER 0, ch 47
  gen_l0c47 : block
  signal s1_0 : sum_t_0_47;
  signal s2_47_pipe : sum_t_0_47;
  signal sum_0_47 : sum_t_0_47;
  begin
    i00 : act_0_351_47 <= C_0_351_47 when input(351)(0) = '1' else (others => '0');
    i01 : act_0_406_47 <= C_0_406_47 when input(406)(0) = '1' else (others => '0');
    i02 : act_0_434_47 <= C_0_434_47 when input(434)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_47 + act_0_351_47 + act_0_406_47 + act_0_434_47;
        -- Stage 2
        s2_47_pipe <= s1_0;
        -- Stage 3
        sum_0_47 <= s2_47_pipe;
      end if;
    end process;
    out0_47 <= saturate(sum_0_47, 6);
  end block;

  -- LAYER 0, ch 48
  gen_l0c48 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_48;
  signal s2_0 : sum_t_0_48;
  signal sum_0_48 : sum_t_0_48;
  begin
    i00 : act_0_322_48 <= C_0_322_48 when input(322)(0) = '1' else (others => '0');
    i01 : act_0_350_48 <= C_0_350_48 when input(350)(0) = '1' else (others => '0');
    i02 : act_0_377_48 <= C_0_377_48 when input(377)(0) = '1' else (others => '0');
    i03 : act_0_378_48 <= C_0_378_48 when input(378)(0) = '1' else (others => '0');
    i04 : act_0_405_48 <= C_0_405_48 when input(405)(0) = '1' else (others => '0');
    i05 : act_0_432_48 <= C_0_432_48 when input(432)(0) = '1' else (others => '0');
    i06 : act_0_459_48 <= C_0_459_48 when input(459)(0) = '1' else (others => '0');
    i07 : act_0_460_48 <= C_0_460_48 when input(460)(0) = '1' else (others => '0');
    i08 : act_0_487_48 <= C_0_487_48 when input(487)(0) = '1' else (others => '0');
    i09 : act_0_516_48 <= C_0_516_48 when input(516)(0) = '1' else (others => '0');
    i10 : act_0_544_48 <= C_0_544_48 when input(544)(0) = '1' else (others => '0');
    i11 : act_0_626_48 <= C_0_626_48 when input(626)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_48 + act_0_322_48 + act_0_350_48 + act_0_377_48;
        s1_1 <= act_0_378_48 + act_0_405_48 + act_0_432_48 + act_0_459_48;
        s1_2 <= act_0_460_48 + act_0_487_48 + act_0_516_48 + act_0_544_48;
        s1_3 <= act_0_626_48;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_48 <= s2_0;
      end if;
    end process;
    out0_48 <= saturate(sum_0_48, 6);
  end block;

  -- LAYER 0, ch 49
  gen_l0c49 : block
  signal s1_0, s1_1 : sum_t_0_49;
  signal s2_0 : sum_t_0_49;
  signal sum_0_49 : sum_t_0_49;
  begin
    i00 : act_0_66_49 <= C_0_66_49 when input(66)(0) = '1' else (others => '0');
    i01 : act_0_199_49 <= C_0_199_49 when input(199)(0) = '1' else (others => '0');
    i02 : act_0_537_49 <= C_0_537_49 when input(537)(0) = '1' else (others => '0');
    i03 : act_0_740_49 <= C_0_740_49 when input(740)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_49 + act_0_66_49 + act_0_199_49 + act_0_537_49;
        s1_1 <= act_0_740_49;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_49 <= s2_0;
      end if;
    end process;
    out0_49 <= saturate(sum_0_49, 6);
  end block;

  -- LAYER 0, ch 50
  gen_l0c50 : block
  signal s1_50_pipe : sum_t_0_50;
  signal s2_50_pipe : sum_t_0_50;
  signal sum_0_50 : sum_t_0_50;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_50_pipe <= B_0_50;
        -- Stage 2
        s2_50_pipe <= s1_50_pipe;
        -- Stage 3
        sum_0_50 <= s2_50_pipe;
      end if;
    end process;
    out0_50 <= saturate(sum_0_50, 6);
  end block;

  -- LAYER 0, ch 51
  gen_l0c51 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_51;
  signal s2_0, s2_1 : sum_t_0_51;
  signal sum_0_51 : sum_t_0_51;
  begin
    i00 : act_0_158_51 <= C_0_158_51 when input(158)(0) = '1' else (others => '0');
    i01 : act_0_398_51 <= C_0_398_51 when input(398)(0) = '1' else (others => '0');
    i02 : act_0_412_51 <= C_0_412_51 when input(412)(0) = '1' else (others => '0');
    i03 : act_0_440_51 <= C_0_440_51 when input(440)(0) = '1' else (others => '0');
    i04 : act_0_491_51 <= C_0_491_51 when input(491)(0) = '1' else (others => '0');
    i05 : act_0_548_51 <= C_0_548_51 when input(548)(0) = '1' else (others => '0');
    i06 : act_0_627_51 <= C_0_627_51 when input(627)(0) = '1' else (others => '0');
    i07 : act_0_629_51 <= C_0_629_51 when input(629)(0) = '1' else (others => '0');
    i08 : act_0_634_51 <= C_0_634_51 when input(634)(0) = '1' else (others => '0');
    i09 : act_0_652_51 <= C_0_652_51 when input(652)(0) = '1' else (others => '0');
    i10 : act_0_657_51 <= C_0_657_51 when input(657)(0) = '1' else (others => '0');
    i11 : act_0_658_51 <= C_0_658_51 when input(658)(0) = '1' else (others => '0');
    i12 : act_0_659_51 <= C_0_659_51 when input(659)(0) = '1' else (others => '0');
    i13 : act_0_660_51 <= C_0_660_51 when input(660)(0) = '1' else (others => '0');
    i14 : act_0_662_51 <= C_0_662_51 when input(662)(0) = '1' else (others => '0');
    i15 : act_0_682_51 <= C_0_682_51 when input(682)(0) = '1' else (others => '0');
    i16 : act_0_684_51 <= C_0_684_51 when input(684)(0) = '1' else (others => '0');
    i17 : act_0_688_51 <= C_0_688_51 when input(688)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_51 + act_0_158_51 + act_0_398_51 + act_0_412_51;
        s1_1 <= act_0_440_51 + act_0_491_51 + act_0_548_51 + act_0_627_51;
        s1_2 <= act_0_629_51 + act_0_634_51 + act_0_652_51 + act_0_657_51;
        s1_3 <= act_0_658_51 + act_0_659_51 + act_0_660_51 + act_0_662_51;
        s1_4 <= act_0_682_51 + act_0_684_51 + act_0_688_51;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_51 <= s2_0 + s2_1;
      end if;
    end process;
    out0_51 <= saturate(sum_0_51, 6);
  end block;

  -- LAYER 0, ch 52
  gen_l0c52 : block
  signal s1_0, s1_1 : sum_t_0_52;
  signal s2_0 : sum_t_0_52;
  signal sum_0_52 : sum_t_0_52;
  begin
    i00 : act_0_38_52 <= C_0_38_52 when input(38)(0) = '1' else (others => '0');
    i01 : act_0_305_52 <= C_0_305_52 when input(305)(0) = '1' else (others => '0');
    i02 : act_0_368_52 <= C_0_368_52 when input(368)(0) = '1' else (others => '0');
    i03 : act_0_472_52 <= C_0_472_52 when input(472)(0) = '1' else (others => '0');
    i04 : act_0_559_52 <= C_0_559_52 when input(559)(0) = '1' else (others => '0');
    i05 : act_0_737_52 <= C_0_737_52 when input(737)(0) = '1' else (others => '0');
    i06 : act_0_769_52 <= C_0_769_52 when input(769)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_52 + act_0_38_52 + act_0_305_52 + act_0_368_52;
        s1_1 <= act_0_472_52 + act_0_559_52 + act_0_737_52 + act_0_769_52;
        -- Stage 2
        s2_0 <= s1_0 + s1_1;
        -- Stage 3
        sum_0_52 <= s2_0;
      end if;
    end process;
    out0_52 <= saturate(sum_0_52, 6);
  end block;

  -- LAYER 0, ch 53
  gen_l0c53 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_0_53;
  signal s2_0, s2_1 : sum_t_0_53;
  signal sum_0_53 : sum_t_0_53;
  begin
    i00 : act_0_125_53 <= C_0_125_53 when input(125)(0) = '1' else (others => '0');
    i01 : act_0_352_53 <= C_0_352_53 when input(352)(0) = '1' else (others => '0');
    i02 : act_0_407_53 <= C_0_407_53 when input(407)(0) = '1' else (others => '0');
    i03 : act_0_435_53 <= C_0_435_53 when input(435)(0) = '1' else (others => '0');
    i04 : act_0_464_53 <= C_0_464_53 when input(464)(0) = '1' else (others => '0');
    i05 : act_0_483_53 <= C_0_483_53 when input(483)(0) = '1' else (others => '0');
    i06 : act_0_510_53 <= C_0_510_53 when input(510)(0) = '1' else (others => '0');
    i07 : act_0_512_53 <= C_0_512_53 when input(512)(0) = '1' else (others => '0');
    i08 : act_0_514_53 <= C_0_514_53 when input(514)(0) = '1' else (others => '0');
    i09 : act_0_525_53 <= C_0_525_53 when input(525)(0) = '1' else (others => '0');
    i10 : act_0_538_53 <= C_0_538_53 when input(538)(0) = '1' else (others => '0');
    i11 : act_0_539_53 <= C_0_539_53 when input(539)(0) = '1' else (others => '0');
    i12 : act_0_540_53 <= C_0_540_53 when input(540)(0) = '1' else (others => '0');
    i13 : act_0_548_53 <= C_0_548_53 when input(548)(0) = '1' else (others => '0');
    i14 : act_0_549_53 <= C_0_549_53 when input(549)(0) = '1' else (others => '0');
    i15 : act_0_550_53 <= C_0_550_53 when input(550)(0) = '1' else (others => '0');
    i16 : act_0_551_53 <= C_0_551_53 when input(551)(0) = '1' else (others => '0');
    i17 : act_0_552_53 <= C_0_552_53 when input(552)(0) = '1' else (others => '0');
    i18 : act_0_553_53 <= C_0_553_53 when input(553)(0) = '1' else (others => '0');
    i19 : act_0_566_53 <= C_0_566_53 when input(566)(0) = '1' else (others => '0');
    i20 : act_0_578_53 <= C_0_578_53 when input(578)(0) = '1' else (others => '0');
    i21 : act_0_580_53 <= C_0_580_53 when input(580)(0) = '1' else (others => '0');
    i22 : act_0_608_53 <= C_0_608_53 when input(608)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_53 + act_0_125_53 + act_0_352_53 + act_0_407_53;
        s1_1 <= act_0_435_53 + act_0_464_53 + act_0_483_53 + act_0_510_53;
        s1_2 <= act_0_512_53 + act_0_514_53 + act_0_525_53 + act_0_538_53;
        s1_3 <= act_0_539_53 + act_0_540_53 + act_0_548_53 + act_0_549_53;
        s1_4 <= act_0_550_53 + act_0_551_53 + act_0_552_53 + act_0_553_53;
        s1_5 <= act_0_566_53 + act_0_578_53 + act_0_580_53 + act_0_608_53;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_0_53 <= s2_0 + s2_1;
      end if;
    end process;
    out0_53 <= saturate(sum_0_53, 6);
  end block;

  -- LAYER 0, ch 54
  gen_l0c54 : block
  signal s1_54_pipe : sum_t_0_54;
  signal s2_54_pipe : sum_t_0_54;
  signal sum_0_54 : sum_t_0_54;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_54_pipe <= B_0_54;
        -- Stage 2
        s2_54_pipe <= s1_54_pipe;
        -- Stage 3
        sum_0_54 <= s2_54_pipe;
      end if;
    end process;
    out0_54 <= saturate(sum_0_54, 6);
  end block;

  -- LAYER 0, ch 55
  gen_l0c55 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6, s1_7, s1_8 : sum_t_0_55;
  signal s2_0, s2_1, s2_2 : sum_t_0_55;
  signal sum_0_55 : sum_t_0_55;
  begin
    i00 : act_0_124_55 <= C_0_124_55 when input(124)(0) = '1' else (others => '0');
    i01 : act_0_128_55 <= C_0_128_55 when input(128)(0) = '1' else (others => '0');
    i02 : act_0_150_55 <= C_0_150_55 when input(150)(0) = '1' else (others => '0');
    i03 : act_0_151_55 <= C_0_151_55 when input(151)(0) = '1' else (others => '0');
    i04 : act_0_157_55 <= C_0_157_55 when input(157)(0) = '1' else (others => '0');
    i05 : act_0_178_55 <= C_0_178_55 when input(178)(0) = '1' else (others => '0');
    i06 : act_0_205_55 <= C_0_205_55 when input(205)(0) = '1' else (others => '0');
    i07 : act_0_216_55 <= C_0_216_55 when input(216)(0) = '1' else (others => '0');
    i08 : act_0_232_55 <= C_0_232_55 when input(232)(0) = '1' else (others => '0');
    i09 : act_0_233_55 <= C_0_233_55 when input(233)(0) = '1' else (others => '0');
    i10 : act_0_269_55 <= C_0_269_55 when input(269)(0) = '1' else (others => '0');
    i11 : act_0_288_55 <= C_0_288_55 when input(288)(0) = '1' else (others => '0');
    i12 : act_0_293_55 <= C_0_293_55 when input(293)(0) = '1' else (others => '0');
    i13 : act_0_316_55 <= C_0_316_55 when input(316)(0) = '1' else (others => '0');
    i14 : act_0_343_55 <= C_0_343_55 when input(343)(0) = '1' else (others => '0');
    i15 : act_0_371_55 <= C_0_371_55 when input(371)(0) = '1' else (others => '0');
    i16 : act_0_378_55 <= C_0_378_55 when input(378)(0) = '1' else (others => '0');
    i17 : act_0_403_55 <= C_0_403_55 when input(403)(0) = '1' else (others => '0');
    i18 : act_0_431_55 <= C_0_431_55 when input(431)(0) = '1' else (others => '0');
    i19 : act_0_438_55 <= C_0_438_55 when input(438)(0) = '1' else (others => '0');
    i20 : act_0_459_55 <= C_0_459_55 when input(459)(0) = '1' else (others => '0');
    i21 : act_0_482_55 <= C_0_482_55 when input(482)(0) = '1' else (others => '0');
    i22 : act_0_483_55 <= C_0_483_55 when input(483)(0) = '1' else (others => '0');
    i23 : act_0_490_55 <= C_0_490_55 when input(490)(0) = '1' else (others => '0');
    i24 : act_0_509_55 <= C_0_509_55 when input(509)(0) = '1' else (others => '0');
    i25 : act_0_510_55 <= C_0_510_55 when input(510)(0) = '1' else (others => '0');
    i26 : act_0_511_55 <= C_0_511_55 when input(511)(0) = '1' else (others => '0');
    i27 : act_0_514_55 <= C_0_514_55 when input(514)(0) = '1' else (others => '0');
    i28 : act_0_517_55 <= C_0_517_55 when input(517)(0) = '1' else (others => '0');
    i29 : act_0_543_55 <= C_0_543_55 when input(543)(0) = '1' else (others => '0');
    i30 : act_0_567_55 <= C_0_567_55 when input(567)(0) = '1' else (others => '0');
    i31 : act_0_595_55 <= C_0_595_55 when input(595)(0) = '1' else (others => '0');
    i32 : act_0_601_55 <= C_0_601_55 when input(601)(0) = '1' else (others => '0');
    i33 : act_0_624_55 <= C_0_624_55 when input(624)(0) = '1' else (others => '0');
    i34 : act_0_631_55 <= C_0_631_55 when input(631)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_55 + act_0_124_55 + act_0_128_55 + act_0_150_55;
        s1_1 <= act_0_151_55 + act_0_157_55 + act_0_178_55 + act_0_205_55;
        s1_2 <= act_0_216_55 + act_0_232_55 + act_0_233_55 + act_0_269_55;
        s1_3 <= act_0_288_55 + act_0_293_55 + act_0_316_55 + act_0_343_55;
        s1_4 <= act_0_371_55 + act_0_378_55 + act_0_403_55 + act_0_431_55;
        s1_5 <= act_0_438_55 + act_0_459_55 + act_0_482_55 + act_0_483_55;
        s1_6 <= act_0_490_55 + act_0_509_55 + act_0_510_55 + act_0_511_55;
        s1_7 <= act_0_514_55 + act_0_517_55 + act_0_543_55 + act_0_567_55;
        s1_8 <= act_0_595_55 + act_0_601_55 + act_0_624_55 + act_0_631_55;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5 + s1_6 + s1_7;
        s2_2 <= s1_8;
        -- Stage 3
        sum_0_55 <= s2_0 + s2_1 + s2_2;
      end if;
    end process;
    out0_55 <= saturate(sum_0_55, 6);
  end block;

  -- LAYER 0, ch 56
  gen_l0c56 : block
  signal s1_56_pipe : sum_t_0_56;
  signal s2_56_pipe : sum_t_0_56;
  signal sum_0_56 : sum_t_0_56;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_56_pipe <= B_0_56;
        -- Stage 2
        s2_56_pipe <= s1_56_pipe;
        -- Stage 3
        sum_0_56 <= s2_56_pipe;
      end if;
    end process;
    out0_56 <= saturate(sum_0_56, 6);
  end block;

  -- LAYER 0, ch 57
  gen_l0c57 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_57;
  signal s2_0 : sum_t_0_57;
  signal sum_0_57 : sum_t_0_57;
  begin
    i00 : act_0_150_57 <= C_0_150_57 when input(150)(0) = '1' else (others => '0');
    i01 : act_0_230_57 <= C_0_230_57 when input(230)(0) = '1' else (others => '0');
    i02 : act_0_245_57 <= C_0_245_57 when input(245)(0) = '1' else (others => '0');
    i03 : act_0_287_57 <= C_0_287_57 when input(287)(0) = '1' else (others => '0');
    i04 : act_0_373_57 <= C_0_373_57 when input(373)(0) = '1' else (others => '0');
    i05 : act_0_608_57 <= C_0_608_57 when input(608)(0) = '1' else (others => '0');
    i06 : act_0_629_57 <= C_0_629_57 when input(629)(0) = '1' else (others => '0');
    i07 : act_0_652_57 <= C_0_652_57 when input(652)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_57 + act_0_150_57 + act_0_230_57 + act_0_245_57;
        s1_1 <= act_0_287_57 + act_0_373_57 + act_0_608_57 + act_0_629_57;
        s1_2 <= act_0_652_57;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_57 <= s2_0;
      end if;
    end process;
    out0_57 <= saturate(sum_0_57, 6);
  end block;

  -- LAYER 0, ch 58
  gen_l0c58 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_0_58;
  signal s2_0, s2_1 : sum_t_0_58;
  signal sum_0_58 : sum_t_0_58;
  begin
    i00 : act_0_129_58 <= C_0_129_58 when input(129)(0) = '1' else (others => '0');
    i01 : act_0_157_58 <= C_0_157_58 when input(157)(0) = '1' else (others => '0');
    i02 : act_0_158_58 <= C_0_158_58 when input(158)(0) = '1' else (others => '0');
    i03 : act_0_184_58 <= C_0_184_58 when input(184)(0) = '1' else (others => '0');
    i04 : act_0_185_58 <= C_0_185_58 when input(185)(0) = '1' else (others => '0');
    i05 : act_0_188_58 <= C_0_188_58 when input(188)(0) = '1' else (others => '0');
    i06 : act_0_205_58 <= C_0_205_58 when input(205)(0) = '1' else (others => '0');
    i07 : act_0_212_58 <= C_0_212_58 when input(212)(0) = '1' else (others => '0');
    i08 : act_0_213_58 <= C_0_213_58 when input(213)(0) = '1' else (others => '0');
    i09 : act_0_240_58 <= C_0_240_58 when input(240)(0) = '1' else (others => '0');
    i10 : act_0_267_58 <= C_0_267_58 when input(267)(0) = '1' else (others => '0');
    i11 : act_0_268_58 <= C_0_268_58 when input(268)(0) = '1' else (others => '0');
    i12 : act_0_326_58 <= C_0_326_58 when input(326)(0) = '1' else (others => '0');
    i13 : act_0_329_58 <= C_0_329_58 when input(329)(0) = '1' else (others => '0');
    i14 : act_0_517_58 <= C_0_517_58 when input(517)(0) = '1' else (others => '0');
    i15 : act_0_573_58 <= C_0_573_58 when input(573)(0) = '1' else (others => '0');
    i16 : act_0_635_58 <= C_0_635_58 when input(635)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_58 + act_0_129_58 + act_0_157_58 + act_0_158_58;
        s1_1 <= act_0_184_58 + act_0_185_58 + act_0_188_58 + act_0_205_58;
        s1_2 <= act_0_212_58 + act_0_213_58 + act_0_240_58 + act_0_267_58;
        s1_3 <= act_0_268_58 + act_0_326_58 + act_0_329_58 + act_0_517_58;
        s1_4 <= act_0_573_58 + act_0_635_58;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_0_58 <= s2_0 + s2_1;
      end if;
    end process;
    out0_58 <= saturate(sum_0_58, 6);
  end block;

  -- LAYER 0, ch 59
  gen_l0c59 : block
  signal s1_59_pipe : sum_t_0_59;
  signal s2_59_pipe : sum_t_0_59;
  signal sum_0_59 : sum_t_0_59;
  begin
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_59_pipe <= B_0_59;
        -- Stage 2
        s2_59_pipe <= s1_59_pipe;
        -- Stage 3
        sum_0_59 <= s2_59_pipe;
      end if;
    end process;
    out0_59 <= saturate(sum_0_59, 6);
  end block;

  -- LAYER 0, ch 60
  gen_l0c60 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_0_60;
  signal s2_0 : sum_t_0_60;
  signal sum_0_60 : sum_t_0_60;
  begin
    i00 : act_0_126_60 <= C_0_126_60 when input(126)(0) = '1' else (others => '0');
    i01 : act_0_205_60 <= C_0_205_60 when input(205)(0) = '1' else (others => '0');
    i02 : act_0_262_60 <= C_0_262_60 when input(262)(0) = '1' else (others => '0');
    i03 : act_0_290_60 <= C_0_290_60 when input(290)(0) = '1' else (others => '0');
    i04 : act_0_345_60 <= C_0_345_60 when input(345)(0) = '1' else (others => '0');
    i05 : act_0_350_60 <= C_0_350_60 when input(350)(0) = '1' else (others => '0');
    i06 : act_0_374_60 <= C_0_374_60 when input(374)(0) = '1' else (others => '0');
    i07 : act_0_402_60 <= C_0_402_60 when input(402)(0) = '1' else (others => '0');
    i08 : act_0_413_60 <= C_0_413_60 when input(413)(0) = '1' else (others => '0');
    i09 : act_0_433_60 <= C_0_433_60 when input(433)(0) = '1' else (others => '0');
    i10 : act_0_461_60 <= C_0_461_60 when input(461)(0) = '1' else (others => '0');
    i11 : act_0_470_60 <= C_0_470_60 when input(470)(0) = '1' else (others => '0');
    i12 : act_0_498_60 <= C_0_498_60 when input(498)(0) = '1' else (others => '0');
    i13 : act_0_516_60 <= C_0_516_60 when input(516)(0) = '1' else (others => '0');
    i14 : act_0_553_60 <= C_0_553_60 when input(553)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_60 + act_0_126_60 + act_0_205_60 + act_0_262_60;
        s1_1 <= act_0_290_60 + act_0_345_60 + act_0_350_60 + act_0_374_60;
        s1_2 <= act_0_402_60 + act_0_413_60 + act_0_433_60 + act_0_461_60;
        s1_3 <= act_0_470_60 + act_0_498_60 + act_0_516_60 + act_0_553_60;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_0_60 <= s2_0;
      end if;
    end process;
    out0_60 <= saturate(sum_0_60, 6);
  end block;

  -- LAYER 0, ch 61
  gen_l0c61 : block
  signal s1_0, s1_1, s1_2 : sum_t_0_61;
  signal s2_0 : sum_t_0_61;
  signal sum_0_61 : sum_t_0_61;
  begin
    i00 : act_0_149_61 <= C_0_149_61 when input(149)(0) = '1' else (others => '0');
    i01 : act_0_150_61 <= C_0_150_61 when input(150)(0) = '1' else (others => '0');
    i02 : act_0_152_61 <= C_0_152_61 when input(152)(0) = '1' else (others => '0');
    i03 : act_0_153_61 <= C_0_153_61 when input(153)(0) = '1' else (others => '0');
    i04 : act_0_155_61 <= C_0_155_61 when input(155)(0) = '1' else (others => '0');
    i05 : act_0_157_61 <= C_0_157_61 when input(157)(0) = '1' else (others => '0');
    i06 : act_0_158_61 <= C_0_158_61 when input(158)(0) = '1' else (others => '0');
    i07 : act_0_159_61 <= C_0_159_61 when input(159)(0) = '1' else (others => '0');
    i08 : act_0_190_61 <= C_0_190_61 when input(190)(0) = '1' else (others => '0');
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= B_0_61 + act_0_149_61 + act_0_150_61 + act_0_152_61;
        s1_1 <= act_0_153_61 + act_0_155_61 + act_0_157_61 + act_0_158_61;
        s1_2 <= act_0_159_61 + act_0_190_61;
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2;
        -- Stage 3
        sum_0_61 <= s2_0;
      end if;
    end process;
    out0_61 <= saturate(sum_0_61, 6);
  end block;

  -- Register block for layer 0
  out_layer0_reg : process(clk)
    begin
      if rising_edge(clk) then
        out0_0_reg <= out0_0;
        out0_1_reg <= out0_1;
        out0_2_reg <= out0_2;
        out0_3_reg <= out0_3;
        out0_4_reg <= out0_4;
        out0_5_reg <= out0_5;
        out0_6_reg <= out0_6;
        out0_7_reg <= out0_7;
        out0_8_reg <= out0_8;
        out0_9_reg <= out0_9;
        out0_10_reg <= out0_10;
        out0_11_reg <= out0_11;
        out0_12_reg <= out0_12;
        out0_13_reg <= out0_13;
        out0_14_reg <= out0_14;
        out0_15_reg <= out0_15;
        out0_16_reg <= out0_16;
        out0_17_reg <= out0_17;
        out0_18_reg <= out0_18;
        out0_19_reg <= out0_19;
        out0_20_reg <= out0_20;
        out0_21_reg <= out0_21;
        out0_22_reg <= out0_22;
        out0_23_reg <= out0_23;
        out0_24_reg <= out0_24;
        out0_25_reg <= out0_25;
        out0_26_reg <= out0_26;
        out0_27_reg <= out0_27;
        out0_28_reg <= out0_28;
        out0_29_reg <= out0_29;
        out0_30_reg <= out0_30;
        out0_31_reg <= out0_31;
        out0_32_reg <= out0_32;
        out0_33_reg <= out0_33;
        out0_34_reg <= out0_34;
        out0_35_reg <= out0_35;
        out0_36_reg <= out0_36;
        out0_37_reg <= out0_37;
        out0_38_reg <= out0_38;
        out0_39_reg <= out0_39;
        out0_40_reg <= out0_40;
        out0_41_reg <= out0_41;
        out0_42_reg <= out0_42;
        out0_43_reg <= out0_43;
        out0_44_reg <= out0_44;
        out0_45_reg <= out0_45;
        out0_46_reg <= out0_46;
        out0_47_reg <= out0_47;
        out0_48_reg <= out0_48;
        out0_49_reg <= out0_49;
        out0_50_reg <= out0_50;
        out0_51_reg <= out0_51;
        out0_52_reg <= out0_52;
        out0_53_reg <= out0_53;
        out0_54_reg <= out0_54;
        out0_55_reg <= out0_55;
        out0_56_reg <= out0_56;
        out0_57_reg <= out0_57;
        out0_58_reg <= out0_58;
        out0_59_reg <= out0_59;
        out0_60_reg <= out0_60;
        out0_61_reg <= out0_61;
      end if;
  end process;

  -- LAYER 1, ch 0
  gen_l1c0 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_1_0;
  signal s2_0, s2_1 : sum_t_1_0;
  signal sum_1_0 : sum_t_1_0;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_0.mem") port map (clk, out0_0_reg, act_1_0_0);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_6_0.mem") port map (clk, out0_6_reg, act_1_6_0);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_8_0.mem") port map (clk, out0_8_reg, act_1_8_0);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_0.mem") port map (clk, out0_9_reg, act_1_9_0);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_12_0.mem") port map (clk, out0_12_reg, act_1_12_0);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_13_0.mem") port map (clk, out0_13_reg, act_1_13_0);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_15_0.mem") port map (clk, out0_15_reg, act_1_15_0);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_0.mem") port map (clk, out0_26_reg, act_1_26_0);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_35_0.mem") port map (clk, out0_35_reg, act_1_35_0);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_36_0.mem") port map (clk, out0_36_reg, act_1_36_0);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_37_0.mem") port map (clk, out0_37_reg, act_1_37_0);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_42_0.mem") port map (clk, out0_42_reg, act_1_42_0);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_43_0.mem") port map (clk, out0_43_reg, act_1_43_0);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_44_0.mem") port map (clk, out0_44_reg, act_1_44_0);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_45_0.mem") port map (clk, out0_45_reg, act_1_45_0);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_47_0.mem") port map (clk, out0_47_reg, act_1_47_0);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_48_0.mem") port map (clk, out0_48_reg, act_1_48_0);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_49_0.mem") port map (clk, out0_49_reg, act_1_49_0);
    i18 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_0.mem") port map (clk, out0_51_reg, act_1_51_0);
    i19 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_55_0.mem") port map (clk, out0_55_reg, act_1_55_0);
    i20 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_0.mem") port map (clk, out0_61_reg, act_1_61_0);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_0, SUM_WIDTH_1_0) + resize(act_1_6_0, SUM_WIDTH_1_0) + resize(act_1_8_0, SUM_WIDTH_1_0) + resize(act_1_9_0, SUM_WIDTH_1_0);
        s1_1 <= resize(act_1_12_0, SUM_WIDTH_1_0) + resize(act_1_13_0, SUM_WIDTH_1_0) + resize(act_1_15_0, SUM_WIDTH_1_0) + resize(act_1_26_0, SUM_WIDTH_1_0);
        s1_2 <= resize(act_1_35_0, SUM_WIDTH_1_0) + resize(act_1_36_0, SUM_WIDTH_1_0) + resize(act_1_37_0, SUM_WIDTH_1_0) + resize(act_1_42_0, SUM_WIDTH_1_0);
        s1_3 <= resize(act_1_43_0, SUM_WIDTH_1_0) + resize(act_1_44_0, SUM_WIDTH_1_0) + resize(act_1_45_0, SUM_WIDTH_1_0) + resize(act_1_47_0, SUM_WIDTH_1_0);
        s1_4 <= resize(act_1_48_0, SUM_WIDTH_1_0) + resize(act_1_49_0, SUM_WIDTH_1_0) + resize(act_1_51_0, SUM_WIDTH_1_0) + resize(act_1_55_0, SUM_WIDTH_1_0);
        s1_5 <= resize(act_1_61_0, SUM_WIDTH_1_0);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_1_0 <= s2_0 + s2_1;
      end if;
    end process;
    output(0) <= saturate(sum_1_0, 6);
  end block;

  -- LAYER 1, ch 1
  gen_l1c1 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_1_1;
  signal s2_0, s2_1 : sum_t_1_1;
  signal sum_1_1 : sum_t_1_1;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_1.mem") port map (clk, out0_0_reg, act_1_0_1);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_6_1.mem") port map (clk, out0_6_reg, act_1_6_1);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_8_1.mem") port map (clk, out0_8_reg, act_1_8_1);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_1.mem") port map (clk, out0_9_reg, act_1_9_1);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_13_1.mem") port map (clk, out0_13_reg, act_1_13_1);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_14_1.mem") port map (clk, out0_14_reg, act_1_14_1);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_16_1.mem") port map (clk, out0_16_reg, act_1_16_1);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_24_1.mem") port map (clk, out0_24_reg, act_1_24_1);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_1.mem") port map (clk, out0_26_reg, act_1_26_1);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_33_1.mem") port map (clk, out0_33_reg, act_1_33_1);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_34_1.mem") port map (clk, out0_34_reg, act_1_34_1);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_36_1.mem") port map (clk, out0_36_reg, act_1_36_1);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_38_1.mem") port map (clk, out0_38_reg, act_1_38_1);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_39_1.mem") port map (clk, out0_39_reg, act_1_39_1);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_1.mem") port map (clk, out0_41_reg, act_1_41_1);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_44_1.mem") port map (clk, out0_44_reg, act_1_44_1);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_58_1.mem") port map (clk, out0_58_reg, act_1_58_1);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_1.mem") port map (clk, out0_61_reg, act_1_61_1);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_1, SUM_WIDTH_1_1) + resize(act_1_6_1, SUM_WIDTH_1_1) + resize(act_1_8_1, SUM_WIDTH_1_1) + resize(act_1_9_1, SUM_WIDTH_1_1);
        s1_1 <= resize(act_1_13_1, SUM_WIDTH_1_1) + resize(act_1_14_1, SUM_WIDTH_1_1) + resize(act_1_16_1, SUM_WIDTH_1_1) + resize(act_1_24_1, SUM_WIDTH_1_1);
        s1_2 <= resize(act_1_26_1, SUM_WIDTH_1_1) + resize(act_1_33_1, SUM_WIDTH_1_1) + resize(act_1_34_1, SUM_WIDTH_1_1) + resize(act_1_36_1, SUM_WIDTH_1_1);
        s1_3 <= resize(act_1_38_1, SUM_WIDTH_1_1) + resize(act_1_39_1, SUM_WIDTH_1_1) + resize(act_1_41_1, SUM_WIDTH_1_1) + resize(act_1_44_1, SUM_WIDTH_1_1);
        s1_4 <= resize(act_1_58_1, SUM_WIDTH_1_1) + resize(act_1_61_1, SUM_WIDTH_1_1);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_1_1 <= s2_0 + s2_1;
      end if;
    end process;
    output(1) <= saturate(sum_1_1, 6);
  end block;

  -- LAYER 1, ch 2
  gen_l1c2 : block
  signal s1_0, s1_1, s1_2, s1_3 : sum_t_1_2;
  signal s2_0 : sum_t_1_2;
  signal sum_1_2 : sum_t_1_2;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_6_2.mem") port map (clk, out0_6_reg, act_1_6_2);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_8_2.mem") port map (clk, out0_8_reg, act_1_8_2);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_2.mem") port map (clk, out0_9_reg, act_1_9_2);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_13_2.mem") port map (clk, out0_13_reg, act_1_13_2);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_14_2.mem") port map (clk, out0_14_reg, act_1_14_2);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_15_2.mem") port map (clk, out0_15_reg, act_1_15_2);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_2.mem") port map (clk, out0_23_reg, act_1_23_2);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_29_2.mem") port map (clk, out0_29_reg, act_1_29_2);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_35_2.mem") port map (clk, out0_35_reg, act_1_35_2);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_36_2.mem") port map (clk, out0_36_reg, act_1_36_2);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_43_2.mem") port map (clk, out0_43_reg, act_1_43_2);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_44_2.mem") port map (clk, out0_44_reg, act_1_44_2);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_45_2.mem") port map (clk, out0_45_reg, act_1_45_2);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_2.mem") port map (clk, out0_51_reg, act_1_51_2);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_2.mem") port map (clk, out0_61_reg, act_1_61_2);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_6_2, SUM_WIDTH_1_2) + resize(act_1_8_2, SUM_WIDTH_1_2) + resize(act_1_9_2, SUM_WIDTH_1_2) + resize(act_1_13_2, SUM_WIDTH_1_2);
        s1_1 <= resize(act_1_14_2, SUM_WIDTH_1_2) + resize(act_1_15_2, SUM_WIDTH_1_2) + resize(act_1_23_2, SUM_WIDTH_1_2) + resize(act_1_29_2, SUM_WIDTH_1_2);
        s1_2 <= resize(act_1_35_2, SUM_WIDTH_1_2) + resize(act_1_36_2, SUM_WIDTH_1_2) + resize(act_1_43_2, SUM_WIDTH_1_2) + resize(act_1_44_2, SUM_WIDTH_1_2);
        s1_3 <= resize(act_1_45_2, SUM_WIDTH_1_2) + resize(act_1_51_2, SUM_WIDTH_1_2) + resize(act_1_61_2, SUM_WIDTH_1_2);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        -- Stage 3
        sum_1_2 <= s2_0;
      end if;
    end process;
    output(2) <= saturate(sum_1_2, 6);
  end block;

  -- LAYER 1, ch 3
  gen_l1c3 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_1_3;
  signal s2_0, s2_1 : sum_t_1_3;
  signal sum_1_3 : sum_t_1_3;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_3.mem") port map (clk, out0_0_reg, act_1_0_3);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_1_3.mem") port map (clk, out0_1_reg, act_1_1_3);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_8_3.mem") port map (clk, out0_8_reg, act_1_8_3);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_3.mem") port map (clk, out0_9_reg, act_1_9_3);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_10_3.mem") port map (clk, out0_10_reg, act_1_10_3);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_13_3.mem") port map (clk, out0_13_reg, act_1_13_3);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_15_3.mem") port map (clk, out0_15_reg, act_1_15_3);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_20_3.mem") port map (clk, out0_20_reg, act_1_20_3);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_3.mem") port map (clk, out0_23_reg, act_1_23_3);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_24_3.mem") port map (clk, out0_24_reg, act_1_24_3);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_3.mem") port map (clk, out0_26_reg, act_1_26_3);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_28_3.mem") port map (clk, out0_28_reg, act_1_28_3);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_33_3.mem") port map (clk, out0_33_reg, act_1_33_3);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_34_3.mem") port map (clk, out0_34_reg, act_1_34_3);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_39_3.mem") port map (clk, out0_39_reg, act_1_39_3);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_3.mem") port map (clk, out0_41_reg, act_1_41_3);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_43_3.mem") port map (clk, out0_43_reg, act_1_43_3);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_45_3.mem") port map (clk, out0_45_reg, act_1_45_3);
    i18 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_47_3.mem") port map (clk, out0_47_reg, act_1_47_3);
    i19 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_3.mem") port map (clk, out0_51_reg, act_1_51_3);
    i20 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_60_3.mem") port map (clk, out0_60_reg, act_1_60_3);
    i21 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_3.mem") port map (clk, out0_61_reg, act_1_61_3);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_3, SUM_WIDTH_1_3) + resize(act_1_1_3, SUM_WIDTH_1_3) + resize(act_1_8_3, SUM_WIDTH_1_3) + resize(act_1_9_3, SUM_WIDTH_1_3);
        s1_1 <= resize(act_1_10_3, SUM_WIDTH_1_3) + resize(act_1_13_3, SUM_WIDTH_1_3) + resize(act_1_15_3, SUM_WIDTH_1_3) + resize(act_1_20_3, SUM_WIDTH_1_3);
        s1_2 <= resize(act_1_23_3, SUM_WIDTH_1_3) + resize(act_1_24_3, SUM_WIDTH_1_3) + resize(act_1_26_3, SUM_WIDTH_1_3) + resize(act_1_28_3, SUM_WIDTH_1_3);
        s1_3 <= resize(act_1_33_3, SUM_WIDTH_1_3) + resize(act_1_34_3, SUM_WIDTH_1_3) + resize(act_1_39_3, SUM_WIDTH_1_3) + resize(act_1_41_3, SUM_WIDTH_1_3);
        s1_4 <= resize(act_1_43_3, SUM_WIDTH_1_3) + resize(act_1_45_3, SUM_WIDTH_1_3) + resize(act_1_47_3, SUM_WIDTH_1_3) + resize(act_1_51_3, SUM_WIDTH_1_3);
        s1_5 <= resize(act_1_60_3, SUM_WIDTH_1_3) + resize(act_1_61_3, SUM_WIDTH_1_3);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_1_3 <= s2_0 + s2_1;
      end if;
    end process;
    output(3) <= saturate(sum_1_3, 6);
  end block;

  -- LAYER 1, ch 4
  gen_l1c4 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_1_4;
  signal s2_0, s2_1 : sum_t_1_4;
  signal sum_1_4 : sum_t_1_4;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_4.mem") port map (clk, out0_9_reg, act_1_9_4);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_10_4.mem") port map (clk, out0_10_reg, act_1_10_4);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_12_4.mem") port map (clk, out0_12_reg, act_1_12_4);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_13_4.mem") port map (clk, out0_13_reg, act_1_13_4);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_15_4.mem") port map (clk, out0_15_reg, act_1_15_4);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_20_4.mem") port map (clk, out0_20_reg, act_1_20_4);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_4.mem") port map (clk, out0_23_reg, act_1_23_4);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_28_4.mem") port map (clk, out0_28_reg, act_1_28_4);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_37_4.mem") port map (clk, out0_37_reg, act_1_37_4);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_4.mem") port map (clk, out0_41_reg, act_1_41_4);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_45_4.mem") port map (clk, out0_45_reg, act_1_45_4);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_47_4.mem") port map (clk, out0_47_reg, act_1_47_4);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_48_4.mem") port map (clk, out0_48_reg, act_1_48_4);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_4.mem") port map (clk, out0_51_reg, act_1_51_4);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_52_4.mem") port map (clk, out0_52_reg, act_1_52_4);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_53_4.mem") port map (clk, out0_53_reg, act_1_53_4);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_58_4.mem") port map (clk, out0_58_reg, act_1_58_4);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_4.mem") port map (clk, out0_61_reg, act_1_61_4);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_9_4, SUM_WIDTH_1_4) + resize(act_1_10_4, SUM_WIDTH_1_4) + resize(act_1_12_4, SUM_WIDTH_1_4) + resize(act_1_13_4, SUM_WIDTH_1_4);
        s1_1 <= resize(act_1_15_4, SUM_WIDTH_1_4) + resize(act_1_20_4, SUM_WIDTH_1_4) + resize(act_1_23_4, SUM_WIDTH_1_4) + resize(act_1_28_4, SUM_WIDTH_1_4);
        s1_2 <= resize(act_1_37_4, SUM_WIDTH_1_4) + resize(act_1_41_4, SUM_WIDTH_1_4) + resize(act_1_45_4, SUM_WIDTH_1_4) + resize(act_1_47_4, SUM_WIDTH_1_4);
        s1_3 <= resize(act_1_48_4, SUM_WIDTH_1_4) + resize(act_1_51_4, SUM_WIDTH_1_4) + resize(act_1_52_4, SUM_WIDTH_1_4) + resize(act_1_53_4, SUM_WIDTH_1_4);
        s1_4 <= resize(act_1_58_4, SUM_WIDTH_1_4) + resize(act_1_61_4, SUM_WIDTH_1_4);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_1_4 <= s2_0 + s2_1;
      end if;
    end process;
    output(4) <= saturate(sum_1_4, 6);
  end block;

  -- LAYER 1, ch 5
  gen_l1c5 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_1_5;
  signal s2_0, s2_1 : sum_t_1_5;
  signal sum_1_5 : sum_t_1_5;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_5.mem") port map (clk, out0_0_reg, act_1_0_5);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_1_5.mem") port map (clk, out0_1_reg, act_1_1_5);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_7_5.mem") port map (clk, out0_7_reg, act_1_7_5);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_13_5.mem") port map (clk, out0_13_reg, act_1_13_5);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_15_5.mem") port map (clk, out0_15_reg, act_1_15_5);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_24_5.mem") port map (clk, out0_24_reg, act_1_24_5);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_25_5.mem") port map (clk, out0_25_reg, act_1_25_5);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_5.mem") port map (clk, out0_26_reg, act_1_26_5);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_28_5.mem") port map (clk, out0_28_reg, act_1_28_5);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_29_5.mem") port map (clk, out0_29_reg, act_1_29_5);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_33_5.mem") port map (clk, out0_33_reg, act_1_33_5);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_35_5.mem") port map (clk, out0_35_reg, act_1_35_5);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_37_5.mem") port map (clk, out0_37_reg, act_1_37_5);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_39_5.mem") port map (clk, out0_39_reg, act_1_39_5);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_5.mem") port map (clk, out0_51_reg, act_1_51_5);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_53_5.mem") port map (clk, out0_53_reg, act_1_53_5);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_58_5.mem") port map (clk, out0_58_reg, act_1_58_5);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_5.mem") port map (clk, out0_61_reg, act_1_61_5);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_5, SUM_WIDTH_1_5) + resize(act_1_1_5, SUM_WIDTH_1_5) + resize(act_1_7_5, SUM_WIDTH_1_5) + resize(act_1_13_5, SUM_WIDTH_1_5);
        s1_1 <= resize(act_1_15_5, SUM_WIDTH_1_5) + resize(act_1_24_5, SUM_WIDTH_1_5) + resize(act_1_25_5, SUM_WIDTH_1_5) + resize(act_1_26_5, SUM_WIDTH_1_5);
        s1_2 <= resize(act_1_28_5, SUM_WIDTH_1_5) + resize(act_1_29_5, SUM_WIDTH_1_5) + resize(act_1_33_5, SUM_WIDTH_1_5) + resize(act_1_35_5, SUM_WIDTH_1_5);
        s1_3 <= resize(act_1_37_5, SUM_WIDTH_1_5) + resize(act_1_39_5, SUM_WIDTH_1_5) + resize(act_1_51_5, SUM_WIDTH_1_5) + resize(act_1_53_5, SUM_WIDTH_1_5);
        s1_4 <= resize(act_1_58_5, SUM_WIDTH_1_5) + resize(act_1_61_5, SUM_WIDTH_1_5);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_1_5 <= s2_0 + s2_1;
      end if;
    end process;
    output(5) <= saturate(sum_1_5, 6);
  end block;

  -- LAYER 1, ch 6
  gen_l1c6 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4, s1_5 : sum_t_1_6;
  signal s2_0, s2_1 : sum_t_1_6;
  signal sum_1_6 : sum_t_1_6;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_6.mem") port map (clk, out0_0_reg, act_1_0_6);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_6_6.mem") port map (clk, out0_6_reg, act_1_6_6);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_6.mem") port map (clk, out0_9_reg, act_1_9_6);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_10_6.mem") port map (clk, out0_10_reg, act_1_10_6);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_12_6.mem") port map (clk, out0_12_reg, act_1_12_6);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_15_6.mem") port map (clk, out0_15_reg, act_1_15_6);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_16_6.mem") port map (clk, out0_16_reg, act_1_16_6);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_6.mem") port map (clk, out0_23_reg, act_1_23_6);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_25_6.mem") port map (clk, out0_25_reg, act_1_25_6);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_6.mem") port map (clk, out0_26_reg, act_1_26_6);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_28_6.mem") port map (clk, out0_28_reg, act_1_28_6);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_29_6.mem") port map (clk, out0_29_reg, act_1_29_6);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_33_6.mem") port map (clk, out0_33_reg, act_1_33_6);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_35_6.mem") port map (clk, out0_35_reg, act_1_35_6);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_36_6.mem") port map (clk, out0_36_reg, act_1_36_6);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_6.mem") port map (clk, out0_41_reg, act_1_41_6);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_42_6.mem") port map (clk, out0_42_reg, act_1_42_6);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_47_6.mem") port map (clk, out0_47_reg, act_1_47_6);
    i18 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_49_6.mem") port map (clk, out0_49_reg, act_1_49_6);
    i19 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_55_6.mem") port map (clk, out0_55_reg, act_1_55_6);
    i20 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_57_6.mem") port map (clk, out0_57_reg, act_1_57_6);
    i21 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_58_6.mem") port map (clk, out0_58_reg, act_1_58_6);
    i22 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_6.mem") port map (clk, out0_61_reg, act_1_61_6);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_6, SUM_WIDTH_1_6) + resize(act_1_6_6, SUM_WIDTH_1_6) + resize(act_1_9_6, SUM_WIDTH_1_6) + resize(act_1_10_6, SUM_WIDTH_1_6);
        s1_1 <= resize(act_1_12_6, SUM_WIDTH_1_6) + resize(act_1_15_6, SUM_WIDTH_1_6) + resize(act_1_16_6, SUM_WIDTH_1_6) + resize(act_1_23_6, SUM_WIDTH_1_6);
        s1_2 <= resize(act_1_25_6, SUM_WIDTH_1_6) + resize(act_1_26_6, SUM_WIDTH_1_6) + resize(act_1_28_6, SUM_WIDTH_1_6) + resize(act_1_29_6, SUM_WIDTH_1_6);
        s1_3 <= resize(act_1_33_6, SUM_WIDTH_1_6) + resize(act_1_35_6, SUM_WIDTH_1_6) + resize(act_1_36_6, SUM_WIDTH_1_6) + resize(act_1_41_6, SUM_WIDTH_1_6);
        s1_4 <= resize(act_1_42_6, SUM_WIDTH_1_6) + resize(act_1_47_6, SUM_WIDTH_1_6) + resize(act_1_49_6, SUM_WIDTH_1_6) + resize(act_1_55_6, SUM_WIDTH_1_6);
        s1_5 <= resize(act_1_57_6, SUM_WIDTH_1_6) + resize(act_1_58_6, SUM_WIDTH_1_6) + resize(act_1_61_6, SUM_WIDTH_1_6);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4 + s1_5;
        -- Stage 3
        sum_1_6 <= s2_0 + s2_1;
      end if;
    end process;
    output(6) <= saturate(sum_1_6, 6);
  end block;

  -- LAYER 1, ch 7
  gen_l1c7 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_1_7;
  signal s2_0, s2_1 : sum_t_1_7;
  signal sum_1_7 : sum_t_1_7;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_7.mem") port map (clk, out0_0_reg, act_1_0_7);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_7_7.mem") port map (clk, out0_7_reg, act_1_7_7);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_9_7.mem") port map (clk, out0_9_reg, act_1_9_7);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_10_7.mem") port map (clk, out0_10_reg, act_1_10_7);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_14_7.mem") port map (clk, out0_14_reg, act_1_14_7);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_17_7.mem") port map (clk, out0_17_reg, act_1_17_7);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_7.mem") port map (clk, out0_23_reg, act_1_23_7);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_24_7.mem") port map (clk, out0_24_reg, act_1_24_7);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_7.mem") port map (clk, out0_26_reg, act_1_26_7);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_29_7.mem") port map (clk, out0_29_reg, act_1_29_7);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_34_7.mem") port map (clk, out0_34_reg, act_1_34_7);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_36_7.mem") port map (clk, out0_36_reg, act_1_36_7);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_38_7.mem") port map (clk, out0_38_reg, act_1_38_7);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_7.mem") port map (clk, out0_41_reg, act_1_41_7);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_44_7.mem") port map (clk, out0_44_reg, act_1_44_7);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_48_7.mem") port map (clk, out0_48_reg, act_1_48_7);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_7.mem") port map (clk, out0_51_reg, act_1_51_7);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_53_7.mem") port map (clk, out0_53_reg, act_1_53_7);
    i18 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_7.mem") port map (clk, out0_61_reg, act_1_61_7);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_7, SUM_WIDTH_1_7) + resize(act_1_7_7, SUM_WIDTH_1_7) + resize(act_1_9_7, SUM_WIDTH_1_7) + resize(act_1_10_7, SUM_WIDTH_1_7);
        s1_1 <= resize(act_1_14_7, SUM_WIDTH_1_7) + resize(act_1_17_7, SUM_WIDTH_1_7) + resize(act_1_23_7, SUM_WIDTH_1_7) + resize(act_1_24_7, SUM_WIDTH_1_7);
        s1_2 <= resize(act_1_26_7, SUM_WIDTH_1_7) + resize(act_1_29_7, SUM_WIDTH_1_7) + resize(act_1_34_7, SUM_WIDTH_1_7) + resize(act_1_36_7, SUM_WIDTH_1_7);
        s1_3 <= resize(act_1_38_7, SUM_WIDTH_1_7) + resize(act_1_41_7, SUM_WIDTH_1_7) + resize(act_1_44_7, SUM_WIDTH_1_7) + resize(act_1_48_7, SUM_WIDTH_1_7);
        s1_4 <= resize(act_1_51_7, SUM_WIDTH_1_7) + resize(act_1_53_7, SUM_WIDTH_1_7) + resize(act_1_61_7, SUM_WIDTH_1_7);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_1_7 <= s2_0 + s2_1;
      end if;
    end process;
    output(7) <= saturate(sum_1_7, 6);
  end block;

  -- LAYER 1, ch 8
  gen_l1c8 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_1_8;
  signal s2_0, s2_1 : sum_t_1_8;
  signal sum_1_8 : sum_t_1_8;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_8.mem") port map (clk, out0_0_reg, act_1_0_8);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_1_8.mem") port map (clk, out0_1_reg, act_1_1_8);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_3_8.mem") port map (clk, out0_3_reg, act_1_3_8);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_6_8.mem") port map (clk, out0_6_reg, act_1_6_8);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_8_8.mem") port map (clk, out0_8_reg, act_1_8_8);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_14_8.mem") port map (clk, out0_14_reg, act_1_14_8);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_18_8.mem") port map (clk, out0_18_reg, act_1_18_8);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_8.mem") port map (clk, out0_23_reg, act_1_23_8);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_25_8.mem") port map (clk, out0_25_reg, act_1_25_8);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_26_8.mem") port map (clk, out0_26_reg, act_1_26_8);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_33_8.mem") port map (clk, out0_33_reg, act_1_33_8);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_34_8.mem") port map (clk, out0_34_reg, act_1_34_8);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_36_8.mem") port map (clk, out0_36_reg, act_1_36_8);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_37_8.mem") port map (clk, out0_37_reg, act_1_37_8);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_8.mem") port map (clk, out0_41_reg, act_1_41_8);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_43_8.mem") port map (clk, out0_43_reg, act_1_43_8);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_45_8.mem") port map (clk, out0_45_reg, act_1_45_8);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_47_8.mem") port map (clk, out0_47_reg, act_1_47_8);
    i18 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_8.mem") port map (clk, out0_51_reg, act_1_51_8);
    i19 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_8.mem") port map (clk, out0_61_reg, act_1_61_8);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_8, SUM_WIDTH_1_8) + resize(act_1_1_8, SUM_WIDTH_1_8) + resize(act_1_3_8, SUM_WIDTH_1_8) + resize(act_1_6_8, SUM_WIDTH_1_8);
        s1_1 <= resize(act_1_8_8, SUM_WIDTH_1_8) + resize(act_1_14_8, SUM_WIDTH_1_8) + resize(act_1_18_8, SUM_WIDTH_1_8) + resize(act_1_23_8, SUM_WIDTH_1_8);
        s1_2 <= resize(act_1_25_8, SUM_WIDTH_1_8) + resize(act_1_26_8, SUM_WIDTH_1_8) + resize(act_1_33_8, SUM_WIDTH_1_8) + resize(act_1_34_8, SUM_WIDTH_1_8);
        s1_3 <= resize(act_1_36_8, SUM_WIDTH_1_8) + resize(act_1_37_8, SUM_WIDTH_1_8) + resize(act_1_41_8, SUM_WIDTH_1_8) + resize(act_1_43_8, SUM_WIDTH_1_8);
        s1_4 <= resize(act_1_45_8, SUM_WIDTH_1_8) + resize(act_1_47_8, SUM_WIDTH_1_8) + resize(act_1_51_8, SUM_WIDTH_1_8) + resize(act_1_61_8, SUM_WIDTH_1_8);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_1_8 <= s2_0 + s2_1;
      end if;
    end process;
    output(8) <= saturate(sum_1_8, 6);
  end block;

  -- LAYER 1, ch 9
  gen_l1c9 : block
  signal s1_0, s1_1, s1_2, s1_3, s1_4 : sum_t_1_9;
  signal s2_0, s2_1 : sum_t_1_9;
  signal sum_1_9 : sum_t_1_9;
  begin
    i00 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_0_9.mem") port map (clk, out0_0_reg, act_1_0_9);
    i01 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_3_9.mem") port map (clk, out0_3_reg, act_1_3_9);
    i02 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_7_9.mem") port map (clk, out0_7_reg, act_1_7_9);
    i03 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_8_9.mem") port map (clk, out0_8_reg, act_1_8_9);
    i04 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_12_9.mem") port map (clk, out0_12_reg, act_1_12_9);
    i05 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_18_9.mem") port map (clk, out0_18_reg, act_1_18_9);
    i06 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_23_9.mem") port map (clk, out0_23_reg, act_1_23_9);
    i07 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_25_9.mem") port map (clk, out0_25_reg, act_1_25_9);
    i08 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_37_9.mem") port map (clk, out0_37_reg, act_1_37_9);
    i09 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_38_9.mem") port map (clk, out0_38_reg, act_1_38_9);
    i10 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_41_9.mem") port map (clk, out0_41_reg, act_1_41_9);
    i11 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_43_9.mem") port map (clk, out0_43_reg, act_1_43_9);
    i12 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_45_9.mem") port map (clk, out0_45_reg, act_1_45_9);
    i13 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_48_9.mem") port map (clk, out0_48_reg, act_1_48_9);
    i14 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_51_9.mem") port map (clk, out0_51_reg, act_1_51_9);
    i15 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_53_9.mem") port map (clk, out0_53_reg, act_1_53_9);
    i16 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_58_9.mem") port map (clk, out0_58_reg, act_1_58_9);
    i17 : entity work.LUT_1 generic map (MEMFILE=>"lut_1_61_9.mem") port map (clk, out0_61_reg, act_1_61_9);
    adder_tree : process(clk)
    begin
      if rising_edge(clk) then
        -- Stage 1
        s1_0 <= resize(act_1_0_9, SUM_WIDTH_1_9) + resize(act_1_3_9, SUM_WIDTH_1_9) + resize(act_1_7_9, SUM_WIDTH_1_9) + resize(act_1_8_9, SUM_WIDTH_1_9);
        s1_1 <= resize(act_1_12_9, SUM_WIDTH_1_9) + resize(act_1_18_9, SUM_WIDTH_1_9) + resize(act_1_23_9, SUM_WIDTH_1_9) + resize(act_1_25_9, SUM_WIDTH_1_9);
        s1_2 <= resize(act_1_37_9, SUM_WIDTH_1_9) + resize(act_1_38_9, SUM_WIDTH_1_9) + resize(act_1_41_9, SUM_WIDTH_1_9) + resize(act_1_43_9, SUM_WIDTH_1_9);
        s1_3 <= resize(act_1_45_9, SUM_WIDTH_1_9) + resize(act_1_48_9, SUM_WIDTH_1_9) + resize(act_1_51_9, SUM_WIDTH_1_9) + resize(act_1_53_9, SUM_WIDTH_1_9);
        s1_4 <= resize(act_1_58_9, SUM_WIDTH_1_9) + resize(act_1_61_9, SUM_WIDTH_1_9);
        -- Stage 2
        s2_0 <= s1_0 + s1_1 + s1_2 + s1_3;
        s2_1 <= s1_4;
        -- Stage 3
        sum_1_9 <= s2_0 + s2_1;
      end if;
    end process;
    output(9) <= saturate(sum_1_9, 6);
  end block;

end architecture;