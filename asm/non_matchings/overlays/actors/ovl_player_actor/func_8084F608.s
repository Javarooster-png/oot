glabel func_8084F608
/* 1D3F8 8084F608 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1D3FC 8084F60C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1D400 8084F610 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1D404 8084F614 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1D408 8084F618 84820850 */  lh      $v0, 0x0850($a0)           ## 00000850
/* 1D40C 8084F61C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1D410 8084F620 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D414 8084F624 14400003 */  bne     $v0, $zero, .L8084F634     
/* 1D418 8084F628 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 1D41C 8084F62C 10000003 */  beq     $zero, $zero, .L8084F63C   
/* 1D420 8084F630 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8084F634:
/* 1D424 8084F634 A60E0850 */  sh      $t6, 0x0850($s0)           ## 00000850
/* 1D428 8084F638 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
.L8084F63C:
/* 1D42C 8084F63C 54600012 */  bnel    $v1, $zero, .L8084F688     
/* 1D430 8084F640 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1D434 8084F644 0C20EB75 */  jal     func_8083ADD4              
/* 1D438 8084F648 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1D43C 8084F64C 1040000D */  beq     $v0, $zero, .L8084F684     
/* 1D440 8084F650 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1D444 8084F654 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D448 8084F658 0C2148A0 */  jal     func_80852280              
/* 1D44C 8084F65C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1D450 8084F660 3C068085 */  lui     $a2, %hi(func_80852E14)    ## $a2 = 80850000
/* 1D454 8084F664 24C62E14 */  addiu   $a2, $a2, %lo(func_80852E14) ## $a2 = 80852E14
/* 1D458 8084F668 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1D45C 8084F66C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D460 8084F670 0C20D716 */  jal     func_80835C58              
/* 1D464 8084F674 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1D468 8084F678 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D46C 8084F67C 0C214B85 */  jal     func_80852E14              
/* 1D470 8084F680 8FA50024 */  lw      $a1, 0x0024($sp)           
.L8084F684:
/* 1D474 8084F684 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084F688:
/* 1D478 8084F688 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1D47C 8084F68C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1D480 8084F690 03E00008 */  jr      $ra                        
/* 1D484 8084F694 00000000 */  nop