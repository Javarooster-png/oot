glabel func_8097A2B4
/* 01984 8097A2B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01988 8097A2B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0198C 8097A2BC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01990 8097A2C0 8C8E017C */  lw      $t6, 0x017C($a0)           ## 0000017C
/* 01994 8097A2C4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01998 8097A2C8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0199C 8097A2CC 15C00010 */  bne     $t6, $zero, .L8097A310     
/* 019A0 8097A2D0 00451021 */  addu    $v0, $v0, $a1              
/* 019A4 8097A2D4 8C421DE4 */  lw      $v0, 0x1DE4($v0)           ## 00011DE4
/* 019A8 8097A2D8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 019AC 8097A2DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 019B0 8097A2E0 0041001B */  divu    $zero, $v0, $at            
/* 019B4 8097A2E4 00001810 */  mfhi    $v1                        
/* 019B8 8097A2E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 019BC 8097A2EC 14610006 */  bne     $v1, $at, .L8097A308       
/* 019C0 8097A2F0 3C058098 */  lui     $a1, %hi(D_8097BE94)       ## $a1 = 80980000
/* 019C4 8097A2F4 24A5BE94 */  addiu   $a1, $a1, %lo(D_8097BE94)  ## $a1 = 8097BE94
/* 019C8 8097A2F8 3C064396 */  lui     $a2, 0x4396                ## $a2 = 43960000
/* 019CC 8097A2FC 0C25E2BF */  jal     func_80978AFC              
/* 019D0 8097A300 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 019D4 8097A304 8FA70018 */  lw      $a3, 0x0018($sp)           
.L8097A308:
/* 019D8 8097A308 0C25E7E7 */  jal     func_80979F9C              
/* 019DC 8097A30C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L8097A310:
/* 019E0 8097A310 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 019E4 8097A314 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 019E8 8097A318 03E00008 */  jr      $ra                        
/* 019EC 8097A31C 00000000 */  nop