glabel func_80B29230
/* 00290 80B29230 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00294 80B29234 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B29238:
/* 00298 80B29238 90AE0024 */  lbu     $t6, 0x0024($a1)           ## 00000024
/* 0029C 80B2923C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 002A0 80B29240 00021400 */  sll     $v0, $v0, 16               
/* 002A4 80B29244 15C0001D */  bne     $t6, $zero, .L80B292BC     
/* 002A8 80B29248 00021403 */  sra     $v0, $v0, 16               
/* 002AC 80B2924C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 002B0 80B29250 A0AF0024 */  sb      $t7, 0x0024($a1)           ## 00000024
/* 002B4 80B29254 8CD90000 */  lw      $t9, 0x0000($a2)           ## 00000000
/* 002B8 80B29258 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 002BC 80B2925C 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 002C0 80B29260 ACB90000 */  sw      $t9, 0x0000($a1)           ## 00000000
/* 002C4 80B29264 8CD80004 */  lw      $t8, 0x0004($a2)           ## 00000004
/* 002C8 80B29268 ACB80004 */  sw      $t8, 0x0004($a1)           ## 00000004
/* 002CC 80B2926C 8CD90008 */  lw      $t9, 0x0008($a2)           ## 00000008
/* 002D0 80B29270 ACB90008 */  sw      $t9, 0x0008($a1)           ## 00000008
/* 002D4 80B29274 8CE90000 */  lw      $t1, 0x0000($a3)           ## 00000000
/* 002D8 80B29278 ACA9000C */  sw      $t1, 0x000C($a1)           ## 0000000C
/* 002DC 80B2927C 8CE80004 */  lw      $t0, 0x0004($a3)           ## 00000004
/* 002E0 80B29280 ACA80010 */  sw      $t0, 0x0010($a1)           ## 00000010
/* 002E4 80B29284 8CE90008 */  lw      $t1, 0x0008($a3)           ## 00000008
/* 002E8 80B29288 ACA90014 */  sw      $t1, 0x0014($a1)           ## 00000014
/* 002EC 80B2928C 8FAA0010 */  lw      $t2, 0x0010($sp)           
/* 002F0 80B29290 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 00000000
/* 002F4 80B29294 ACAC0018 */  sw      $t4, 0x0018($a1)           ## 00000018
/* 002F8 80B29298 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 00000004
/* 002FC 80B2929C ACAB001C */  sw      $t3, 0x001C($a1)           ## 0000001C
/* 00300 80B292A0 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 00000008
/* 00304 80B292A4 A4A0002C */  sh      $zero, 0x002C($a1)         ## 0000002C
/* 00308 80B292A8 ACAC0020 */  sw      $t4, 0x0020($a1)           ## 00000020
/* 0030C 80B292AC C7A40014 */  lwc1    $f4, 0x0014($sp)           
/* 00310 80B292B0 46062203 */  div.s   $f8, $f4, $f6              
/* 00314 80B292B4 03E00008 */  jr      $ra                        
/* 00318 80B292B8 E4A80030 */  swc1    $f8, 0x0030($a1)           ## 00000030
.L80B292BC:
/* 0031C 80B292BC 284100B4 */  slti    $at, $v0, 0x00B4           
/* 00320 80B292C0 1420FFDD */  bne     $at, $zero, .L80B29238     
/* 00324 80B292C4 24A5003C */  addiu   $a1, $a1, 0x003C           ## $a1 = 0000003C
/* 00328 80B292C8 03E00008 */  jr      $ra                        
/* 0032C 80B292CC 00000000 */  nop