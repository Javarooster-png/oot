glabel func_80B16700
/* 02C60 80B16700 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C64 80B16704 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C68 80B16708 848202B6 */  lh      $v0, 0x02B6($a0)           ## 000002B6
/* 02C6C 80B1670C 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 02C70 80B16710 00021400 */  sll     $v0, $v0, 16               
/* 02C74 80B16714 00021403 */  sra     $v0, $v0, 16               
/* 02C78 80B16718 50400004 */  beql    $v0, $zero, .L80B1672C     
/* 02C7C 80B1671C 848202B4 */  lh      $v0, 0x02B4($a0)           ## 000002B4
/* 02C80 80B16720 10000023 */  beq     $zero, $zero, .L80B167B0   
/* 02C84 80B16724 A48202B6 */  sh      $v0, 0x02B6($a0)           ## 000002B6
/* 02C88 80B16728 848202B4 */  lh      $v0, 0x02B4($a0)           ## 000002B4
.L80B1672C:
/* 02C8C 80B1672C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02C90 80B16730 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000000
/* 02C94 80B16734 00021400 */  sll     $v0, $v0, 16               
/* 02C98 80B16738 00021403 */  sra     $v0, $v0, 16               
/* 02C9C 80B1673C 28410003 */  slti    $at, $v0, 0x0003           
/* 02CA0 80B16740 5420001A */  bnel    $at, $zero, .L80B167AC     
/* 02CA4 80B16744 A48202B4 */  sh      $v0, 0x02B4($a0)           ## 000002B4
/* 02CA8 80B16748 848302CE */  lh      $v1, 0x02CE($a0)           ## 000002CE
/* 02CAC 80B1674C A48002B4 */  sh      $zero, 0x02B4($a0)         ## 000002B4
/* 02CB0 80B16750 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02CB4 80B16754 18600003 */  blez    $v1, .L80B16764            
/* 02CB8 80B16758 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 02CBC 80B1675C 1000000D */  beq     $zero, $zero, .L80B16794   
/* 02CC0 80B16760 A48E02CE */  sh      $t6, 0x02CE($a0)           ## 000002CE
.L80B16764:
/* 02CC4 80B16764 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02CC8 80B16768 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02CCC 80B1676C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02CD0 80B16770 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 02CD4 80B16774 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02CD8 80B16778 46040182 */  mul.s   $f6, $f0, $f4              
/* 02CDC 80B1677C 4600320D */  trunc.w.s $f8, $f6                   
/* 02CE0 80B16780 44024000 */  mfc1    $v0, $f8                   
/* 02CE4 80B16784 00000000 */  nop
/* 02CE8 80B16788 24420014 */  addiu   $v0, $v0, 0x0014           ## $v0 = 00000014
/* 02CEC 80B1678C 00021400 */  sll     $v0, $v0, 16               
/* 02CF0 80B16790 00021403 */  sra     $v0, $v0, 16               
.L80B16794:
/* 02CF4 80B16794 3C1880B1 */  lui     $t8, %hi(func_80B166CC)    ## $t8 = 80B10000
/* 02CF8 80B16798 271866CC */  addiu   $t8, $t8, %lo(func_80B166CC) ## $t8 = 80B166CC
/* 02CFC 80B1679C A48202B6 */  sh      $v0, 0x02B6($a0)           ## 000002B6
/* 02D00 80B167A0 10000003 */  beq     $zero, $zero, .L80B167B0   
/* 02D04 80B167A4 AC9802B0 */  sw      $t8, 0x02B0($a0)           ## 000002B0
/* 02D08 80B167A8 A48202B4 */  sh      $v0, 0x02B4($a0)           ## 000002B4
.L80B167AC:
/* 02D0C 80B167AC A49902B6 */  sh      $t9, 0x02B6($a0)           ## 000002B6
.L80B167B0:
/* 02D10 80B167B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D14 80B167B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D18 80B167B8 03E00008 */  jr      $ra                        
/* 02D1C 80B167BC 00000000 */  nop