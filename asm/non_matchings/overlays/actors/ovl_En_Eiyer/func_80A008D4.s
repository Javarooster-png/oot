glabel func_80A008D4
/* 00934 80A008D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00938 80A008D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0093C 80A008DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00940 80A008E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00944 80A008E4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00948 80A008E8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0094C 80A008EC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00950 80A008F0 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00954 80A008F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00958 80A008F8 25CFFFA0 */  addiu   $t7, $t6, 0xFFA0           ## $t7 = FFFFFFA0
/* 0095C 80A008FC 0C280069 */  jal     func_80A001A4              
/* 00960 80A00900 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00964 80A00904 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00968 80A00908 0C280229 */  jal     func_80A008A4              
/* 0096C 80A0090C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00970 80A00910 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00974 80A00914 5300000A */  beql    $t8, $zero, .L80A00940     
/* 00978 80A00918 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0097C 80A0091C 8E080118 */  lw      $t0, 0x0118($s0)           ## 00000118
/* 00980 80A00920 3C1980A0 */  lui     $t9, %hi(func_80A008D4)    ## $t9 = 80A00000
/* 00984 80A00924 273908D4 */  addiu   $t9, $t9, %lo(func_80A008D4) ## $t9 = 80A008D4
/* 00988 80A00928 8D090190 */  lw      $t1, 0x0190($t0)           ## 00000190
/* 0098C 80A0092C 53290004 */  beql    $t9, $t1, .L80A00940       
/* 00990 80A00930 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00994 80A00934 0C2800ED */  jal     func_80A003B4              
/* 00998 80A00938 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0099C 80A0093C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A00940:
/* 009A0 80A00940 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009A4 80A00944 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009A8 80A00948 03E00008 */  jr      $ra                        
/* 009AC 80A0094C 00000000 */  nop