glabel func_8096AB54
/* 01084 8096AB54 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01088 8096AB58 11C0000A */  beq     $t6, $zero, .L8096AB84     
/* 0108C 8096AB5C 00000000 */  nop
/* 01090 8096AB60 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 01094 8096AB64 10400007 */  beq     $v0, $zero, .L8096AB84     
/* 01098 8096AB68 00000000 */  nop
/* 0109C 8096AB6C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 010A0 8096AB70 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 010A4 8096AB74 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 010A8 8096AB78 11E10002 */  beq     $t7, $at, .L8096AB84       
/* 010AC 8096AB7C 00000000 */  nop
/* 010B0 8096AB80 AC980198 */  sw      $t8, 0x0198($a0)           ## 00000198
.L8096AB84:
/* 010B4 8096AB84 03E00008 */  jr      $ra                        
/* 010B8 8096AB88 00000000 */  nop