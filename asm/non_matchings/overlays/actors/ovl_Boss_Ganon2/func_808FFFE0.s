glabel func_808FFFE0
/* 030A0 808FFFE0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 030A4 808FFFE4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 030A8 808FFFE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 030AC 808FFFEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 030B0 808FFFF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 030B4 808FFFF4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 030B8 808FFFF8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 030BC 808FFFFC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 030C0 80900000 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 030C4 80900004 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 030C8 80900008 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 030CC 8090000C 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
/* 030D0 80900010 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 030D4 80900014 54400005 */  bnel    $v0, $zero, .L8090002C     
/* 030D8 80900018 2841001E */  slti    $at, $v0, 0x001E           
/* 030DC 8090001C 0C2400B3 */  jal     func_809002CC              
/* 030E0 80900020 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 030E4 80900024 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
/* 030E8 80900028 2841001E */  slti    $at, $v0, 0x001E           
.L8090002C:
/* 030EC 8090002C 10200013 */  beq     $at, $zero, .L8090007C     
/* 030F0 80900030 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 030F4 80900034 2841000A */  slti    $at, $v0, 0x000A           
/* 030F8 80900038 14200010 */  bne     $at, $zero, .L8090007C     
/* 030FC 8090003C 00022080 */  sll     $a0, $v0,  2               
/* 03100 80900040 00822023 */  subu    $a0, $a0, $v0              
/* 03104 80900044 00042300 */  sll     $a0, $a0, 12               
/* 03108 80900048 00042400 */  sll     $a0, $a0, 16               
/* 0310C 8090004C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03110 80900050 00042403 */  sra     $a0, $a0, 16               
/* 03114 80900054 3C014600 */  lui     $at, 0x4600                ## $at = 46000000
/* 03118 80900058 44812000 */  mtc1    $at, $f4                   ## $f4 = 8192.00
/* 0311C 8090005C 00000000 */  nop
/* 03120 80900060 46040182 */  mul.s   $f6, $f0, $f4              
/* 03124 80900064 4600320D */  trunc.w.s $f8, $f6                   
/* 03128 80900068 44054000 */  mfc1    $a1, $f8                   
/* 0312C 8090006C 00000000 */  nop
/* 03130 80900070 00052C00 */  sll     $a1, $a1, 16               
/* 03134 80900074 10000001 */  beq     $zero, $zero, .L8090007C   
/* 03138 80900078 00052C03 */  sra     $a1, $a1, 16               
.L8090007C:
/* 0313C 8090007C 2604031A */  addiu   $a0, $s0, 0x031A           ## $a0 = 0000031A
/* 03140 80900080 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 03144 80900084 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 03148 80900088 24074000 */  addiu   $a3, $zero, 0x4000         ## $a3 = 00004000
/* 0314C 8090008C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03150 80900090 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03154 80900094 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03158 80900098 03E00008 */  jr      $ra                        
/* 0315C 8090009C 00000000 */  nop