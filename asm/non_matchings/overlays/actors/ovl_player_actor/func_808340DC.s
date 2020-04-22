.late_rodata
glabel D_8085535C
    .float 1.2

glabel D_80855360
    .float -1.2

.text
glabel func_808340DC
/* 01ECC 808340DC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01ED0 808340E0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01ED4 808340E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01ED8 808340E8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01EDC 808340EC AFA50054 */  sw      $a1, 0x0054($sp)
/* 01EE0 808340F0 0C20CDC9 */  jal     func_80833724
/* 01EE4 808340F4 90840152 */  lbu     $a0, 0x0152($a0)           ## 00000152
/* 01EE8 808340F8 3C058083 */  lui     $a1, %hi(func_80834A2C)    ## $a1 = 80830000
/* 01EEC 808340FC 24A54A2C */  addiu   $a1, $a1, %lo(func_80834A2C) ## $a1 = 80834A2C
/* 01EF0 80834100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EF4 80834104 0C20CD8E */  jal     func_80833638
/* 01EF8 80834108 A3A20037 */  sb      $v0, 0x0037($sp)
/* 01EFC 8083410C 920E0159 */  lbu     $t6, 0x0159($s0)           ## 00000159
/* 01F00 80834110 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 01F04 80834114 92190158 */  lbu     $t9, 0x0158($s0)           ## 00000158
/* 01F08 80834118 01C50019 */  multu   $t6, $a1
/* 01F0C 8083411C 3C048012 */  lui     $a0, %hi(D_80125C98)
/* 01F10 80834120 24845C98 */  addiu   $a0, %lo(D_80125C98)
/* 01F14 80834124 83A70037 */  lb      $a3, 0x0037($sp)
/* 01F18 80834128 3C038085 */  lui     $v1, %hi(D_80854164)       ## $v1 = 80850000
/* 01F1C 8083412C 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 01F20 80834130 00007812 */  mflo    $t7
/* 01F24 80834134 008FC021 */  addu    $t8, $a0, $t7
/* 01F28 80834138 93020000 */  lbu     $v0, 0x0000($t8)           ## 00000000
/* 01F2C 8083413C 03250019 */  multu   $t9, $a1
/* 01F30 80834140 00004012 */  mflo    $t0
/* 01F34 80834144 00884821 */  addu    $t1, $a0, $t0
/* 01F38 80834148 912A0000 */  lbu     $t2, 0x0000($t1)           ## 00000000
/* 01F3C 8083414C 24040014 */  addiu   $a0, $zero, 0x0014         ## $a0 = 00000014
/* 01F40 80834150 000A5880 */  sll     $t3, $t2,  2
/* 01F44 80834154 016A5823 */  subu    $t3, $t3, $t2
/* 01F48 80834158 000B5840 */  sll     $t3, $t3,  1
/* 01F4C 8083415C 01626021 */  addu    $t4, $t3, $v0
/* 01F50 80834160 006C1821 */  addu    $v1, $v1, $t4
/* 01F54 80834164 10E6000A */  beq     $a3, $a2, .L80834190
/* 01F58 80834168 80634164 */  lb      $v1, %lo(D_80854164)($v1)
/* 01F5C 8083416C 10E40008 */  beq     $a3, $a0, .L80834190
/* 01F60 80834170 00000000 */  nop
/* 01F64 80834174 14E0000A */  bne     $a3, $zero, .L808341A0
/* 01F68 80834178 00000000 */  nop
/* 01F6C 8083417C 82020151 */  lb      $v0, 0x0151($s0)           ## 00000151
/* 01F70 80834180 10C20003 */  beq     $a2, $v0, .L80834190
/* 01F74 80834184 00000000 */  nop
/* 01F78 80834188 14820005 */  bne     $a0, $v0, .L808341A0
/* 01F7C 8083418C 00000000 */  nop
.L80834190:
/* 01F80 80834190 14E00003 */  bne     $a3, $zero, .L808341A0
/* 01F84 80834194 2403000D */  addiu   $v1, $zero, 0x000D         ## $v1 = 0000000D
/* 01F88 80834198 10000001 */  beq     $zero, $zero, .L808341A0
/* 01F8C 8083419C 2403FFF3 */  addiu   $v1, $zero, 0xFFF3         ## $v1 = FFFFFFF3
.L808341A0:
/* 01F90 808341A0 04600003 */  bltz    $v1, .L808341B0
/* 01F94 808341A4 00036823 */  subu    $t5, $zero, $v1
/* 01F98 808341A8 10000002 */  beq     $zero, $zero, .L808341B4
/* 01F9C 808341AC A203015A */  sb      $v1, 0x015A($s0)           ## 0000015A
.L808341B0:
/* 01FA0 808341B0 A20D015A */  sb      $t5, 0x015A($s0)           ## 0000015A
.L808341B4:
/* 01FA4 808341B4 820E015A */  lb      $t6, 0x015A($s0)           ## 0000015A
/* 01FA8 808341B8 3C068085 */  lui     $a2, %hi(D_808540F4)       ## $a2 = 80850000
/* 01FAC 808341BC 3C180400 */  lui     $t8, 0x0400                ## $t8 = 04000000
/* 01FB0 808341C0 000E78C0 */  sll     $t7, $t6,  3
/* 01FB4 808341C4 00CF3021 */  addu    $a2, $a2, $t7
/* 01FB8 808341C8 8CC640F4 */  lw      $a2, %lo(D_808540F4)($a2)
/* 01FBC 808341CC 27182F30 */  addiu   $t8, $t8, 0x2F30           ## $t8 = 04002F30
/* 01FC0 808341D0 54D80007 */  bnel    $a2, $t8, .L808341F0
/* 01FC4 808341D4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 80850000
/* 01FC8 808341D8 8219014E */  lb      $t9, 0x014E($s0)           ## 0000014E
/* 01FCC 808341DC 57200004 */  bnel    $t9, $zero, .L808341F0
/* 01FD0 808341E0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 80850000
/* 01FD4 808341E4 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 01FD8 808341E8 24C62F40 */  addiu   $a2, $a2, 0x2F40           ## $a2 = 04002F40
/* 01FDC 808341EC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 04002F40
.L808341F0:
/* 01FE0 808341F0 AFA30038 */  sw      $v1, 0x0038($sp)
/* 01FE4 808341F4 AFA6004C */  sw      $a2, 0x004C($sp)
/* 01FE8 808341F8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01FEC 808341FC A3A70037 */  sb      $a3, 0x0037($sp)
/* 01FF0 80834200 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01FF4 80834204 8FA30038 */  lw      $v1, 0x0038($sp)
/* 01FF8 80834208 8FA6004C */  lw      $a2, 0x004C($sp)
/* 01FFC 8083420C 468020A0 */  cvt.s.w $f2, $f4
/* 02000 80834210 83A70037 */  lb      $a3, 0x0037($sp)
/* 02004 80834214 8FA40054 */  lw      $a0, 0x0054($sp)
/* 02008 80834218 260506C8 */  addiu   $a1, $s0, 0x06C8           ## $a1 = 000006C8
/* 0200C 8083421C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 02010 80834220 04600006 */  bltz    $v1, .L8083423C
/* 02014 80834224 46001386 */  mov.s   $f14, $f2
/* 02018 80834228 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0201C 8083422C 3C018085 */  lui     $at, %hi(D_8085535C)       ## $at = 80850000
/* 02020 80834230 C420535C */  lwc1    $f0, %lo(D_8085535C)($at)
/* 02024 80834234 10000006 */  beq     $zero, $zero, .L80834250
/* 02028 80834238 46008306 */  mov.s   $f12, $f16
.L8083423C:
/* 0202C 8083423C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 02030 80834240 3C018085 */  lui     $at, %hi(D_80855360)       ## $at = 80850000
/* 02034 80834244 C4205360 */  lwc1    $f0, %lo(D_80855360)($at)
/* 02038 80834248 46001306 */  mov.s   $f12, $f2
/* 0203C 8083424C 46008386 */  mov.s   $f14, $f16
.L80834250:
/* 02040 80834250 50E00003 */  beql    $a3, $zero, .L80834260
/* 02044 80834254 44070000 */  mfc1    $a3, $f0
/* 02048 80834258 46000000 */  add.s   $f0, $f0, $f0
/* 0204C 8083425C 44070000 */  mfc1    $a3, $f0
.L80834260:
/* 02050 80834260 E7AC0010 */  swc1    $f12, 0x0010($sp)
/* 02054 80834264 E7AE0014 */  swc1    $f14, 0x0014($sp)
/* 02058 80834268 AFA80018 */  sw      $t0, 0x0018($sp)
/* 0205C 8083426C 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 02060 80834270 E7B0001C */  swc1    $f16, 0x001C($sp)
/* 02064 80834274 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
/* 02068 80834278 2401FEFF */  addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
/* 0206C 8083427C 01215024 */  and     $t2, $t1, $at
/* 02070 80834280 AE0A067C */  sw      $t2, 0x067C($s0)           ## 0000067C
/* 02074 80834284 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02078 80834288 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0207C 8083428C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02080 80834290 03E00008 */  jr      $ra
/* 02084 80834294 00000000 */  nop