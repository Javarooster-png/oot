glabel func_8096BB5C
/* 0208C 8096BB5C 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 02090 8096BB60 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 02094 8096BB64 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02098 8096BB68 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 0209C 8096BB6C 85CF1476 */  lh      $t7, 0x1476($t6)           ## 80161476
/* 020A0 8096BB70 C48401A4 */  lwc1    $f4, 0x01A4($a0)           ## 000001A4
/* 020A4 8096BB74 2418001A */  addiu   $t8, $zero, 0x001A         ## $t8 = 0000001A
/* 020A8 8096BB78 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 020AC 8096BB7C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 020B0 8096BB80 46803220 */  cvt.s.w $f8, $f6                   
/* 020B4 8096BB84 460A4400 */  add.s   $f16, $f8, $f10            
/* 020B8 8096BB88 4604803E */  c.le.s  $f16, $f4                  
/* 020BC 8096BB8C 00000000 */  nop
/* 020C0 8096BB90 45000003 */  bc1f    .L8096BBA0                 
/* 020C4 8096BB94 00000000 */  nop
/* 020C8 8096BB98 AC980198 */  sw      $t8, 0x0198($a0)           ## 00000198
/* 020CC 8096BB9C AC99019C */  sw      $t9, 0x019C($a0)           ## 0000019C
.L8096BBA0:
/* 020D0 8096BBA0 03E00008 */  jr      $ra                        
/* 020D4 8096BBA4 00000000 */  nop