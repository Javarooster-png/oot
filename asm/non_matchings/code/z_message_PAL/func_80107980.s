glabel func_80107980
/* B7EB20 80107980 27BDFF90 */  addiu $sp, $sp, -0x70
/* B7EB24 80107984 3C0F8015 */  lui   $t7, %hi(D_8014B308) # $t7, 0x8015
/* B7EB28 80107988 85EFB308 */  lh    $t7, %lo(D_8014B308)($t7)
/* B7EB2C 8010798C AFA40070 */  sw    $a0, 0x70($sp)
/* B7EB30 80107990 AFA50074 */  sw    $a1, 0x74($sp)
/* B7EB34 80107994 AFA60078 */  sw    $a2, 0x78($sp)
/* B7EB38 80107998 AFA7007C */  sw    $a3, 0x7c($sp)
/* B7EB3C 8010799C 8CA20000 */  lw    $v0, ($a1)
/* B7EB40 801079A0 15E001C2 */  bnez  $t7, .L801080AC
/* B7EB44 801079A4 00A07025 */   move  $t6, $a1
/* B7EB48 801079A8 3C068015 */  lui   $a2, %hi(D_801539F0) # $a2, 0x8015
/* B7EB4C 801079AC 84C639F0 */  lh    $a2, %lo(D_801539F0)($a2)
/* B7EB50 801079B0 3C188015 */  lui   $t8, %hi(D_801539C8) # $t8, 0x8015
/* B7EB54 801079B4 271839C8 */  addiu $t8, %lo(D_801539C8) # addiu $t8, $t8, 0x39c8
/* B7EB58 801079B8 00C00821 */  addu  $at, $a2, $zero
/* B7EB5C 801079BC 00063080 */  sll   $a2, $a2, 2
/* B7EB60 801079C0 00C13023 */  subu  $a2, $a2, $at
/* B7EB64 801079C4 00063040 */  sll   $a2, $a2, 1
/* B7EB68 801079C8 3C0A8015 */  lui   $t2, %hi(D_801539E0) # $t2, 0x8015
/* B7EB6C 801079CC 00D82021 */  addu  $a0, $a2, $t8
/* B7EB70 801079D0 854A39E0 */  lh    $t2, %lo(D_801539E0)($t2)
/* B7EB74 801079D4 84850000 */  lh    $a1, ($a0)
/* B7EB78 801079D8 3C088015 */  lui   $t0, %hi(D_801539EC) # $t0, 0x8015
/* B7EB7C 801079DC 3C098015 */  lui   $t1, %hi(D_801539E4) # $t1, 0x8015
/* B7EB80 801079E0 01453823 */  subu  $a3, $t2, $a1
/* B7EB84 801079E4 04E20004 */  bltzl $a3, .L801079F8
/* B7EB88 801079E8 00071823 */   negu  $v1, $a3
/* B7EB8C 801079EC 10000002 */  b     .L801079F8
/* B7EB90 801079F0 00E01825 */   move  $v1, $a3
/* B7EB94 801079F4 00071823 */  negu  $v1, $a3
.L801079F8:
/* B7EB98 801079F8 850839EC */  lh    $t0, %lo(D_801539EC)($t0)
/* B7EB9C 801079FC 852939E4 */  lh    $t1, %lo(D_801539E4)($t1)
/* B7EBA0 80107A00 848B0002 */  lh    $t3, 2($a0)
/* B7EBA4 80107A04 0068001A */  div   $zero, $v1, $t0
/* B7EBA8 80107A08 00006812 */  mflo  $t5
/* B7EBAC 80107A0C 000D6C00 */  sll   $t5, $t5, 0x10
/* B7EBB0 80107A10 15000002 */  bnez  $t0, .L80107A1C
/* B7EBB4 80107A14 00000000 */   nop   
/* B7EBB8 80107A18 0007000D */  break 7
.L80107A1C:
/* B7EBBC 80107A1C 2401FFFF */  li    $at, -1
/* B7EBC0 80107A20 15010004 */  bne   $t0, $at, .L80107A34
/* B7EBC4 80107A24 3C018000 */   lui   $at, 0x8000
/* B7EBC8 80107A28 14610002 */  bne   $v1, $at, .L80107A34
/* B7EBCC 80107A2C 00000000 */   nop   
/* B7EBD0 80107A30 0006000D */  break 6
.L80107A34:
/* B7EBD4 80107A34 012B3823 */  subu  $a3, $t1, $t3
/* B7EBD8 80107A38 04E00003 */  bltz  $a3, .L80107A48
/* B7EBDC 80107A3C 000D6C03 */   sra   $t5, $t5, 0x10
/* B7EBE0 80107A40 10000002 */  b     .L80107A4C
/* B7EBE4 80107A44 00E01825 */   move  $v1, $a3
.L80107A48:
/* B7EBE8 80107A48 00071823 */  negu  $v1, $a3
.L80107A4C:
/* B7EBEC 80107A4C 0068001A */  div   $zero, $v1, $t0
/* B7EBF0 80107A50 3C078015 */  lui   $a3, %hi(D_801539E8) # $a3, 0x8015
/* B7EBF4 80107A54 84E739E8 */  lh    $a3, %lo(D_801539E8)($a3)
/* B7EBF8 80107A58 848C0004 */  lh    $t4, 4($a0)
/* B7EBFC 80107A5C 15000002 */  bnez  $t0, .L80107A68
/* B7EC00 80107A60 00000000 */   nop   
/* B7EC04 80107A64 0007000D */  break 7
.L80107A68:
/* B7EC08 80107A68 2401FFFF */  li    $at, -1
/* B7EC0C 80107A6C 15010004 */  bne   $t0, $at, .L80107A80
/* B7EC10 80107A70 3C018000 */   lui   $at, 0x8000
/* B7EC14 80107A74 14610002 */  bne   $v1, $at, .L80107A80
/* B7EC18 80107A78 00000000 */   nop   
/* B7EC1C 80107A7C 0006000D */  break 6
.L80107A80:
/* B7EC20 80107A80 00EC7023 */  subu  $t6, $a3, $t4
/* B7EC24 80107A84 0000C812 */  mflo  $t9
/* B7EC28 80107A88 A7B90060 */  sh    $t9, 0x60($sp)
/* B7EC2C 80107A8C AFAE0000 */  sw    $t6, ($sp)
/* B7EC30 80107A90 05C00003 */  bltz  $t6, .L80107AA0
/* B7EC34 80107A94 01C07825 */   move  $t7, $t6
/* B7EC38 80107A98 10000003 */  b     .L80107AA8
/* B7EC3C 80107A9C 01E01825 */   move  $v1, $t7
.L80107AA0:
/* B7EC40 80107AA0 8FA30000 */  lw    $v1, ($sp)
/* B7EC44 80107AA4 00031823 */  negu  $v1, $v1
.L80107AA8:
/* B7EC48 80107AA8 0145082A */  slt   $at, $t2, $a1
/* B7EC4C 80107AAC 54200006 */  bnezl $at, .L80107AC8
/* B7EC50 80107AB0 014D5021 */   addu  $t2, $t2, $t5
/* B7EC54 80107AB4 014D5023 */  subu  $t2, $t2, $t5
/* B7EC58 80107AB8 000A5400 */  sll   $t2, $t2, 0x10
/* B7EC5C 80107ABC 10000004 */  b     .L80107AD0
/* B7EC60 80107AC0 000A5403 */   sra   $t2, $t2, 0x10
/* B7EC64 80107AC4 014D5021 */  addu  $t2, $t2, $t5
.L80107AC8:
/* B7EC68 80107AC8 000A5400 */  sll   $t2, $t2, 0x10
/* B7EC6C 80107ACC 000A5403 */  sra   $t2, $t2, 0x10
.L80107AD0:
/* B7EC70 80107AD0 012B082A */  slt   $at, $t1, $t3
/* B7EC74 80107AD4 14200006 */  bnez  $at, .L80107AF0
/* B7EC78 80107AD8 3C0D8015 */   lui   $t5, %hi(D_801539F4) # $t5, 0x8015
/* B7EC7C 80107ADC 87B80060 */  lh    $t8, 0x60($sp)
/* B7EC80 80107AE0 01384823 */  subu  $t1, $t1, $t8
/* B7EC84 80107AE4 00094C00 */  sll   $t1, $t1, 0x10
/* B7EC88 80107AE8 10000005 */  b     .L80107B00
/* B7EC8C 80107AEC 00094C03 */   sra   $t1, $t1, 0x10
.L80107AF0:
/* B7EC90 80107AF0 87B90060 */  lh    $t9, 0x60($sp)
/* B7EC94 80107AF4 01394821 */  addu  $t1, $t1, $t9
/* B7EC98 80107AF8 00094C00 */  sll   $t1, $t1, 0x10
/* B7EC9C 80107AFC 00094C03 */  sra   $t1, $t1, 0x10
.L80107B00:
/* B7ECA0 80107B00 00EC082A */  slt   $at, $a3, $t4
/* B7ECA4 80107B04 14200013 */  bnez  $at, .L80107B54
/* B7ECA8 80107B08 00000000 */   nop   
/* B7ECAC 80107B0C 0068001A */  div   $zero, $v1, $t0
/* B7ECB0 80107B10 00007012 */  mflo  $t6
/* B7ECB4 80107B14 000E7C00 */  sll   $t7, $t6, 0x10
/* B7ECB8 80107B18 000FC403 */  sra   $t8, $t7, 0x10
/* B7ECBC 80107B1C 00F83823 */  subu  $a3, $a3, $t8
/* B7ECC0 80107B20 00073C00 */  sll   $a3, $a3, 0x10
/* B7ECC4 80107B24 15000002 */  bnez  $t0, .L80107B30
/* B7ECC8 80107B28 00000000 */   nop   
/* B7ECCC 80107B2C 0007000D */  break 7
.L80107B30:
/* B7ECD0 80107B30 2401FFFF */  li    $at, -1
/* B7ECD4 80107B34 15010004 */  bne   $t0, $at, .L80107B48
/* B7ECD8 80107B38 3C018000 */   lui   $at, 0x8000
/* B7ECDC 80107B3C 14610002 */  bne   $v1, $at, .L80107B48
/* B7ECE0 80107B40 00000000 */   nop   
/* B7ECE4 80107B44 0006000D */  break 6
.L80107B48:
/* B7ECE8 80107B48 00073C03 */  sra   $a3, $a3, 0x10
/* B7ECEC 80107B4C 10000012 */  b     .L80107B98
/* B7ECF0 80107B50 AFA5000C */   sw    $a1, 0xc($sp)
.L80107B54:
/* B7ECF4 80107B54 0068001A */  div   $zero, $v1, $t0
/* B7ECF8 80107B58 0000C812 */  mflo  $t9
/* B7ECFC 80107B5C 00197400 */  sll   $t6, $t9, 0x10
/* B7ED00 80107B60 000E7C03 */  sra   $t7, $t6, 0x10
/* B7ED04 80107B64 00EF3821 */  addu  $a3, $a3, $t7
/* B7ED08 80107B68 00073C00 */  sll   $a3, $a3, 0x10
/* B7ED0C 80107B6C 00073C03 */  sra   $a3, $a3, 0x10
/* B7ED10 80107B70 15000002 */  bnez  $t0, .L80107B7C
/* B7ED14 80107B74 00000000 */   nop   
/* B7ED18 80107B78 0007000D */  break 7
.L80107B7C:
/* B7ED1C 80107B7C 2401FFFF */  li    $at, -1
/* B7ED20 80107B80 15010004 */  bne   $t0, $at, .L80107B94
/* B7ED24 80107B84 3C018000 */   lui   $at, 0x8000
/* B7ED28 80107B88 14610002 */  bne   $v1, $at, .L80107B94
/* B7ED2C 80107B8C 00000000 */   nop   
/* B7ED30 80107B90 0006000D */  break 6
.L80107B94:
/* B7ED34 80107B94 AFA5000C */  sw    $a1, 0xc($sp)
.L80107B98:
/* B7ED38 80107B98 3C188015 */  lui   $t8, %hi(D_801539D4) # $t8, 0x8015
/* B7ED3C 80107B9C 271839D4 */  addiu $t8, %lo(D_801539D4) # addiu $t8, $t8, 0x39d4
/* B7ED40 80107BA0 00D82821 */  addu  $a1, $a2, $t8
/* B7ED44 80107BA4 85AD39F4 */  lh    $t5, %lo(D_801539F4)($t5)
/* B7ED48 80107BA8 84B90000 */  lh    $t9, ($a1)
/* B7ED4C 80107BAC 3C018015 */  lui   $at, %hi(D_801539E4)
/* B7ED50 80107BB0 01B92023 */  subu  $a0, $t5, $t9
/* B7ED54 80107BB4 AFB90000 */  sw    $t9, ($sp)
/* B7ED58 80107BB8 04800008 */  bltz  $a0, .L80107BDC
/* B7ED5C 80107BBC 03207025 */   move  $t6, $t9
/* B7ED60 80107BC0 3C018015 */  lui   $at, %hi(D_801539E4) # $at, 0x8015
/* B7ED64 80107BC4 A42939E4 */  sh    $t1, %lo(D_801539E4)($at)
/* B7ED68 80107BC8 3C018015 */  lui   $at, %hi(D_801539E4) # $at, 0x8015
/* B7ED6C 80107BCC A42A39E0 */  sh    $t2, %lo(D_801539E0)($at)
/* B7ED70 80107BD0 00801825 */  move  $v1, $a0
/* B7ED74 80107BD4 10000006 */  b     .L80107BF0
/* B7ED78 80107BD8 AFAB0008 */   sw    $t3, 8($sp)
.L80107BDC:
/* B7ED7C 80107BDC A42939E4 */  sh    $t1, %lo(D_801539E4)($at)
/* B7ED80 80107BE0 3C018015 */  lui   $at, %hi(D_801539E0) # $at, 0x8015
/* B7ED84 80107BE4 A42A39E0 */  sh    $t2, %lo(D_801539E0)($at)
/* B7ED88 80107BE8 00041823 */  negu  $v1, $a0
/* B7ED8C 80107BEC AFAB0008 */  sw    $t3, 8($sp)
.L80107BF0:
/* B7ED90 80107BF0 0068001A */  div   $zero, $v1, $t0
/* B7ED94 80107BF4 3C098015 */  lui   $t1, %hi(D_801539F8) # $t1, 0x8015
/* B7ED98 80107BF8 852939F8 */  lh    $t1, %lo(D_801539F8)($t1)
/* B7ED9C 80107BFC 84AB0002 */  lh    $t3, 2($a1)
/* B7EDA0 80107C00 00003012 */  mflo  $a2
/* B7EDA4 80107C04 00063400 */  sll   $a2, $a2, 0x10
/* B7EDA8 80107C08 15000002 */  bnez  $t0, .L80107C14
/* B7EDAC 80107C0C 00000000 */   nop   
/* B7EDB0 80107C10 0007000D */  break 7
.L80107C14:
/* B7EDB4 80107C14 2401FFFF */  li    $at, -1
/* B7EDB8 80107C18 15010004 */  bne   $t0, $at, .L80107C2C
/* B7EDBC 80107C1C 3C018000 */   lui   $at, 0x8000
/* B7EDC0 80107C20 14610002 */  bne   $v1, $at, .L80107C2C
/* B7EDC4 80107C24 00000000 */   nop   
/* B7EDC8 80107C28 0006000D */  break 6
.L80107C2C:
/* B7EDCC 80107C2C 012B2023 */  subu  $a0, $t1, $t3
/* B7EDD0 80107C30 04800006 */  bltz  $a0, .L80107C4C
/* B7EDD4 80107C34 00063403 */   sra   $a2, $a2, 0x10
/* B7EDD8 80107C38 3C018015 */  lui   $at, %hi(D_801539E8) # $at, 0x8015
/* B7EDDC 80107C3C A42739E8 */  sh    $a3, %lo(D_801539E8)($at)
/* B7EDE0 80107C40 00801825 */  move  $v1, $a0
/* B7EDE4 80107C44 10000005 */  b     .L80107C5C
/* B7EDE8 80107C48 AFAC0004 */   sw    $t4, 4($sp)
.L80107C4C:
/* B7EDEC 80107C4C 3C018015 */  lui   $at, %hi(D_801539E8) # $at, 0x8015
/* B7EDF0 80107C50 A42739E8 */  sh    $a3, %lo(D_801539E8)($at)
/* B7EDF4 80107C54 00041823 */  negu  $v1, $a0
/* B7EDF8 80107C58 AFAC0004 */  sw    $t4, 4($sp)
.L80107C5C:
/* B7EDFC 80107C5C 0068001A */  div   $zero, $v1, $t0
/* B7EE00 80107C60 3C0A8015 */  lui   $t2, %hi(D_801539FC) # $t2, 0x8015
/* B7EE04 80107C64 854A39FC */  lh    $t2, %lo(D_801539FC)($t2)
/* B7EE08 80107C68 84AC0004 */  lh    $t4, 4($a1)
/* B7EE0C 80107C6C 00003812 */  mflo  $a3
/* B7EE10 80107C70 00073C00 */  sll   $a3, $a3, 0x10
/* B7EE14 80107C74 15000002 */  bnez  $t0, .L80107C80
/* B7EE18 80107C78 00000000 */   nop   
/* B7EE1C 80107C7C 0007000D */  break 7
.L80107C80:
/* B7EE20 80107C80 2401FFFF */  li    $at, -1
/* B7EE24 80107C84 15010004 */  bne   $t0, $at, .L80107C98
/* B7EE28 80107C88 3C018000 */   lui   $at, 0x8000
/* B7EE2C 80107C8C 14610002 */  bne   $v1, $at, .L80107C98
/* B7EE30 80107C90 00000000 */   nop   
/* B7EE34 80107C94 0006000D */  break 6
.L80107C98:
/* B7EE38 80107C98 014C2023 */  subu  $a0, $t2, $t4
/* B7EE3C 80107C9C 04800003 */  bltz  $a0, .L80107CAC
/* B7EE40 80107CA0 00073C03 */   sra   $a3, $a3, 0x10
/* B7EE44 80107CA4 10000002 */  b     .L80107CB0
/* B7EE48 80107CA8 00801825 */   move  $v1, $a0
.L80107CAC:
/* B7EE4C 80107CAC 00041823 */  negu  $v1, $a0
.L80107CB0:
/* B7EE50 80107CB0 8FA40000 */  lw    $a0, ($sp)
/* B7EE54 80107CB4 01A4082A */  slt   $at, $t5, $a0
/* B7EE58 80107CB8 54200006 */  bnezl $at, .L80107CD4
/* B7EE5C 80107CBC 01A66821 */   addu  $t5, $t5, $a2
/* B7EE60 80107CC0 01A66823 */  subu  $t5, $t5, $a2
/* B7EE64 80107CC4 000D6C00 */  sll   $t5, $t5, 0x10
/* B7EE68 80107CC8 10000004 */  b     .L80107CDC
/* B7EE6C 80107CCC 000D6C03 */   sra   $t5, $t5, 0x10
/* B7EE70 80107CD0 01A66821 */  addu  $t5, $t5, $a2
.L80107CD4:
/* B7EE74 80107CD4 000D6C00 */  sll   $t5, $t5, 0x10
/* B7EE78 80107CD8 000D6C03 */  sra   $t5, $t5, 0x10
.L80107CDC:
/* B7EE7C 80107CDC 012B082A */  slt   $at, $t1, $t3
/* B7EE80 80107CE0 54200006 */  bnezl $at, .L80107CFC
/* B7EE84 80107CE4 01274821 */   addu  $t1, $t1, $a3
/* B7EE88 80107CE8 01274823 */  subu  $t1, $t1, $a3
/* B7EE8C 80107CEC 00094C00 */  sll   $t1, $t1, 0x10
/* B7EE90 80107CF0 10000004 */  b     .L80107D04
/* B7EE94 80107CF4 00094C03 */   sra   $t1, $t1, 0x10
/* B7EE98 80107CF8 01274821 */  addu  $t1, $t1, $a3
.L80107CFC:
/* B7EE9C 80107CFC 00094C00 */  sll   $t1, $t1, 0x10
/* B7EEA0 80107D00 00094C03 */  sra   $t1, $t1, 0x10
.L80107D04:
/* B7EEA4 80107D04 014C082A */  slt   $at, $t2, $t4
/* B7EEA8 80107D08 14200013 */  bnez  $at, .L80107D58
/* B7EEAC 80107D0C 00000000 */   nop   
/* B7EEB0 80107D10 0068001A */  div   $zero, $v1, $t0
/* B7EEB4 80107D14 00007812 */  mflo  $t7
/* B7EEB8 80107D18 000FC400 */  sll   $t8, $t7, 0x10
/* B7EEBC 80107D1C 0018CC03 */  sra   $t9, $t8, 0x10
/* B7EEC0 80107D20 01595023 */  subu  $t2, $t2, $t9
/* B7EEC4 80107D24 000A5400 */  sll   $t2, $t2, 0x10
/* B7EEC8 80107D28 15000002 */  bnez  $t0, .L80107D34
/* B7EECC 80107D2C 00000000 */   nop   
/* B7EED0 80107D30 0007000D */  break 7
.L80107D34:
/* B7EED4 80107D34 2401FFFF */  li    $at, -1
/* B7EED8 80107D38 15010004 */  bne   $t0, $at, .L80107D4C
/* B7EEDC 80107D3C 3C018000 */   lui   $at, 0x8000
/* B7EEE0 80107D40 14610002 */  bne   $v1, $at, .L80107D4C
/* B7EEE4 80107D44 00000000 */   nop   
/* B7EEE8 80107D48 0006000D */  break 6
.L80107D4C:
/* B7EEEC 80107D4C 000A5403 */  sra   $t2, $t2, 0x10
/* B7EEF0 80107D50 10000012 */  b     .L80107D9C
/* B7EEF4 80107D54 2508FFFF */   addiu $t0, $t0, -1
.L80107D58:
/* B7EEF8 80107D58 0068001A */  div   $zero, $v1, $t0
/* B7EEFC 80107D5C 00007012 */  mflo  $t6
/* B7EF00 80107D60 000E7C00 */  sll   $t7, $t6, 0x10
/* B7EF04 80107D64 000FC403 */  sra   $t8, $t7, 0x10
/* B7EF08 80107D68 01585021 */  addu  $t2, $t2, $t8
/* B7EF0C 80107D6C 000A5400 */  sll   $t2, $t2, 0x10
/* B7EF10 80107D70 000A5403 */  sra   $t2, $t2, 0x10
/* B7EF14 80107D74 15000002 */  bnez  $t0, .L80107D80
/* B7EF18 80107D78 00000000 */   nop   
/* B7EF1C 80107D7C 0007000D */  break 7
.L80107D80:
/* B7EF20 80107D80 2401FFFF */  li    $at, -1
/* B7EF24 80107D84 15010004 */  bne   $t0, $at, .L80107D98
/* B7EF28 80107D88 3C018000 */   lui   $at, 0x8000
/* B7EF2C 80107D8C 14610002 */  bne   $v1, $at, .L80107D98
/* B7EF30 80107D90 00000000 */   nop   
/* B7EF34 80107D94 0006000D */  break 6
.L80107D98:
/* B7EF38 80107D98 2508FFFF */  addiu $t0, $t0, -1
.L80107D9C:
/* B7EF3C 80107D9C 00084400 */  sll   $t0, $t0, 0x10
/* B7EF40 80107DA0 00084403 */  sra   $t0, $t0, 0x10
/* B7EF44 80107DA4 3C018015 */  lui   $at, %hi(D_801539EC) # $at, 0x8015
/* B7EF48 80107DA8 15000018 */  bnez  $t0, .L80107E0C
/* B7EF4C 80107DAC A42839EC */   sh    $t0, %lo(D_801539EC)($at)
/* B7EF50 80107DB0 8FB9000C */  lw    $t9, 0xc($sp)
/* B7EF54 80107DB4 8FAE0008 */  lw    $t6, 8($sp)
/* B7EF58 80107DB8 3C018015 */  lui   $at, %hi(D_801539E0) # $at, 0x8015
/* B7EF5C 80107DBC A43939E0 */  sh    $t9, %lo(D_801539E0)($at)
/* B7EF60 80107DC0 8FAF0004 */  lw    $t7, 4($sp)
/* B7EF64 80107DC4 3C018015 */  lui   $at, %hi(D_801539E4) # $at, 0x8015
/* B7EF68 80107DC8 3C188015 */  lui   $t8, %hi(D_801539F0) # $t8, 0x8015
/* B7EF6C 80107DCC 871839F0 */  lh    $t8, %lo(D_801539F0)($t8)
/* B7EF70 80107DD0 A42E39E4 */  sh    $t6, %lo(D_801539E4)($at)
/* B7EF74 80107DD4 3C018015 */  lui   $at, %hi(D_801539E8) # $at, 0x8015
/* B7EF78 80107DD8 A42F39E8 */  sh    $t7, %lo(D_801539E8)($at)
/* B7EF7C 80107DDC 3C018015 */  lui   $at, %hi(D_801539F0) # $at, 0x8015
/* B7EF80 80107DE0 3B190001 */  xori  $t9, $t8, 1
/* B7EF84 80107DE4 A43939F0 */  sh    $t9, %lo(D_801539F0)($at)
/* B7EF88 80107DE8 00046C00 */  sll   $t5, $a0, 0x10
/* B7EF8C 80107DEC 000B4C00 */  sll   $t1, $t3, 0x10
/* B7EF90 80107DF0 000C5400 */  sll   $t2, $t4, 0x10
/* B7EF94 80107DF4 2408000C */  li    $t0, 12
/* B7EF98 80107DF8 3C018015 */  lui   $at, %hi(D_801539EC) # $at, 0x8015
/* B7EF9C 80107DFC 000D6C03 */  sra   $t5, $t5, 0x10
/* B7EFA0 80107E00 00094C03 */  sra   $t1, $t1, 0x10
/* B7EFA4 80107E04 000A5403 */  sra   $t2, $t2, 0x10
/* B7EFA8 80107E08 A42839EC */  sh    $t0, %lo(D_801539EC)($at)
.L80107E0C:
/* B7EFAC 80107E0C 00402025 */  move  $a0, $v0
/* B7EFB0 80107E10 3C03E700 */  lui   $v1, 0xe700
/* B7EFB4 80107E14 AC830000 */  sw    $v1, ($a0)
/* B7EFB8 80107E18 AC800004 */  sw    $zero, 4($a0)
/* B7EFBC 80107E1C 24420008 */  addiu $v0, $v0, 8
/* B7EFC0 80107E20 00402025 */  move  $a0, $v0
/* B7EFC4 80107E24 3C0EFC30 */  lui   $t6, (0xFC309661 >> 16) # lui $t6, 0xfc30
/* B7EFC8 80107E28 3C0F552E */  lui   $t7, (0x552EFF7F >> 16) # lui $t7, 0x552e
/* B7EFCC 80107E2C 35EFFF7F */  ori   $t7, (0x552EFF7F & 0xFFFF) # ori $t7, $t7, 0xff7f
/* B7EFD0 80107E30 35CE9661 */  ori   $t6, (0xFC309661 & 0xFFFF) # ori $t6, $t6, 0x9661
/* B7EFD4 80107E34 AC8E0000 */  sw    $t6, ($a0)
/* B7EFD8 80107E38 AC8F0004 */  sw    $t7, 4($a0)
/* B7EFDC 80107E3C 24420008 */  addiu $v0, $v0, 8
/* B7EFE0 80107E40 00402025 */  move  $a0, $v0
/* B7EFE4 80107E44 3C18FA00 */  lui   $t8, 0xfa00
/* B7EFE8 80107E48 AC980000 */  sw    $t8, ($a0)
/* B7EFEC 80107E4C 3C188015 */  lui   $t8, %hi(D_801539E4) # $t8, 0x8015
/* B7EFF0 80107E50 3C198015 */  lui   $t9, %hi(D_801539E0) # $t9, 0x8015
/* B7EFF4 80107E54 872E39E0 */  lh    $t6, %lo(D_801539E0)($t9)
/* B7EFF8 80107E58 871839E4 */  lh    $t8, %lo(D_801539E4)($t8)
/* B7EFFC 80107E5C 3C018015 */  lui   $at, %hi(D_801539F8) # $at, 0x8015
/* B7F000 80107E60 000E7E00 */  sll   $t7, $t6, 0x18
/* B7F004 80107E64 331900FF */  andi  $t9, $t8, 0xff
/* B7F008 80107E68 00197400 */  sll   $t6, $t9, 0x10
/* B7F00C 80107E6C 3C198015 */  lui   $t9, %hi(D_801539E8) # $t9, 0x8015
/* B7F010 80107E70 873939E8 */  lh    $t9, %lo(D_801539E8)($t9)
/* B7F014 80107E74 01EEC025 */  or    $t8, $t7, $t6
/* B7F018 80107E78 24420008 */  addiu $v0, $v0, 8
/* B7F01C 80107E7C 332F00FF */  andi  $t7, $t9, 0xff
/* B7F020 80107E80 000F7200 */  sll   $t6, $t7, 8
/* B7F024 80107E84 030EC825 */  or    $t9, $t8, $t6
/* B7F028 80107E88 372F00FF */  ori   $t7, $t9, 0xff
/* B7F02C 80107E8C AC8F0004 */  sw    $t7, 4($a0)
/* B7F030 80107E90 3C18FB00 */  lui   $t8, 0xfb00
/* B7F034 80107E94 AC580000 */  sw    $t8, ($v0)
/* B7F038 80107E98 312F00FF */  andi  $t7, $t1, 0xff
/* B7F03C 80107E9C 000FC400 */  sll   $t8, $t7, 0x10
/* B7F040 80107EA0 000DCE00 */  sll   $t9, $t5, 0x18
/* B7F044 80107EA4 03387025 */  or    $t6, $t9, $t8
/* B7F048 80107EA8 314F00FF */  andi  $t7, $t2, 0xff
/* B7F04C 80107EAC 000FCA00 */  sll   $t9, $t7, 8
/* B7F050 80107EB0 01D9C025 */  or    $t8, $t6, $t9
/* B7F054 80107EB4 370F00FF */  ori   $t7, $t8, 0xff
/* B7F058 80107EB8 AC4F0004 */  sw    $t7, 4($v0)
/* B7F05C 80107EBC A42939F8 */  sh    $t1, %lo(D_801539F8)($at)
/* B7F060 80107EC0 3C018015 */  lui   $at, %hi(D_801539FC) # $at, 0x8015
/* B7F064 80107EC4 8FA40070 */  lw    $a0, 0x70($sp)
/* B7F068 80107EC8 A42A39FC */  sh    $t2, %lo(D_801539FC)($at)
/* B7F06C 80107ECC 3C018015 */  lui   $at, %hi(D_801539F4) # $at, 0x8015
/* B7F070 80107ED0 24450008 */  addiu $a1, $v0, 8
/* B7F074 80107ED4 A42D39F4 */  sh    $t5, %lo(D_801539F4)($at)
/* B7F078 80107ED8 3C0EFD90 */  lui   $t6, 0xfd90
/* B7F07C 80107EDC 24995E08 */  addiu $t9, $a0, 0x5e08
/* B7F080 80107EE0 ACB90004 */  sw    $t9, 4($a1)
/* B7F084 80107EE4 ACAE0000 */  sw    $t6, ($a1)
/* B7F088 80107EE8 24A20008 */  addiu $v0, $a1, 8
/* B7F08C 80107EEC 00402825 */  move  $a1, $v0
/* B7F090 80107EF0 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* B7F094 80107EF4 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B7F098 80107EF8 3C18F590 */  lui   $t8, 0xf590
/* B7F09C 80107EFC ACB80000 */  sw    $t8, ($a1)
/* B7F0A0 80107F00 ACAF0004 */  sw    $t7, 4($a1)
/* B7F0A4 80107F04 24420008 */  addiu $v0, $v0, 8
/* B7F0A8 80107F08 00402825 */  move  $a1, $v0
/* B7F0AC 80107F0C 3C0EE600 */  lui   $t6, 0xe600
/* B7F0B0 80107F10 ACAE0000 */  sw    $t6, ($a1)
/* B7F0B4 80107F14 ACA00004 */  sw    $zero, 4($a1)
/* B7F0B8 80107F18 24420008 */  addiu $v0, $v0, 8
/* B7F0BC 80107F1C 00402825 */  move  $a1, $v0
/* B7F0C0 80107F20 3C180703 */  lui   $t8, (0x0703F800 >> 16) # lui $t8, 0x703
/* B7F0C4 80107F24 3718F800 */  ori   $t8, (0x0703F800 & 0xFFFF) # ori $t8, $t8, 0xf800
/* B7F0C8 80107F28 3C19F300 */  lui   $t9, 0xf300
/* B7F0CC 80107F2C ACB90000 */  sw    $t9, ($a1)
/* B7F0D0 80107F30 ACB80004 */  sw    $t8, 4($a1)
/* B7F0D4 80107F34 24420008 */  addiu $v0, $v0, 8
/* B7F0D8 80107F38 00402825 */  move  $a1, $v0
/* B7F0DC 80107F3C ACA30000 */  sw    $v1, ($a1)
/* B7F0E0 80107F40 24420008 */  addiu $v0, $v0, 8
/* B7F0E4 80107F44 00401825 */  move  $v1, $v0
/* B7F0E8 80107F48 ACA00004 */  sw    $zero, 4($a1)
/* B7F0EC 80107F4C 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* B7F0F0 80107F50 3C0FF580 */  lui   $t7, (0xF5800200 >> 16) # lui $t7, 0xf580
/* B7F0F4 80107F54 35EF0200 */  ori   $t7, (0xF5800200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B7F0F8 80107F58 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* B7F0FC 80107F5C AC6E0004 */  sw    $t6, 4($v1)
/* B7F100 80107F60 AC6F0000 */  sw    $t7, ($v1)
/* B7F104 80107F64 24420008 */  addiu $v0, $v0, 8
/* B7F108 80107F68 00401825 */  move  $v1, $v0
/* B7F10C 80107F6C 3C180003 */  lui   $t8, (0x0003C03C >> 16) # lui $t8, 3
/* B7F110 80107F70 3718C03C */  ori   $t8, (0x0003C03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* B7F114 80107F74 3C19F200 */  lui   $t9, 0xf200
/* B7F118 80107F78 AC790000 */  sw    $t9, ($v1)
/* B7F11C 80107F7C AC780004 */  sw    $t8, 4($v1)
/* B7F120 80107F80 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B7F124 80107F84 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* B7F128 80107F88 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B7F12C 80107F8C 44810000 */  mtc1  $at, $f0
/* B7F130 80107F90 846F0B06 */  lh    $t7, 0xb06($v1)
/* B7F134 80107F94 3C014180 */  li    $at, 0x41800000 # 0.000000
/* B7F138 80107F98 44815000 */  mtc1  $at, $f10
/* B7F13C 80107F9C 448F2000 */  mtc1  $t7, $f4
/* B7F140 80107FA0 3C068017 */  lui   $a2, %hi(D_801759A0) # $a2, 0x8017
/* B7F144 80107FA4 24C659A0 */  addiu $a2, %lo(D_801759A0) # addiu $a2, $a2, 0x59a0
/* B7F148 80107FA8 468021A0 */  cvt.s.w $f6, $f4
/* B7F14C 80107FAC 3C014480 */  li    $at, 0x44800000 # 0.000000
/* B7F150 80107FB0 44812000 */  mtc1  $at, $f4
/* B7F154 80107FB4 87A8007A */  lh    $t0, 0x7a($sp)
/* B7F158 80107FB8 3C078017 */  lui   $a3, %hi(D_801759A4) # $a3, 0x8017
/* B7F15C 80107FBC 87A9007E */  lh    $t1, 0x7e($sp)
/* B7F160 80107FC0 46003203 */  div.s $f8, $f6, $f0
/* B7F164 80107FC4 24E759A4 */  addiu $a3, %lo(D_801759A4) # addiu $a3, $a3, 0x59a4
/* B7F168 80107FC8 3C01E400 */  lui   $at, 0xe400
/* B7F16C 80107FCC 24420008 */  addiu $v0, $v0, 8
/* B7F170 80107FD0 460A4402 */  mul.s $f16, $f8, $f10
/* B7F174 80107FD4 4600848D */  trunc.w.s $f18, $f16
/* B7F178 80107FD8 44059000 */  mfc1  $a1, $f18
/* B7F17C 80107FDC 00000000 */  nop   
/* B7F180 80107FE0 ACC50000 */  sw    $a1, ($a2)
/* B7F184 80107FE4 84780B06 */  lh    $t8, 0xb06($v1)
/* B7F188 80107FE8 0105C821 */  addu  $t9, $t0, $a1
/* B7F18C 80107FEC 00401825 */  move  $v1, $v0
/* B7F190 80107FF0 44983000 */  mtc1  $t8, $f6
/* B7F194 80107FF4 0019C080 */  sll   $t8, $t9, 2
/* B7F198 80107FF8 330F0FFF */  andi  $t7, $t8, 0xfff
/* B7F19C 80107FFC 46803220 */  cvt.s.w $f8, $f6
/* B7F1A0 80108000 0125C021 */  addu  $t8, $t1, $a1
/* B7F1A4 80108004 24420008 */  addiu $v0, $v0, 8
/* B7F1A8 80108008 46004283 */  div.s $f10, $f8, $f0
/* B7F1AC 8010800C 460A2403 */  div.s $f16, $f4, $f10
/* B7F1B0 80108010 4600848D */  trunc.w.s $f18, $f16
/* B7F1B4 80108014 440E9000 */  mfc1  $t6, $f18
/* B7F1B8 80108018 00000000 */  nop   
/* B7F1BC 8010801C ACEE0000 */  sw    $t6, ($a3)
/* B7F1C0 80108020 000F7300 */  sll   $t6, $t7, 0xc
/* B7F1C4 80108024 01C1C825 */  or    $t9, $t6, $at
/* B7F1C8 80108028 00187880 */  sll   $t7, $t8, 2
/* B7F1CC 8010802C 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B7F1D0 80108030 032EC025 */  or    $t8, $t9, $t6
/* B7F1D4 80108034 00087880 */  sll   $t7, $t0, 2
/* B7F1D8 80108038 31F90FFF */  andi  $t9, $t7, 0xfff
/* B7F1DC 8010803C AC780000 */  sw    $t8, ($v1)
/* B7F1E0 80108040 0009C080 */  sll   $t8, $t1, 2
/* B7F1E4 80108044 330F0FFF */  andi  $t7, $t8, 0xfff
/* B7F1E8 80108048 00197300 */  sll   $t6, $t9, 0xc
/* B7F1EC 8010804C 01CFC825 */  or    $t9, $t6, $t7
/* B7F1F0 80108050 AC790004 */  sw    $t9, 4($v1)
/* B7F1F4 80108054 00401825 */  move  $v1, $v0
/* B7F1F8 80108058 3C18E100 */  lui   $t8, 0xe100
/* B7F1FC 8010805C AC780000 */  sw    $t8, ($v1)
/* B7F200 80108060 AC600004 */  sw    $zero, 4($v1)
/* B7F204 80108064 24420008 */  addiu $v0, $v0, 8
/* B7F208 80108068 00401825 */  move  $v1, $v0
/* B7F20C 8010806C 3C0EF100 */  lui   $t6, 0xf100
/* B7F210 80108070 AC6E0000 */  sw    $t6, ($v1)
/* B7F214 80108074 8CE50000 */  lw    $a1, ($a3)
/* B7F218 80108078 24420008 */  addiu $v0, $v0, 8
/* B7F21C 8010807C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7F220 80108080 00057C00 */  sll   $t7, $a1, 0x10
/* B7F224 80108084 01E5C825 */  or    $t9, $t7, $a1
/* B7F228 80108088 AC790004 */  sw    $t9, 4($v1)
/* B7F22C 8010808C 248320D8 */  addiu $v1, $a0, 0x20d8
/* B7F230 80108090 24787FFF */  addiu $t8, $v1, 0x7fff
/* B7F234 80108094 931863E8 */  lbu   $t8, 0x63e8($t8)
/* B7F238 80108098 24617FFF */  addiu $at, $v1, 0x7fff
/* B7F23C 8010809C 270E0001 */  addiu $t6, $t8, 1
/* B7F240 801080A0 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B7F244 801080A4 8FAF0074 */  lw    $t7, 0x74($sp)
/* B7F248 801080A8 ADE20000 */  sw    $v0, ($t7)
.L801080AC:
/* B7F24C 801080AC 03E00008 */  jr    $ra
/* B7F250 801080B0 27BD0070 */   addiu $sp, $sp, 0x70
