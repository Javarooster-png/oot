glabel func_80885514
/* 00374 80885514 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00378 80885518 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0037C 8088551C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00380 80885520 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00384 80885524 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00388 80885528 0C00B337 */  jal     Flags_GetClear
              
/* 0038C 8088552C 81C50003 */  lb      $a1, 0x0003($t6)           ## 00000003
/* 00390 80885530 10400004 */  beq     $v0, $zero, .L80885544     
/* 00394 80885534 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00398 80885538 3C0F8088 */  lui     $t7, %hi(func_80885604)    ## $t7 = 80880000
/* 0039C 8088553C 25EF5604 */  addiu   $t7, $t7, %lo(func_80885604) ## $t7 = 80885604
/* 003A0 80885540 AF0F014C */  sw      $t7, 0x014C($t8)           ## 0000014C
.L80885544:
/* 003A4 80885544 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A8 80885548 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003AC 8088554C 03E00008 */  jr      $ra                        
/* 003B0 80885550 00000000 */  nop