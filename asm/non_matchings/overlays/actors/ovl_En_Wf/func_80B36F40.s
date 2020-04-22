.late_rodata
glabel D_80B37BCC
 .word 0x460B6000

.text
glabel func_80B36F40
/* 03290 80B36F40 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03294 80B36F44 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03298 80B36F48 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0329C 80B36F4C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 032A0 80B36F50 8C8202D4 */  lw      $v0, 0x02D4($a0)           ## 000002D4
/* 032A4 80B36F54 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 032A8 80B36F58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 032AC 80B36F5C 54410015 */  bnel    $v0, $at, .L80B36FB4       
/* 032B0 80B36F60 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 032B4 80B36F64 848302E2 */  lh      $v1, 0x02E2($a0)           ## 000002E2
/* 032B8 80B36F68 10600011 */  beq     $v1, $zero, .L80B36FB0     
/* 032BC 80B36F6C 00032140 */  sll     $a0, $v1,  5               
/* 032C0 80B36F70 00832021 */  addu    $a0, $a0, $v1              
/* 032C4 80B36F74 00042080 */  sll     $a0, $a0,  2               
/* 032C8 80B36F78 00832023 */  subu    $a0, $a0, $v1              
/* 032CC 80B36F7C 00042080 */  sll     $a0, $a0,  2               
/* 032D0 80B36F80 00832021 */  addu    $a0, $a0, $v1              
/* 032D4 80B36F84 000420C0 */  sll     $a0, $a0,  3               
/* 032D8 80B36F88 00042400 */  sll     $a0, $a0, 16               
/* 032DC 80B36F8C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 032E0 80B36F90 00042403 */  sra     $a0, $a0, 16               
/* 032E4 80B36F94 3C0180B3 */  lui     $at, %hi(D_80B37BCC)       ## $at = 80B30000
/* 032E8 80B36F98 C4247BCC */  lwc1    $f4, %lo(D_80B37BCC)($at)  
/* 032EC 80B36F9C 46040182 */  mul.s   $f6, $f0, $f4              
/* 032F0 80B36FA0 4600320D */  trunc.w.s $f8, $f6                   
/* 032F4 80B36FA4 440F4000 */  mfc1    $t7, $f8                   
/* 032F8 80B36FA8 1000001E */  beq     $zero, $zero, .L80B37024   
/* 032FC 80B36FAC A60F04D6 */  sh      $t7, 0x04D6($s0)           ## 000004D6
.L80B36FB0:
/* 03300 80B36FB0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80B36FB4:
/* 03304 80B36FB4 1041001B */  beq     $v0, $at, .L80B37024       
/* 03308 80B36FB8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0330C 80B36FBC 10410018 */  beq     $v0, $at, .L80B37020       
/* 03310 80B36FC0 260404D6 */  addiu   $a0, $s0, 0x04D6           ## $a0 = 000004D6
/* 03314 80B36FC4 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 03318 80B36FC8 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 0331C 80B36FCC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 03320 80B36FD0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03324 80B36FD4 03192823 */  subu    $a1, $t8, $t9              
/* 03328 80B36FD8 00052C00 */  sll     $a1, $a1, 16               
/* 0332C 80B36FDC 00052C03 */  sra     $a1, $a1, 16               
/* 03330 80B36FE0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03334 80B36FE4 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 03338 80B36FE8 860204D6 */  lh      $v0, 0x04D6($s0)           ## 000004D6
/* 0333C 80B36FEC 2408CED9 */  addiu   $t0, $zero, 0xCED9         ## $t0 = FFFFCED9
/* 03340 80B36FF0 2841CED9 */  slti    $at, $v0, 0xCED9           
/* 03344 80B36FF4 50200004 */  beql    $at, $zero, .L80B37008     
/* 03348 80B36FF8 28413128 */  slti    $at, $v0, 0x3128           
/* 0334C 80B36FFC 10000009 */  beq     $zero, $zero, .L80B37024   
/* 03350 80B37000 A60804D6 */  sh      $t0, 0x04D6($s0)           ## 000004D6
/* 03354 80B37004 28413128 */  slti    $at, $v0, 0x3128           
.L80B37008:
/* 03358 80B37008 14200003 */  bne     $at, $zero, .L80B37018     
/* 0335C 80B3700C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 03360 80B37010 10000001 */  beq     $zero, $zero, .L80B37018   
/* 03364 80B37014 24033127 */  addiu   $v1, $zero, 0x3127         ## $v1 = 00003127
.L80B37018:
/* 03368 80B37018 10000002 */  beq     $zero, $zero, .L80B37024   
/* 0336C 80B3701C A60304D6 */  sh      $v1, 0x04D6($s0)           ## 000004D6
.L80B37020:
/* 03370 80B37020 A60004D6 */  sh      $zero, 0x04D6($s0)         ## 000004D6
.L80B37024:
/* 03374 80B37024 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03378 80B37028 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0337C 80B3702C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03380 80B37030 03E00008 */  jr      $ra                        
/* 03384 80B37034 00000000 */  nop