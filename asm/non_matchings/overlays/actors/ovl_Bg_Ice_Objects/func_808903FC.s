glabel func_808903FC
/* 00BEC 808903FC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00BF0 80890400 C4840150 */  lwc1    $f4, 0x0150($a0)           ## 00000150
/* 00BF4 80890404 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00BF8 80890408 46040032 */  c.eq.s  $f0, $f4                   
/* 00BFC 8089040C 00000000 */  nop
/* 00C00 80890410 45010006 */  bc1t    .L8089042C                 
/* 00C04 80890414 00000000 */  nop
/* 00C08 80890418 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 00C0C 8089041C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00C10 80890420 01C17824 */  and     $t7, $t6, $at              
/* 00C14 80890424 AC4F0680 */  sw      $t7, 0x0680($v0)           ## 00000680
/* 00C18 80890428 E4800150 */  swc1    $f0, 0x0150($a0)           ## 00000150
.L8089042C:
/* 00C1C 8089042C 03E00008 */  jr      $ra                        
/* 00C20 80890430 00000000 */  nop