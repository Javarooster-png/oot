glabel func_80892F50
/* 003F0 80892F50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003F4 80892F54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F8 80892F58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003FC 80892F5C 848E01B4 */  lh      $t6, 0x01B4($a0)           ## 000001B4
/* 00400 80892F60 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00404 80892F64 A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 00408 80892F68 849801B4 */  lh      $t8, 0x01B4($a0)           ## 000001B4
/* 0040C 80892F6C 2B010015 */  slti    $at, $t8, 0x0015           
/* 00410 80892F70 54200004 */  bnel    $at, $zero, .L80892F84     
/* 00414 80892F74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00418 80892F78 0C224B8D */  jal     func_80892E34              
/* 0041C 80892F7C 00000000 */  nop
/* 00420 80892F80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80892F84:
/* 00424 80892F84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00428 80892F88 03E00008 */  jr      $ra                        
/* 0042C 80892F8C 00000000 */  nop