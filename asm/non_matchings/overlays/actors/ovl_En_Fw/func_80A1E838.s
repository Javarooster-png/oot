glabel func_80A1E838
/* 00298 80A1E838 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0029C 80A1E83C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002A0 80A1E840 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002A4 80A1E844 908E01A5 */  lbu     $t6, 0x01A5($a0)           ## 000001A5
/* 002A8 80A1E848 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002AC 80A1E84C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 002B0 80A1E850 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 002B4 80A1E854 11E00024 */  beq     $t7, $zero, .L80A1E8E8     
/* 002B8 80A1E858 00000000 */  nop
/* 002BC 80A1E85C 8C8201B0 */  lw      $v0, 0x01B0($a0)           ## 000001B0
/* 002C0 80A1E860 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 002C4 80A1E864 8C580024 */  lw      $t8, 0x0024($v0)           ## 00000024
/* 002C8 80A1E868 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 002CC 80A1E86C 33280080 */  andi    $t0, $t9, 0x0080           ## $t0 = 00000000
/* 002D0 80A1E870 51000004 */  beql    $t0, $zero, .L80A1E884     
/* 002D4 80A1E874 A0C00200 */  sb      $zero, 0x0200($a2)         ## 00000200
/* 002D8 80A1E878 10000002 */  beq     $zero, $zero, .L80A1E884   
/* 002DC 80A1E87C A0890200 */  sb      $t1, 0x0200($a0)           ## 00000200
/* 002E0 80A1E880 A0C00200 */  sb      $zero, 0x0200($a2)         ## 00000200
.L80A1E884:
/* 002E4 80A1E884 90CA01A5 */  lbu     $t2, 0x01A5($a2)           ## 000001A5
/* 002E8 80A1E888 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 002EC 80A1E88C 314BFFFD */  andi    $t3, $t2, 0xFFFD           ## $t3 = 00000000
/* 002F0 80A1E890 A0CB01A5 */  sb      $t3, 0x01A5($a2)           ## 000001A5
/* 002F4 80A1E894 0C00D58A */  jal     Actor_ApplyDamage
              
/* 002F8 80A1E898 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 002FC 80A1E89C 1C400010 */  bgtz    $v0, .L80A1E8E0            
/* 00300 80A1E8A0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00304 80A1E8A4 8CC20118 */  lw      $v0, 0x0118($a2)           ## 00000118
/* 00308 80A1E8A8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0030C 80A1E8AC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00310 80A1E8B0 904300AF */  lbu     $v1, 0x00AF($v0)           ## 000000AF
/* 00314 80A1E8B4 28610009 */  slti    $at, $v1, 0x0009           
/* 00318 80A1E8B8 10200007 */  beq     $at, $zero, .L80A1E8D8     
/* 0031C 80A1E8BC 246DFFF8 */  addiu   $t5, $v1, 0xFFF8           ## $t5 = FFFFFFF8
/* 00320 80A1E8C0 0C00CB1F */  jal     func_80032C7C              
/* 00324 80A1E8C4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00328 80A1E8C8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0032C 80A1E8CC 8CCC0118 */  lw      $t4, 0x0118($a2)           ## 00000118
/* 00330 80A1E8D0 10000002 */  beq     $zero, $zero, .L80A1E8DC   
/* 00334 80A1E8D4 A18000AF */  sb      $zero, 0x00AF($t4)         ## 000000AF
.L80A1E8D8:
/* 00338 80A1E8D8 A04D00AF */  sb      $t5, 0x00AF($v0)           ## 000000AF
.L80A1E8DC:
/* 0033C 80A1E8DC A4C00212 */  sh      $zero, 0x0212($a2)         ## 00000212
.L80A1E8E0:
/* 00340 80A1E8E0 10000001 */  beq     $zero, $zero, .L80A1E8E8   
/* 00344 80A1E8E4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A1E8E8:
/* 00348 80A1E8E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0034C 80A1E8EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00350 80A1E8F0 03E00008 */  jr      $ra                        
/* 00354 80A1E8F4 00000000 */  nop