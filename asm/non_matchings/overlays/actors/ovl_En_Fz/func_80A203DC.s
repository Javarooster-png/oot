.late_rodata
glabel D_80A21CCC
    .float 0.1

.text
glabel func_80A203DC
/* 0061C 80A203DC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00620 80A203E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00624 80A203E4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00628 80A203E8 848E0240 */  lh      $t6, 0x0240($a0)           ## 00000240
/* 0062C 80A203EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00630 80A203F0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00634 80A203F4 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 00638 80A203F8 55E00025 */  bnel    $t7, $zero, .L80A20490     
/* 0063C 80A203FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00640 80A20400 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 00644 80A20404 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00648 80A20408 00000000 */  nop
/* 0064C 80A2040C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00650 80A20410 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00654 80A20414 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 00658 80A20418 46040180 */  add.s   $f6, $f0, $f4              
/* 0065C 80A2041C E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 00660 80A20420 C608024C */  lwc1    $f8, 0x024C($s0)           ## 0000024C
/* 00664 80A20424 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00668 80A20428 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 0066C 80A2042C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00670 80A20430 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00674 80A20434 3C0180A2 */  lui     $at, %hi(D_80A21CCC)       ## $at = 80A20000
/* 00678 80A20438 460A0400 */  add.s   $f16, $f0, $f10            
/* 0067C 80A2043C C4321CCC */  lwc1    $f18, %lo(D_80A21CCC)($at) 
/* 00680 80A20440 3C0140F0 */  lui     $at, 0x40F0                ## $at = 40F00000
/* 00684 80A20444 44816000 */  mtc1    $at, $f12                  ## $f12 = 7.50
/* 00688 80A20448 E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 0068C 80A2044C E7A20034 */  swc1    $f2, 0x0034($sp)           
/* 00690 80A20450 E7A2002C */  swc1    $f2, 0x002C($sp)           
/* 00694 80A20454 E7A20040 */  swc1    $f2, 0x0040($sp)           
/* 00698 80A20458 E7A2003C */  swc1    $f2, 0x003C($sp)           
/* 0069C 80A2045C E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 006A0 80A20460 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 006A4 80A20464 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 006A8 80A20468 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 006AC 80A2046C 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 006B0 80A20470 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006B4 80A20474 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFF4
/* 006B8 80A20478 46040180 */  add.s   $f6, $f0, $f4              
/* 006BC 80A2047C 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFE8
/* 006C0 80A20480 27A7002C */  addiu   $a3, $sp, 0x002C           ## $a3 = FFFFFFDC
/* 006C4 80A20484 0C288517 */  jal     func_80A2145C              
/* 006C8 80A20488 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 006CC 80A2048C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A20490:
/* 006D0 80A20490 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006D4 80A20494 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 006D8 80A20498 03E00008 */  jr      $ra                        
/* 006DC 80A2049C 00000000 */  nop