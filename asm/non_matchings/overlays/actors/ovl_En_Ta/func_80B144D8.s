glabel func_80B144D8
/* 00A38 80B144D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A3C 80B144DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A40 80B144E0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A44 80B144E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A48 80B144E8 0C00BCCD */  jal     func_8002F334              
/* 00A4C 80B144EC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A50 80B144F0 50400009 */  beql    $v0, $zero, .L80B14518     
/* 00A54 80B144F4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A58 80B144F8 0C2C5104 */  jal     func_80B14410              
/* 00A5C 80B144FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A60 80B14500 3C0F80B1 */  lui     $t7, %hi(func_80B16700)    ## $t7 = 80B10000
/* 00A64 80B14504 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00A68 80B14508 25EF6700 */  addiu   $t7, $t7, %lo(func_80B16700) ## $t7 = 80B16700
/* 00A6C 80B1450C A60E02B6 */  sh      $t6, 0x02B6($s0)           ## 000002B6
/* 00A70 80B14510 AE0F02B0 */  sw      $t7, 0x02B0($s0)           ## 000002B0
/* 00A74 80B14514 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80B14518:
/* 00A78 80B14518 0C042F6F */  jal     func_8010BDBC              
/* 00A7C 80B1451C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00A80 80B14520 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00A84 80B14524 14410008 */  bne     $v0, $at, .L80B14548       
/* 00A88 80B14528 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00A8C 80B1452C 3C0580B1 */  lui     $a1, %hi(func_80B1448C)    ## $a1 = 80B10000
/* 00A90 80B14530 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 00A94 80B14534 A61802B4 */  sh      $t8, 0x02B4($s0)           ## 000002B4
/* 00A98 80B14538 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 00A9C 80B1453C 24A5448C */  addiu   $a1, $a1, %lo(func_80B1448C) ## $a1 = 80B1448C
/* 00AA0 80B14540 0C2C4EA8 */  jal     func_80B13AA0              
/* 00AA4 80B14544 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B14548:
/* 00AA8 80B14548 0C2C5092 */  jal     func_80B14248              
/* 00AAC 80B1454C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 80B14550 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
/* 00AB4 80B14554 37280004 */  ori     $t0, $t9, 0x0004           ## $t0 = 00000004
/* 00AB8 80B14558 A60802E0 */  sh      $t0, 0x02E0($s0)           ## 000002E0
/* 00ABC 80B1455C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AC0 80B14560 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AC4 80B14564 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AC8 80B14568 03E00008 */  jr      $ra                        
/* 00ACC 80B1456C 00000000 */  nop