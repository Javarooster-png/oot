glabel func_8087D66C
/* 006AC 8087D66C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006B0 8087D670 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006B4 8087D674 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 006B8 8087D678 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006BC 8087D67C 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 006C0 8087D680 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006C4 8087D684 3C01C1C0 */  lui     $at, 0xC1C0                ## $at = C1C00000
/* 006C8 8087D688 10400002 */  beq     $v0, $zero, .L8087D694     
/* 006CC 8087D68C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 006D0 8087D690 A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
.L8087D694:
/* 006D4 8087D694 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 006D8 8087D698 55E00006 */  bnel    $t7, $zero, .L8087D6B4     
/* 006DC 8087D69C 44810000 */  mtc1    $at, $f0                   ## $f0 = -24.00
/* 006E0 8087D6A0 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 006E4 8087D6A4 44810000 */  mtc1    $at, $f0                   ## $f0 = 24.00
/* 006E8 8087D6A8 10000004 */  beq     $zero, $zero, .L8087D6BC   
/* 006EC 8087D6AC C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 006F0 8087D6B0 44810000 */  mtc1    $at, $f0                   ## $f0 = 24.00
.L8087D6B4:
/* 006F4 8087D6B4 00000000 */  nop
/* 006F8 8087D6B8 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
.L8087D6BC:
/* 006FC 8087D6BC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00700 8087D6C0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00704 8087D6C4 46002180 */  add.s   $f6, $f4, $f0              
/* 00708 8087D6C8 44053000 */  mfc1    $a1, $f6                   
/* 0070C 8087D6CC 0C01DE80 */  jal     Math_ApproxF
              
/* 00710 8087D6D0 00000000 */  nop
/* 00714 8087D6D4 14400003 */  bne     $v0, $zero, .L8087D6E4     
/* 00718 8087D6D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0071C 8087D6DC 0C21F42B */  jal     func_8087D0AC              
/* 00720 8087D6E0 8FA50024 */  lw      $a1, 0x0024($sp)           
.L8087D6E4:
/* 00724 8087D6E4 86180168 */  lh      $t8, 0x0168($s0)           ## 00000168
/* 00728 8087D6E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0072C 8087D6EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00730 8087D6F0 57000007 */  bnel    $t8, $zero, .L8087D710     
/* 00734 8087D6F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00738 8087D6F8 0C21F49A */  jal     func_8087D268              
/* 0073C 8087D6FC 24062856 */  addiu   $a2, $zero, 0x2856         ## $a2 = 00002856
/* 00740 8087D700 3C198088 */  lui     $t9, %hi(func_8087D720)    ## $t9 = 80880000
/* 00744 8087D704 2739D720 */  addiu   $t9, $t9, %lo(func_8087D720) ## $t9 = 8087D720
/* 00748 8087D708 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 0074C 8087D70C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087D710:
/* 00750 8087D710 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00754 8087D714 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00758 8087D718 03E00008 */  jr      $ra                        
/* 0075C 8087D71C 00000000 */  nop