glabel func_80B409D8
/* 047F8 80B409D8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 047FC 80B409DC AFB00028 */  sw      $s0, 0x0028($sp)
/* 04800 80B409E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04804 80B409E4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 04808 80B409E8 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 0480C 80B409EC AFA50044 */  sw      $a1, 0x0044($sp)
/* 04810 80B409F0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04814 80B409F4 24849F78 */  addiu   $a0, $a0, 0x9F78           ## $a0 = 06019F78
/* 04818 80B409F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0481C 80B409FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04820 80B40A00 468021A0 */  cvt.s.w $f6, $f4
/* 04824 80B40A04 0C2CF277 */  jal     func_80B3C9DC
/* 04828 80B40A08 E7A60030 */  swc1    $f6, 0x0030($sp)
/* 0482C 80B40A0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04830 80B40A10 8FA50044 */  lw      $a1, 0x0044($sp)
/* 04834 80B40A14 0C2CF162 */  jal     func_80B3C588
/* 04838 80B40A18 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0483C 80B40A1C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04840 80B40A20 C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 04844 80B40A24 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 04848 80B40A28 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0484C 80B40A2C 44070000 */  mfc1    $a3, $f0
/* 04850 80B40A30 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 04854 80B40A34 24A59F78 */  addiu   $a1, $a1, 0x9F78           ## $a1 = 06019F78
/* 04858 80B40A38 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0485C 80B40A3C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04860 80B40A40 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 04864 80B40A44 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04868 80B40A48 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0486C 80B40A4C 240F003E */  addiu   $t7, $zero, 0x003E         ## $t7 = 0000003E
/* 04870 80B40A50 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 04874 80B40A54 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 04878 80B40A58 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 0487C 80B40A5C AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 04880 80B40A60 A21900C8 */  sb      $t9, 0x00C8($s0)           ## 000000C8
/* 04884 80B40A64 8FBF002C */  lw      $ra, 0x002C($sp)
/* 04888 80B40A68 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0488C 80B40A6C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 04890 80B40A70 03E00008 */  jr      $ra
/* 04894 80B40A74 00000000 */  nop