glabel func_809122A4
/* 01C64 809122A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C68 809122A8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01C6C 809122AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C70 809122B0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 01C74 809122B4 3C048091 */  lui     $a0, %hi(D_80915268)       ## $a0 = 80910000
/* 01C78 809122B8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 01C7C 809122BC 0C00084C */  jal     osSyncPrintf

/* 01C80 809122C0 24845268 */  addiu   $a0, $a0, %lo(D_80915268)  ## $a0 = 80915268
/* 01C84 809122C4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01C88 809122C8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01C8C 809122CC AFA40024 */  sw      $a0, 0x0024($sp)
/* 01C90 809122D0 3C018091 */  lui     $at, %hi(D_80915440)       ## $at = 80910000
/* 01C94 809122D4 C4245440 */  lwc1    $f4, %lo(D_80915440)($at)
/* 01C98 809122D8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01C9C 809122DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 01CA0 809122E0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01CA4 809122E4 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 01CA8 809122E8 4606403E */  c.le.s  $f8, $f6
/* 01CAC 809122EC 00000000 */  nop
/* 01CB0 809122F0 4500001E */  bc1f    .L8091236C
/* 01CB4 809122F4 00000000 */  nop
/* 01CB8 809122F8 860E01A2 */  lh      $t6, 0x01A2($s0)           ## 000001A2
/* 01CBC 809122FC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01CC0 80912300 55C0000E */  bnel    $t6, $zero, .L8091233C
/* 01CC4 80912304 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01CC8 80912308 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01CCC 8091230C 24841BCC */  addiu   $a0, $a0, 0x1BCC           ## $a0 = 06011BCC
/* 01CD0 80912310 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 01CD4 80912314 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01CD8 80912318 24A51BCC */  addiu   $a1, $a1, 0x1BCC           ## $a1 = 06011BCC
/* 01CDC 8091231C 46805420 */  cvt.s.w $f16, $f10
/* 01CE0 80912320 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 01CE4 80912324 E61001D0 */  swc1    $f16, 0x01D0($s0)          ## 000001D0
/* 01CE8 80912328 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01CEC 8091232C 8FA40024 */  lw      $a0, 0x0024($sp)
/* 01CF0 80912330 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01CF4 80912334 A60F01A2 */  sh      $t7, 0x01A2($s0)           ## 000001A2
/* 01CF8 80912338 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L8091233C:
/* 01CFC 8091233C 8E0501D0 */  lw      $a1, 0x01D0($s0)           ## 000001D0
/* 01D00 80912340 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 01D04 80912344 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 01D08 80912348 0C0295B2 */  jal     func_800A56C8
/* 01D0C 8091234C 8FA40024 */  lw      $a0, 0x0024($sp)
/* 01D10 80912350 10400003 */  beq     $v0, $zero, .L80912360
/* 01D14 80912354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D18 80912358 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01D1C 8091235C 240538B1 */  addiu   $a1, $zero, 0x38B1         ## $a1 = 000038B1
.L80912360:
/* 01D20 80912360 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 01D24 80912364 37190400 */  ori     $t9, $t8, 0x0400           ## $t9 = 00000400
/* 01D28 80912368 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
.L8091236C:
/* 01D2C 8091236C 3C048091 */  lui     $a0, %hi(D_80915294)       ## $a0 = 80910000
/* 01D30 80912370 24845294 */  addiu   $a0, $a0, %lo(D_80915294)  ## $a0 = 80915294
/* 01D34 80912374 0C00084C */  jal     osSyncPrintf

/* 01D38 80912378 860501BC */  lh      $a1, 0x01BC($s0)           ## 000001BC
/* 01D3C 8091237C 860801BC */  lh      $t0, 0x01BC($s0)           ## 000001BC
/* 01D40 80912380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D44 80912384 1500000C */  bne     $t0, $zero, .L809123B8
/* 01D48 80912388 00000000 */  nop
/* 01D4C 8091238C 0C24453A */  jal     func_809114E8
/* 01D50 80912390 3C05C0A0 */  lui     $a1, 0xC0A0                ## $a1 = C0A00000
/* 01D54 80912394 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01D58 80912398 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01D5C 8091239C 2402001E */  addiu   $v0, $zero, 0x001E         ## $v0 = 0000001E
/* 01D60 809123A0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01D64 809123A4 A60201BC */  sh      $v0, 0x01BC($s0)           ## 000001BC
/* 01D68 809123A8 A60201C0 */  sh      $v0, 0x01C0($s0)           ## 000001C0
/* 01D6C 809123AC A20901C9 */  sb      $t1, 0x01C9($s0)           ## 000001C9
/* 01D70 809123B0 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 01D74 809123B4 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
.L809123B8:
/* 01D78 809123B8 0C00B638 */  jal     Actor_MoveForward

/* 01D7C 809123BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D80 809123C0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01D84 809123C4 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01D88 809123C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D8C 809123CC 03E00008 */  jr      $ra
/* 01D90 809123D0 00000000 */  nop