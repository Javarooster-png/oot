glabel func_80A6E7BC
/* 0041C 80A6E7BC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00420 80A6E7C0 AFB10028 */  sw      $s1, 0x0028($sp)
/* 00424 80A6E7C4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00428 80A6E7C8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0042C 80A6E7CC AFB00024 */  sw      $s0, 0x0024($sp)
/* 00430 80A6E7D0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00434 80A6E7D4 0C042F6F */  jal     func_8010BDBC
/* 00438 80A6E7D8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0043C 80A6E7DC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00440 80A6E7E0 54410033 */  bnel    $v0, $at, .L80A6E8B0
/* 00444 80A6E7E4 962E02A8 */  lhu     $t6, 0x02A8($s1)           ## 000002A8
/* 00448 80A6E7E8 0C041AF2 */  jal     func_80106BC8
/* 0044C 80A6E7EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00450 80A6E7F0 1040002E */  beq     $v0, $zero, .L80A6E8AC
/* 00454 80A6E7F4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00458 80A6E7F8 00501021 */  addu    $v0, $v0, $s0
/* 0045C 80A6E7FC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00460 80A6E800 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00464 80A6E804 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00468 80A6E808 10400005 */  beq     $v0, $zero, .L80A6E820
/* 0046C 80A6E80C 3C0580A7 */  lui     $a1, %hi(func_80A6E740)    ## $a1 = 80A70000
/* 00470 80A6E810 10410010 */  beq     $v0, $at, .L80A6E854
/* 00474 80A6E814 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00478 80A6E818 10000014 */  beq     $zero, $zero, .L80A6E86C
/* 0047C 80A6E81C 00000000 */  nop
.L80A6E820:
/* 00480 80A6E820 0C29B8E8 */  jal     func_80A6E3A0
/* 00484 80A6E824 24A5E740 */  addiu   $a1, $a1, %lo(func_80A6E740) ## $a1 = 80A6E740
/* 00488 80A6E828 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0048C 80A6E82C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00490 80A6E830 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00494 80A6E834 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00498 80A6E838 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0049C 80A6E83C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 004A0 80A6E840 2406001F */  addiu   $a2, $zero, 0x001F         ## $a2 = 0000001F
/* 004A4 80A6E844 0C00BD0D */  jal     func_8002F434
/* 004A8 80A6E848 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 004AC 80A6E84C 10000007 */  beq     $zero, $zero, .L80A6E86C
/* 004B0 80A6E850 00000000 */  nop
.L80A6E854:
/* 004B4 80A6E854 0C042DC8 */  jal     func_8010B720
/* 004B8 80A6E858 240510B4 */  addiu   $a1, $zero, 0x10B4         ## $a1 = 000010B4
/* 004BC 80A6E85C 3C0580A7 */  lui     $a1, %hi(func_80A6E70C)    ## $a1 = 80A70000
/* 004C0 80A6E860 24A5E70C */  addiu   $a1, $a1, %lo(func_80A6E70C) ## $a1 = 80A6E70C
/* 004C4 80A6E864 0C29B8E8 */  jal     func_80A6E3A0
/* 004C8 80A6E868 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A6E86C:
/* 004CC 80A6E86C 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 004D0 80A6E870 261005C0 */  addiu   $s0, $s0, 0x05C0           ## $s0 = 060005C0
/* 004D4 80A6E874 0C028800 */  jal     SkelAnime_GetFrameCount

/* 004D8 80A6E878 02002025 */  or      $a0, $s0, $zero            ## $a0 = 060005C0
/* 004DC 80A6E87C 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 004E0 80A6E880 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 004E4 80A6E884 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 004E8 80A6E888 46803220 */  cvt.s.w $f8, $f6
/* 004EC 80A6E88C 26240198 */  addiu   $a0, $s1, 0x0198           ## $a0 = 00000198
/* 004F0 80A6E890 02002825 */  or      $a1, $s0, $zero            ## $a1 = 060005C0
/* 004F4 80A6E894 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004F8 80A6E898 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 004FC 80A6E89C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00500 80A6E8A0 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00504 80A6E8A4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00508 80A6E8A8 E7AA0018 */  swc1    $f10, 0x0018($sp)
.L80A6E8AC:
/* 0050C 80A6E8AC 962E02A8 */  lhu     $t6, 0x02A8($s1)           ## 000002A8
.L80A6E8B0:
/* 00510 80A6E8B0 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00514 80A6E8B4 A62F02A8 */  sh      $t7, 0x02A8($s1)           ## 000002A8
/* 00518 80A6E8B8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0051C 80A6E8BC 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00520 80A6E8C0 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00524 80A6E8C4 03E00008 */  jr      $ra
/* 00528 80A6E8C8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000