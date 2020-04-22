.late_rodata
glabel D_80A692D0
    .float 10430.378

.text
glabel func_80A68E14
/* 007B4 80A68E14 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 007B8 80A68E18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007BC 80A68E1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007C0 80A68E20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007C4 80A68E24 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 007C8 80A68E28 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 007CC 80A68E2C 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 007D0 80A68E30 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 007D4 80A68E34 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 007D8 80A68E38 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 007DC 80A68E3C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 007E0 80A68E40 46040182 */  mul.s   $f6, $f0, $f4              
/* 007E4 80A68E44 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 007E8 80A68E48 46083280 */  add.s   $f10, $f6, $f8             
/* 007EC 80A68E4C E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 007F0 80A68E50 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 007F4 80A68E54 46128100 */  add.s   $f4, $f16, $f18            
/* 007F8 80A68E58 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 007FC 80A68E5C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00800 80A68E60 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00804 80A68E64 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00808 80A68E68 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 0080C 80A68E6C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00810 80A68E70 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00814 80A68E74 46060202 */  mul.s   $f8, $f0, $f6              
/* 00818 80A68E78 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF8
/* 0081C 80A68E7C 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFE4
/* 00820 80A68E80 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFE8
/* 00824 80A68E84 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00828 80A68E88 460A4400 */  add.s   $f16, $f8, $f10            
/* 0082C 80A68E8C 0C00F250 */  jal     func_8003C940              
/* 00830 80A68E90 E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 00834 80A68E94 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00838 80A68E98 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0083C 80A68E9C 44817000 */  mtc1    $at, $f14                  ## $f14 = 30.00
/* 00840 80A68EA0 E60001F4 */  swc1    $f0, 0x01F4($s0)           ## 000001F4
/* 00844 80A68EA4 0C03F494 */  jal     Math_atan2f              
/* 00848 80A68EA8 46009301 */  sub.s   $f12, $f18, $f0            
/* 0084C 80A68EAC 3C0180A7 */  lui     $at, %hi(D_80A692D0)       ## $at = 80A70000
/* 00850 80A68EB0 C42492D0 */  lwc1    $f4, %lo(D_80A692D0)($at)  
/* 00854 80A68EB4 46040182 */  mul.s   $f6, $f0, $f4              
/* 00858 80A68EB8 4600320D */  trunc.w.s $f8, $f6                   
/* 0085C 80A68EBC 440F4000 */  mfc1    $t7, $f8                   
/* 00860 80A68EC0 00000000 */  nop
/* 00864 80A68EC4 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 00868 80A68EC8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0086C 80A68ECC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00870 80A68ED0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00874 80A68ED4 03E00008 */  jr      $ra                        
/* 00878 80A68ED8 00000000 */  nop