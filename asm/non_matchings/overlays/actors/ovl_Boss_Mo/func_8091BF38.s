glabel func_8091BF38
/* 00438 8091BF38 3C0E8092 */  lui     $t6, %hi(D_80926080)       ## $t6 = 80920000
/* 0043C 8091BF3C 25CE6080 */  addiu   $t6, $t6, %lo(D_80926080)  ## $t6 = 80926080
/* 00440 8091BF40 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80926080
/* 00444 8091BF44 27BDFFF0 */  addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
/* 00448 8091BF48 27A30000 */  addiu   $v1, $sp, 0x0000           ## $v1 = FFFFFFF0
/* 0044C 8091BF4C AC780000 */  sw      $t8, 0x0000($v1)           ## FFFFFFF0
/* 00450 8091BF50 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80926084
/* 00454 8091BF54 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 00458 8091BF58 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0045C 8091BF5C AC6F0004 */  sw      $t7, 0x0004($v1)           ## FFFFFFF4
/* 00460 8091BF60 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80926088
/* 00464 8091BF64 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 00468 8091BF68 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 0046C 8091BF6C AC780008 */  sw      $t8, 0x0008($v1)           ## FFFFFFF8
.L8091BF70:
/* 00470 8091BF70 90990024 */  lbu     $t9, 0x0024($a0)           ## 00000024
/* 00474 8091BF74 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00478 8091BF78 00021400 */  sll     $v0, $v0, 16               
/* 0047C 8091BF7C 1720001A */  bne     $t9, $zero, .L8091BFE8     
/* 00480 8091BF80 00021403 */  sra     $v0, $v0, 16               
/* 00484 8091BF84 A0880024 */  sb      $t0, 0x0024($a0)           ## 00000024
/* 00488 8091BF88 A0890026 */  sb      $t1, 0x0026($a0)           ## 00000026
/* 0048C 8091BF8C 8CAB0000 */  lw      $t3, 0x0000($a1)           ## 00000000
/* 00490 8091BF90 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00494 8091BF94 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00498 8091BF98 AC8B0000 */  sw      $t3, 0x0000($a0)           ## 00000000
/* 0049C 8091BF9C 8CAA0004 */  lw      $t2, 0x0004($a1)           ## 00000004
/* 004A0 8091BFA0 AC8A0004 */  sw      $t2, 0x0004($a0)           ## 00000004
/* 004A4 8091BFA4 8CAB0008 */  lw      $t3, 0x0008($a1)           ## 00000008
/* 004A8 8091BFA8 AC8B0008 */  sw      $t3, 0x0008($a0)           ## 00000008
/* 004AC 8091BFAC 8C6D0000 */  lw      $t5, 0x0000($v1)           ## FFFFFFF0
/* 004B0 8091BFB0 AC8D000C */  sw      $t5, 0x000C($a0)           ## 0000000C
/* 004B4 8091BFB4 8C6C0004 */  lw      $t4, 0x0004($v1)           ## FFFFFFF4
/* 004B8 8091BFB8 AC8C0010 */  sw      $t4, 0x0010($a0)           ## 00000010
/* 004BC 8091BFBC 8C6D0008 */  lw      $t5, 0x0008($v1)           ## FFFFFFF8
/* 004C0 8091BFC0 AC8D0014 */  sw      $t5, 0x0014($a0)           ## 00000014
/* 004C4 8091BFC4 8C6F0000 */  lw      $t7, 0x0000($v1)           ## FFFFFFF0
/* 004C8 8091BFC8 AC8F0018 */  sw      $t7, 0x0018($a0)           ## 00000018
/* 004CC 8091BFCC 8C6E0004 */  lw      $t6, 0x0004($v1)           ## FFFFFFF4
/* 004D0 8091BFD0 AC8E001C */  sw      $t6, 0x001C($a0)           ## 0000001C
/* 004D4 8091BFD4 8C6F0008 */  lw      $t7, 0x0008($v1)           ## FFFFFFF8
/* 004D8 8091BFD8 E48C0030 */  swc1    $f12, 0x0030($a0)          ## 00000030
/* 004DC 8091BFDC E4840038 */  swc1    $f4, 0x0038($a0)           ## 00000038
/* 004E0 8091BFE0 10000004 */  beq     $zero, $zero, .L8091BFF4   
/* 004E4 8091BFE4 AC8F0020 */  sw      $t7, 0x0020($a0)           ## 00000020
.L8091BFE8:
/* 004E8 8091BFE8 28410122 */  slti    $at, $v0, 0x0122           
/* 004EC 8091BFEC 1420FFE0 */  bne     $at, $zero, .L8091BF70     
/* 004F0 8091BFF0 24840040 */  addiu   $a0, $a0, 0x0040           ## $a0 = 00000040
.L8091BFF4:
/* 004F4 8091BFF4 03E00008 */  jr      $ra                        
/* 004F8 8091BFF8 27BD0010 */  addiu   $sp, $sp, 0x0010           ## $sp = 00000000