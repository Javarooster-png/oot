glabel func_80B9E4A8
/* 01298 80B9E4A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0129C 80B9E4AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 012A0 80B9E4B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 012A4 80B9E4B4 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 012A8 80B9E4B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012AC 80B9E4BC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 012B0 80B9E4C0 00031103 */  sra     $v0, $v1,  4               
/* 012B4 80B9E4C4 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 012B8 80B9E4C8 10400004 */  beq     $v0, $zero, .L80B9E4DC     
/* 012BC 80B9E4CC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 012C0 80B9E4D0 1041000C */  beq     $v0, $at, .L80B9E504       
/* 012C4 80B9E4D4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 012C8 80B9E4D8 1441001D */  bne     $v0, $at, .L80B9E550       
.L80B9E4DC:
/* 012CC 80B9E4DC 00032A03 */  sra     $a1, $v1,  8               
/* 012D0 80B9E4E0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 012D4 80B9E4E4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 012D8 80B9E4E8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 012DC 80B9E4EC 14400018 */  bne     $v0, $zero, .L80B9E550     
/* 012E0 80B9E4F0 00000000 */  nop
/* 012E4 80B9E4F4 0C2E795B */  jal     func_80B9E56C              
/* 012E8 80B9E4F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012EC 80B9E4FC 10000014 */  beq     $zero, $zero, .L80B9E550   
/* 012F0 80B9E500 00000000 */  nop
.L80B9E504:
/* 012F4 80B9E504 920E0191 */  lbu     $t6, 0x0191($s0)           ## 00000191
/* 012F8 80B9E508 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 012FC 80B9E50C 11E00010 */  beq     $t7, $zero, .L80B9E550     
/* 01300 80B9E510 00000000 */  nop
/* 01304 80B9E514 9218017F */  lbu     $t8, 0x017F($s0)           ## 0000017F
/* 01308 80B9E518 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 0130C 80B9E51C 1720000C */  bne     $t9, $zero, .L80B9E550     
/* 01310 80B9E520 00000000 */  nop
/* 01314 80B9E524 8608016A */  lh      $t0, 0x016A($s0)           ## 0000016A
/* 01318 80B9E528 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 0131C 80B9E52C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01320 80B9E530 1D000007 */  bgtz    $t0, .L80B9E550            
/* 01324 80B9E534 00000000 */  nop
/* 01328 80B9E538 A609016A */  sh      $t1, 0x016A($s0)           ## 0000016A
/* 0132C 80B9E53C 0C2E795B */  jal     func_80B9E56C              
/* 01330 80B9E540 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01334 80B9E544 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01338 80B9E548 0C2E757E */  jal     func_80B9D5F8              
/* 0133C 80B9E54C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9E550:
/* 01340 80B9E550 0C2E75A0 */  jal     func_80B9D680              
/* 01344 80B9E554 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01348 80B9E558 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0134C 80B9E55C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01350 80B9E560 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01354 80B9E564 03E00008 */  jr      $ra                        
/* 01358 80B9E568 00000000 */  nop