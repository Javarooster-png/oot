glabel func_808615A4
/* 01F54 808615A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F58 808615A8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01F5C 808615AC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01F60 808615B0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01F64 808615B4 24A5B4E4 */  addiu   $a1, $a1, 0xB4E4           ## $a1 = 0600B4E4
/* 01F68 808615B8 AFA60018 */  sw      $a2, 0x0018($sp)
/* 01F6C 808615BC 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 01F70 808615C0 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01F74 808615C4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01F78 808615C8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01F7C 808615CC 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 01F80 808615D0 3C058086 */  lui     $a1, %hi(func_808615F4)    ## $a1 = 80860000
/* 01F84 808615D4 24A515F4 */  addiu   $a1, $a1, %lo(func_808615F4) ## $a1 = 808615F4
/* 01F88 808615D8 A08E07C8 */  sb      $t6, 0x07C8($a0)           ## 000007C8
/* 01F8C 808615DC 0C217D94 */  jal     EnTest_SetupAction
/* 01F90 808615E0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01F94 808615E4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01F98 808615E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F9C 808615EC 03E00008 */  jr      $ra
/* 01FA0 808615F0 00000000 */  nop