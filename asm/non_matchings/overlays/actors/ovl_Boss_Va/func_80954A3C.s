glabel func_80954A3C
/* 0577C 80954A3C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05780 80954A40 AFA40028 */  sw      $a0, 0x0028($sp)
/* 05784 80954A44 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 05788 80954A48 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 0578C 80954A4C AFA5002C */  sw      $a1, 0x002C($sp)
/* 05790 80954A50 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05794 80954A54 24848D18 */  addiu   $a0, $a0, 0x8D18           ## $a0 = 06018D18
/* 05798 80954A58 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0579C 80954A5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 057A0 80954A60 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 057A4 80954A64 46802020 */  cvt.s.w $f0, $f4
/* 057A8 80954A68 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 057AC 80954A6C 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 057B0 80954A70 8FA40028 */  lw      $a0, 0x0028($sp)
/* 057B4 80954A74 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 057B8 80954A78 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 057BC 80954A7C 46020181 */  sub.s   $f6, $f0, $f2
/* 057C0 80954A80 44061000 */  mfc1    $a2, $f2
/* 057C4 80954A84 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 057C8 80954A88 24A58D18 */  addiu   $a1, $a1, 0x8D18           ## $a1 = 06018D18
/* 057CC 80954A8C 44073000 */  mfc1    $a3, $f6
/* 057D0 80954A90 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 057D4 80954A94 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 057D8 80954A98 0C029468 */  jal     SkelAnime_ChangeAnim

/* 057DC 80954A9C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 057E0 80954AA0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 057E4 80954AA4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 057E8 80954AA8 3C058095 */  lui     $a1, %hi(func_80954AD0)    ## $a1 = 80950000
/* 057EC 80954AAC 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 057F0 80954AB0 24A54AD0 */  addiu   $a1, $a1, %lo(func_80954AD0) ## $a1 = 80954AD0
/* 057F4 80954AB4 01E1C024 */  and     $t8, $t7, $at
/* 057F8 80954AB8 0C253CB0 */  jal     func_8094F2C0
/* 057FC 80954ABC AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 05800 80954AC0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 05804 80954AC4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05808 80954AC8 03E00008 */  jr      $ra
/* 0580C 80954ACC 00000000 */  nop