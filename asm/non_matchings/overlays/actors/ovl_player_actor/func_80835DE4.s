glabel func_80835DE4
/* 03BD4 80835DE4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03BD8 80835DE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03BDC 80835DEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03BE0 80835DF0 80A20154 */  lb      $v0, 0x0154($a1)           ## 00000154
/* 03BE4 80835DF4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 03BE8 80835DF8 0442000E */  bltzl   $v0, .L80835E34            
/* 03BEC 80835DFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03BF0 80835E00 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 03BF4 80835E04 80AE0151 */  lb      $t6, 0x0151($a1)           ## 00000151
/* 03BF8 80835E08 0C20D716 */  jal     func_80835C58              
/* 03BFC 80835E0C A0AE0154 */  sb      $t6, 0x0154($a1)           ## 00000154
/* 03C00 80835E10 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 03C04 80835E14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C08 80835E18 A20F0154 */  sb      $t7, 0x0154($s0)           ## 00000154
/* 03C0C 80835E1C 0C023A7E */  jal     func_8008E9F8              
/* 03C10 80835E20 82050154 */  lb      $a1, 0x0154($s0)           ## 00000154
/* 03C14 80835E24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C18 80835E28 0C023ACB */  jal     func_8008EB2C              
/* 03C1C 80835E2C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03C20 80835E30 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80835E34:
/* 03C24 80835E34 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03C28 80835E38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03C2C 80835E3C 03E00008 */  jr      $ra                        
/* 03C30 80835E40 00000000 */  nop