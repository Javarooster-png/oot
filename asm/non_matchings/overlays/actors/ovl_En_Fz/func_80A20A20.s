glabel func_80A20A20
/* 00C60 80A20A20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00C64 80A20A24 3C1880A2 */  lui     $t8, %hi(func_80A20A4C)    ## $t8 = 80A20000
/* 00C68 80A20A28 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00C6C 80A20A2C 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 00C70 80A20A30 27180A4C */  addiu   $t8, $t8, %lo(func_80A20A4C) ## $t8 = 80A20A4C
/* 00C74 80A20A34 A08E0260 */  sb      $t6, 0x0260($a0)           ## 00000260
/* 00C78 80A20A38 A48F0244 */  sh      $t7, 0x0244($a0)           ## 00000244
/* 00C7C 80A20A3C AC98014C */  sw      $t8, 0x014C($a0)           ## 0000014C
/* 00C80 80A20A40 E4800254 */  swc1    $f0, 0x0254($a0)           ## 00000254
/* 00C84 80A20A44 03E00008 */  jr      $ra                        
/* 00C88 80A20A48 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068