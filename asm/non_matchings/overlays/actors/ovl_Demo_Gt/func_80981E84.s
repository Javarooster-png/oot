.rdata
glabel D_80982930
    .asciz "../z_demo_gt_part5.c"
    .balign 4

glabel D_80982948
    .asciz "../z_demo_gt_part5.c"
    .balign 4

glabel D_80982960
    .asciz "../z_demo_gt_part5.c"
    .balign 4

.late_rodata
glabel D_80982B44
    .float 9.58738019108e-05

.text
glabel func_80981E84
/* 04814 80981E84 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 04818 80981E88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0481C 80981E8C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04820 80981E90 84880172 */  lh      $t0, 0x0172($a0)           ## 00000172
/* 04824 80981E94 3C018098 */  lui     $at, %hi(D_80982B44)       ## $at = 80980000
/* 04828 80981E98 C4282B44 */  lwc1    $f8, %lo(D_80982B44)($at)  
/* 0482C 80981E9C 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 04830 80981EA0 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 04834 80981EA4 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 04838 80981EA8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0483C 80981EAC 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 04840 80981EB0 24050040 */  addiu   $a1, $zero, 0x0040         ## $a1 = 00000040
/* 04844 80981EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04848 80981EB8 46083002 */  mul.s   $f0, $f6, $f8              
/* 0484C 80981EBC 46000005 */  abs.s   $f0, $f0                   
/* 04850 80981EC0 E7A00068 */  swc1    $f0, 0x0068($sp)           
/* 04854 80981EC4 844E14EA */  lh      $t6, 0x14EA($v0)           ## 801614EA
/* 04858 80981EC8 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 0485C 80981ECC 00000000 */  nop
/* 04860 80981ED0 46805420 */  cvt.s.w $f16, $f10                 
/* 04864 80981ED4 E7B00064 */  swc1    $f16, 0x0064($sp)          
/* 04868 80981ED8 844314E8 */  lh      $v1, 0x14E8($v0)           ## 801614E8
/* 0486C 80981EDC A7A8006E */  sh      $t0, 0x006E($sp)           
/* 04870 80981EE0 24787FEC */  addiu   $t8, $v1, 0x7FEC           ## $t8 = 00007FEC
/* 04874 80981EE4 27194000 */  addiu   $t9, $t8, 0x4000           ## $t9 = 0000BFEC
/* 04878 80981EE8 A7B80062 */  sh      $t8, 0x0062($sp)           
/* 0487C 80981EEC 0C031A73 */  jal     Graph_Alloc
              
/* 04880 80981EF0 A7B90060 */  sh      $t9, 0x0060($sp)           
/* 04884 80981EF4 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 04888 80981EF8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0488C 80981EFC 87A4006E */  lh      $a0, 0x006E($sp)           
/* 04890 80981F00 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04894 80981F04 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 04898 80981F08 3C068098 */  lui     $a2, %hi(D_80982930)       ## $a2 = 80980000
/* 0489C 80981F0C 24C62930 */  addiu   $a2, $a2, %lo(D_80982930)  ## $a2 = 80982930
/* 048A0 80981F10 46009101 */  sub.s   $f4, $f18, $f0             
/* 048A4 80981F14 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFB4
/* 048A8 80981F18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 048AC 80981F1C 24070088 */  addiu   $a3, $zero, 0x0088         ## $a3 = 00000088
/* 048B0 80981F20 0C031AB1 */  jal     Graph_OpenDisps              
/* 048B4 80981F24 E7A40040 */  swc1    $f4, 0x0040($sp)           
/* 048B8 80981F28 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 048BC 80981F2C 87A40060 */  lh      $a0, 0x0060($sp)           
/* 048C0 80981F30 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 048C4 80981F34 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 048C8 80981F38 87A40060 */  lh      $a0, 0x0060($sp)           
/* 048CC 80981F3C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 048D0 80981F40 E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 048D4 80981F44 E7A00058 */  swc1    $f0, 0x0058($sp)           
/* 048D8 80981F48 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 048DC 80981F4C 87A40062 */  lh      $a0, 0x0062($sp)           
/* 048E0 80981F50 C7A80064 */  lwc1    $f8, 0x0064($sp)           
/* 048E4 80981F54 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 048E8 80981F58 87A4006E */  lh      $a0, 0x006E($sp)           
/* 048EC 80981F5C 46080282 */  mul.s   $f10, $f0, $f8             
/* 048F0 80981F60 00000000 */  nop
/* 048F4 80981F64 46105482 */  mul.s   $f18, $f10, $f16           
/* 048F8 80981F68 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 048FC 80981F6C E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 04900 80981F70 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 04904 80981F74 87A40062 */  lh      $a0, 0x0062($sp)           
/* 04908 80981F78 46040182 */  mul.s   $f6, $f0, $f4              
/* 0490C 80981F7C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 04910 80981F80 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 04914 80981F84 C7A80064 */  lwc1    $f8, 0x0064($sp)           
/* 04918 80981F88 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 0491C 80981F8C 46080282 */  mul.s   $f10, $f0, $f8             
/* 04920 80981F90 00000000 */  nop
/* 04924 80981F94 46105482 */  mul.s   $f18, $f10, $f16           
/* 04928 80981F98 0C034213 */  jal     Matrix_Push              
/* 0492C 80981F9C E7B2004C */  swc1    $f18, 0x004C($sp)          
/* 04930 80981FA0 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 04934 80981FA4 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFD8
/* 04938 80981FA8 0C0348FF */  jal     func_800D23FC              
/* 0493C 80981FAC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 04940 80981FB0 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 04944 80981FB4 C7AE0048 */  lwc1    $f14, 0x0048($sp)          
/* 04948 80981FB8 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 0494C 80981FBC 0C034261 */  jal     Matrix_Translate              
/* 04950 80981FC0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04954 80981FC4 3C058098 */  lui     $a1, %hi(D_80982948)       ## $a1 = 80980000
/* 04958 80981FC8 24A52948 */  addiu   $a1, $a1, %lo(D_80982948)  ## $a1 = 80982948
/* 0495C 80981FCC 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 04960 80981FD0 0C034695 */  jal     Matrix_ToMtx              
/* 04964 80981FD4 24060098 */  addiu   $a2, $zero, 0x0098         ## $a2 = 00000098
/* 04968 80981FD8 0C034221 */  jal     Matrix_Pull              
/* 0496C 80981FDC 00000000 */  nop
/* 04970 80981FE0 0C024F46 */  jal     func_80093D18              
/* 04974 80981FE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04978 80981FE8 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 0497C 80981FEC 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 04980 80981FF0 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 04984 80981FF4 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 04988 80981FF8 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 0498C 80981FFC AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 04990 80982000 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 04994 80982004 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 04998 80982008 25CE9970 */  addiu   $t6, $t6, 0x9970           ## $t6 = 06009970
/* 0499C 8098200C AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 049A0 80982010 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 049A4 80982014 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 049A8 80982018 3C068098 */  lui     $a2, %hi(D_80982960)       ## $a2 = 80980000
/* 049AC 8098201C 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 049B0 80982020 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 049B4 80982024 24C62960 */  addiu   $a2, $a2, %lo(D_80982960)  ## $a2 = 80982960
/* 049B8 80982028 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFB4
/* 049BC 8098202C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 049C0 80982030 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 049C4 80982034 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 049C8 80982038 0C031AD5 */  jal     Graph_CloseDisps              
/* 049CC 8098203C AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 049D0 80982040 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 049D4 80982044 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 049D8 80982048 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 049DC 8098204C 03E00008 */  jr      $ra                        
/* 049E0 80982050 00000000 */  nop