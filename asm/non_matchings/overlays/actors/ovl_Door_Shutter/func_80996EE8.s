glabel func_80996EE8
/* 00C48 80996EE8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C4C 80996EEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C50 80996EF0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00C54 80996EF4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00C58 80996EF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C5C 80996EFC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C60 80996F00 0C265B82 */  jal     func_80996E08              
/* 00C64 80996F04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C68 80996F08 5040001F */  beql    $v0, $zero, .L80996F88     
/* 00C6C 80996F0C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C70 80996F10 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00C74 80996F14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C78 80996F18 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00C7C 80996F1C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00C80 80996F20 1040000B */  beq     $v0, $zero, .L80996F50     
/* 00C84 80996F24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C88 80996F28 3C058099 */  lui     $a1, %hi(func_80997150)    ## $a1 = 80990000
/* 00C8C 80996F2C 24A57150 */  addiu   $a1, $a1, %lo(func_80997150) ## $a1 = 80997150
/* 00C90 80996F30 0C2658A8 */  jal     func_809962A0              
/* 00C94 80996F34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C98 80996F38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C9C 80996F3C 0C020120 */  jal     func_80080480              
/* 00CA0 80996F40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CA4 80996F44 240EFF9C */  addiu   $t6, $zero, 0xFF9C         ## $t6 = FFFFFF9C
/* 00CA8 80996F48 1000000E */  beq     $zero, $zero, .L80996F84   
/* 00CAC 80996F4C A20E016F */  sb      $t6, 0x016F($s0)           ## 0000016F
.L80996F50:
/* 00CB0 80996F50 0C265A35 */  jal     func_809968D4              
/* 00CB4 80996F54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00CB8 80996F58 5040000B */  beql    $v0, $zero, .L80996F88     
/* 00CBC 80996F5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CC0 80996F60 862F00A4 */  lh      $t7, 0x00A4($s1)           ## 000000A4
/* 00CC4 80996F64 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CC8 80996F68 8E221C44 */  lw      $v0, 0x1C44($s1)           ## 00001C44
/* 00CCC 80996F6C 15E10004 */  bne     $t7, $at, .L80996F80       
/* 00CD0 80996F70 2419FDFE */  addiu   $t9, $zero, 0xFDFE         ## $t9 = FFFFFDFE
/* 00CD4 80996F74 2418FDF5 */  addiu   $t8, $zero, 0xFDF5         ## $t8 = FFFFFDF5
/* 00CD8 80996F78 10000002 */  beq     $zero, $zero, .L80996F84   
/* 00CDC 80996F7C A4580690 */  sh      $t8, 0x0690($v0)           ## 00000690
.L80996F80:
/* 00CE0 80996F80 A4590690 */  sh      $t9, 0x0690($v0)           ## 00000690
.L80996F84:
/* 00CE4 80996F84 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80996F88:
/* 00CE8 80996F88 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00CEC 80996F8C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00CF0 80996F90 03E00008 */  jr      $ra                        
/* 00CF4 80996F94 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000