glabel func_80A578FC
/* 006FC 80A578FC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00700 80A57900 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00704 80A57904 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00708 80A57908 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0070C 80A5790C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00710 80A57910 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00714 80A57914 C4840168 */  lwc1    $f4, 0x0168($a0)           ## 00000168
/* 00718 80A57918 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0071C 80A5791C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00720 80A57920 4606203C */  c.lt.s  $f4, $f6                   
/* 00724 80A57924 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00728 80A57928 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 0072C 80A5792C 45000002 */  bc1f    .L80A57938                 
/* 00730 80A57930 00000000 */  nop
/* 00734 80A57934 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80A57938:
/* 00738 80A57938 50600006 */  beql    $v1, $zero, .L80A57954     
/* 0073C 80A5793C AFA3002C */  sw      $v1, 0x002C($sp)           
/* 00740 80A57940 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00744 80A57944 10400002 */  beq     $v0, $zero, .L80A57950     
/* 00748 80A57948 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0074C 80A5794C A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80A57950:
/* 00750 80A57950 AFA3002C */  sw      $v1, 0x002C($sp)           
.L80A57954:
/* 00754 80A57954 0C0295B2 */  jal     func_800A56C8              
/* 00758 80A57958 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0075C 80A5795C 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00760 80A57960 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 00764 80A57964 10400005 */  beq     $v0, $zero, .L80A5797C     
/* 00768 80A57968 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0076C 80A5796C 920F0225 */  lbu     $t7, 0x0225($s0)           ## 00000225
/* 00770 80A57970 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00774 80A57974 1000000C */  beq     $zero, $zero, .L80A579A8   
/* 00778 80A57978 A2180225 */  sb      $t8, 0x0225($s0)           ## 00000225
.L80A5797C:
/* 0077C 80A5797C 0C0295B2 */  jal     func_800A56C8              
/* 00780 80A57980 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 00784 80A57984 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00788 80A57988 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 0078C 80A5798C 10400006 */  beq     $v0, $zero, .L80A579A8     
/* 00790 80A57990 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00794 80A57994 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00798 80A57998 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 0079C 80A5799C 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 007A0 80A579A0 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 007A4 80A579A4 00000000 */  nop
.L80A579A8:
/* 007A8 80A579A8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 007AC 80A579AC 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 007B0 80A579B0 460C003C */  c.lt.s  $f0, $f12                  
/* 007B4 80A579B4 00000000 */  nop
/* 007B8 80A579B8 45020004 */  bc1fl   .L80A579CC                 
/* 007BC 80A579BC 44817000 */  mtc1    $at, $f14                  ## $f14 = 12.00
/* 007C0 80A579C0 1000000B */  beq     $zero, $zero, .L80A579F0   
/* 007C4 80A579C4 46006006 */  mov.s   $f0, $f12                  
/* 007C8 80A579C8 44817000 */  mtc1    $at, $f14                  ## $f14 = 12.00
.L80A579CC:
/* 007CC 80A579CC 00000000 */  nop
/* 007D0 80A579D0 4600703C */  c.lt.s  $f14, $f0                  
/* 007D4 80A579D4 00000000 */  nop
/* 007D8 80A579D8 45020004 */  bc1fl   .L80A579EC                 
/* 007DC 80A579DC 46000086 */  mov.s   $f2, $f0                   
/* 007E0 80A579E0 10000002 */  beq     $zero, $zero, .L80A579EC   
/* 007E4 80A579E4 46007086 */  mov.s   $f2, $f14                  
/* 007E8 80A579E8 46000086 */  mov.s   $f2, $f0                   
.L80A579EC:
/* 007EC 80A579EC 46001006 */  mov.s   $f0, $f2                   
.L80A579F0:
/* 007F0 80A579F0 460C0201 */  sub.s   $f8, $f0, $f12             
/* 007F4 80A579F4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 007F8 80A579F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 007FC 80A579FC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00800 80A57A00 460C4282 */  mul.s   $f10, $f8, $f12            
/* 00804 80A57A04 46105480 */  add.s   $f18, $f10, $f16           
/* 00808 80A57A08 4600910D */  trunc.w.s $f4, $f18                  
/* 0080C 80A57A0C 44082000 */  mfc1    $t0, $f4                   
/* 00810 80A57A10 00000000 */  nop
/* 00814 80A57A14 A6080256 */  sh      $t0, 0x0256($s0)           ## 00000256
/* 00818 80A57A18 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 0081C 80A57A1C 1520000C */  bne     $t1, $zero, .L80A57A50     
/* 00820 80A57A20 00000000 */  nop
/* 00824 80A57A24 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00828 80A57A28 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 0082C 80A57A2C 00000000 */  nop
/* 00830 80A57A30 4608303C */  c.lt.s  $f6, $f8                   
/* 00834 80A57A34 00000000 */  nop
/* 00838 80A57A38 45000005 */  bc1f    .L80A57A50                 
/* 0083C 80A57A3C 00000000 */  nop
/* 00840 80A57A40 0C295D70 */  jal     func_80A575C0              
/* 00844 80A57A44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00848 80A57A48 10000021 */  beq     $zero, $zero, .L80A57AD0   
/* 0084C 80A57A4C 8FAB002C */  lw      $t3, 0x002C($sp)           
.L80A57A50:
/* 00850 80A57A50 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00854 80A57A54 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00858 80A57A58 1040001C */  beq     $v0, $zero, .L80A57ACC     
/* 0085C 80A57A5C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00860 80A57A60 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 00864 80A57A64 44815000 */  mtc1    $at, $f10                  ## $f10 = 120.00
/* 00868 80A57A68 00000000 */  nop
/* 0086C 80A57A6C 460A103C */  c.lt.s  $f2, $f10                  
/* 00870 80A57A70 00000000 */  nop
/* 00874 80A57A74 45020006 */  bc1fl   .L80A57A90                 
/* 00878 80A57A78 860A0194 */  lh      $t2, 0x0194($s0)           ## 00000194
/* 0087C 80A57A7C 0C295D70 */  jal     func_80A575C0              
/* 00880 80A57A80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00884 80A57A84 10000012 */  beq     $zero, $zero, .L80A57AD0   
/* 00888 80A57A88 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 0088C 80A57A8C 860A0194 */  lh      $t2, 0x0194($s0)           ## 00000194
.L80A57A90:
/* 00890 80A57A90 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 00894 80A57A94 1540000B */  bne     $t2, $zero, .L80A57AC4     
/* 00898 80A57A98 00000000 */  nop
/* 0089C 80A57A9C 44818000 */  mtc1    $at, $f16                  ## $f16 = 320.00
/* 008A0 80A57AA0 00000000 */  nop
/* 008A4 80A57AA4 4602803C */  c.lt.s  $f16, $f2                  
/* 008A8 80A57AA8 00000000 */  nop
/* 008AC 80A57AAC 45000005 */  bc1f    .L80A57AC4                 
/* 008B0 80A57AB0 00000000 */  nop
/* 008B4 80A57AB4 0C295D35 */  jal     func_80A574D4              
/* 008B8 80A57AB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008BC 80A57ABC 10000004 */  beq     $zero, $zero, .L80A57AD0   
/* 008C0 80A57AC0 8FAB002C */  lw      $t3, 0x002C($sp)           
.L80A57AC4:
/* 008C4 80A57AC4 0C295D56 */  jal     func_80A57558              
/* 008C8 80A57AC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A57ACC:
/* 008CC 80A57ACC 8FAB002C */  lw      $t3, 0x002C($sp)           
.L80A57AD0:
/* 008D0 80A57AD0 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 008D4 80A57AD4 5160001E */  beql    $t3, $zero, .L80A57B50     
/* 008D8 80A57AD8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008DC 80A57ADC C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 008E0 80A57AE0 44819000 */  mtc1    $at, $f18                  ## $f18 = 160.00
/* 008E4 80A57AE4 00000000 */  nop
/* 008E8 80A57AE8 4602903C */  c.lt.s  $f18, $f2                  
/* 008EC 80A57AEC 00000000 */  nop
/* 008F0 80A57AF0 45020017 */  bc1fl   .L80A57B50                 
/* 008F4 80A57AF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008F8 80A57AF8 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 008FC 80A57AFC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00900 80A57B00 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 00904 80A57B04 46000005 */  abs.s   $f0, $f0                   
/* 00908 80A57B08 4604003C */  c.lt.s  $f0, $f4                   
/* 0090C 80A57B0C 00000000 */  nop
/* 00910 80A57B10 4502000F */  bc1fl   .L80A57B50                 
/* 00914 80A57B14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00918 80A57B18 860C0194 */  lh      $t4, 0x0194($s0)           ## 00000194
/* 0091C 80A57B1C 3C0143F0 */  lui     $at, 0x43F0                ## $at = 43F00000
/* 00920 80A57B20 51800007 */  beql    $t4, $zero, .L80A57B40     
/* 00924 80A57B24 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00928 80A57B28 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0092C 80A57B2C 00000000 */  nop
/* 00930 80A57B30 4606103C */  c.lt.s  $f2, $f6                   
/* 00934 80A57B34 00000000 */  nop
/* 00938 80A57B38 45000004 */  bc1f    .L80A57B4C                 
/* 0093C 80A57B3C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80A57B40:
/* 00940 80A57B40 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00944 80A57B44 00000000 */  nop
/* 00948 80A57B48 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80A57B4C:
/* 0094C 80A57B4C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A57B50:
/* 00950 80A57B50 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00954 80A57B54 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00958 80A57B58 03E00008 */  jr      $ra                        
/* 0095C 80A57B5C 00000000 */  nop