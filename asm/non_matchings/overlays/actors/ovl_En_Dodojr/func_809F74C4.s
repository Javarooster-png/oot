.late_rodata
glabel D_809F7F8C
 .word 0x40266666

.text
glabel func_809F74C4
/* 01104 809F74C4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01108 809F74C8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0110C 809F74CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01110 809F74D0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01114 809F74D4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01118 809F74D8 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 0111C 809F74DC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01120 809F74E0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01124 809F74E4 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 01128 809F74E8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0112C 809F74EC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01130 809F74F0 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 01134 809F74F4 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 01138 809F74F8 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 0113C 809F74FC 44813000 */  mtc1    $at, $f6                   ## $f6 = 16384.00
/* 01140 809F7500 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 01144 809F7504 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01148 809F7508 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 0114C 809F750C 46802020 */  cvt.s.w $f0, $f4                   
/* 01150 809F7510 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 01154 809F7514 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01158 809F7518 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0115C 809F751C 46060003 */  div.s   $f0, $f0, $f6              
/* 01160 809F7520 46005402 */  mul.s   $f16, $f10, $f0            
/* 01164 809F7524 46104480 */  add.s   $f18, $f8, $f16            
/* 01168 809F7528 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 0116C 809F752C E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 01170 809F7530 0C27D944 */  jal     func_809F6510              
/* 01174 809F7534 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01178 809F7538 C7A0002C */  lwc1    $f0, 0x002C($sp)           
/* 0117C 809F753C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01180 809F7540 3C188003 */  lui     $t8, %hi(ActorShadow_DrawFunc_Circle)
/* 01184 809F7544 2718B5EC */  addiu   $t8, %lo(ActorShadow_DrawFunc_Circle)
/* 01188 809F7548 46040032 */  c.eq.s  $f0, $f4                   
/* 0118C 809F754C 3C01809F */  lui     $at, %hi(D_809F7F8C)       ## $at = 809F0000
/* 01190 809F7550 4502000A */  bc1fl   .L809F757C                 
/* 01194 809F7554 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01198 809F7558 861900B4 */  lh      $t9, 0x00B4($s0)           ## 000000B4
/* 0119C 809F755C AE1800C0 */  sw      $t8, 0x00C0($s0)           ## 000000C0
/* 011A0 809F7560 3C08809F */  lui     $t0, %hi(func_809F758C)    ## $t0 = 809F0000
/* 011A4 809F7564 A6190030 */  sh      $t9, 0x0030($s0)           ## 00000030
/* 011A8 809F7568 C4267F8C */  lwc1    $f6, %lo(D_809F7F8C)($at)  
/* 011AC 809F756C 2508758C */  addiu   $t0, $t0, %lo(func_809F758C) ## $t0 = 809F758C
/* 011B0 809F7570 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
/* 011B4 809F7574 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 011B8 809F7578 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F757C:
/* 011BC 809F757C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 011C0 809F7580 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 011C4 809F7584 03E00008 */  jr      $ra                        
/* 011C8 809F7588 00000000 */  nop