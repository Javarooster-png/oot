glabel func_80B07878
/* 00338 80B07878 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0033C 80B0787C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00340 80B07880 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00344 80B07884 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00348 80B07888 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0034C 80B0788C 00A12021 */  addu    $a0, $a1, $at              
/* 00350 80B07890 90C502A4 */  lbu     $a1, 0x02A4($a2)           ## 000002A4
/* 00354 80B07894 0C026062 */  jal     Object_IsLoaded
              
/* 00358 80B07898 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0035C 80B0789C 10400006 */  beq     $v0, $zero, .L80B078B8     
/* 00360 80B078A0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00364 80B078A4 90CE02A4 */  lbu     $t6, 0x02A4($a2)           ## 000002A4
/* 00368 80B078A8 3C0F80B0 */  lui     $t7, %hi(func_80B07734)    ## $t7 = 80B00000
/* 0036C 80B078AC 25EF7734 */  addiu   $t7, $t7, %lo(func_80B07734) ## $t7 = 80B07734
/* 00370 80B078B0 ACCF02B8 */  sw      $t7, 0x02B8($a2)           ## 000002B8
/* 00374 80B078B4 A0CE001E */  sb      $t6, 0x001E($a2)           ## 0000001E
.L80B078B8:
/* 00378 80B078B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0037C 80B078BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00380 80B078C0 03E00008 */  jr      $ra                        
/* 00384 80B078C4 00000000 */  nop