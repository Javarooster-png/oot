glabel func_80835C08
/* 039F8 80835C08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 039FC 80835C0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A00 80835C10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03A04 80835C14 0C20D600 */  jal     func_80835800              
/* 03A08 80835C18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03A0C 80835C1C 14400009 */  bne     $v0, $zero, .L80835C44     
/* 03A10 80835C20 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 03A14 80835C24 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03A18 80835C28 0C028EF0 */  jal     func_800A3BC0              
/* 03A1C 80835C2C 24A506C8 */  addiu   $a1, $a1, 0x06C8           ## $a1 = 000006C8
/* 03A20 80835C30 10400004 */  beq     $v0, $zero, .L80835C44     
/* 03A24 80835C34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03A28 80835C38 3C058083 */  lui     $a1, %hi(func_80835800)    ## $a1 = 80830000
/* 03A2C 80835C3C 0C20CD8E */  jal     func_80833638              
/* 03A30 80835C40 24A55800 */  addiu   $a1, $a1, %lo(func_80835800) ## $a1 = 80835800
.L80835C44:
/* 03A34 80835C44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A38 80835C48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A3C 80835C4C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 03A40 80835C50 03E00008 */  jr      $ra                        
/* 03A44 80835C54 00000000 */  nop