.late_rodata
glabel D_808756A8
    .float 0.003000000026077032

.text
glabel func_80873D14
/* 014E4 80873D14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 014E8 80873D18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 014EC 80873D1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 014F0 80873D20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014F4 80873D24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 014F8 80873D28 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 014FC 80873D2C 24840150 */  addiu   $a0, $a0, 0x0150           ## $a0 = 00000150
/* 01500 80873D30 860E02E8 */  lh      $t6, 0x02E8($s0)           ## 000002E8
/* 01504 80873D34 3C018087 */  lui     $at, %hi(D_808756A8)       ## $at = 80870000
/* 01508 80873D38 55C0002E */  bnel    $t6, $zero, .L80873DF4     
/* 0150C 80873D3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01510 80873D40 C6040308 */  lwc1    $f4, 0x0308($s0)           ## 00000308
/* 01514 80873D44 C42656A8 */  lwc1    $f6, %lo(D_808756A8)($at)  
/* 01518 80873D48 3C188087 */  lui     $t8, %hi(func_80873E04)    ## $t8 = 80870000
/* 0151C 80873D4C 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 01520 80873D50 4606203C */  c.lt.s  $f4, $f6                   
/* 01524 80873D54 27183E04 */  addiu   $t8, $t8, %lo(func_80873E04) ## $t8 = 80873E04
/* 01528 80873D58 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0152C 80873D5C 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 01530 80873D60 45020005 */  bc1fl   .L80873D78                 
/* 01534 80873D64 8E050310 */  lw      $a1, 0x0310($s0)           ## 00000310
/* 01538 80873D68 A60F02E8 */  sh      $t7, 0x02E8($s0)           ## 000002E8
/* 0153C 80873D6C 10000020 */  beq     $zero, $zero, .L80873DF0   
/* 01540 80873D70 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 01544 80873D74 8E050310 */  lw      $a1, 0x0310($s0)           ## 00000310
.L80873D78:
/* 01548 80873D78 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0154C 80873D7C 8E060314 */  lw      $a2, 0x0314($s0)           ## 00000314
/* 01550 80873D80 3C063BA3 */  lui     $a2, 0x3BA3                ## $a2 = 3BA30000
/* 01554 80873D84 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3BA3D70A
/* 01558 80873D88 26040308 */  addiu   $a0, $s0, 0x0308           ## $a0 = 00000308
/* 0155C 80873D8C 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01560 80873D90 8E050318 */  lw      $a1, 0x0318($s0)           ## 00000318
/* 01564 80873D94 3C053F4C */  lui     $a1, 0x3F4C                ## $a1 = 3F4C0000
/* 01568 80873D98 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0156C 80873D9C 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 01570 80873DA0 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 01574 80873DA4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01578 80873DA8 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3F4CCCCD
/* 0157C 80873DAC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01580 80873DB0 26040314 */  addiu   $a0, $s0, 0x0314           ## $a0 = 00000314
/* 01584 80873DB4 3C053E4C */  lui     $a1, 0x3E4C                ## $a1 = 3E4C0000
/* 01588 80873DB8 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 0158C 80873DBC 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 01590 80873DC0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 01594 80873DC4 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 01598 80873DC8 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3E4CCCCD
/* 0159C 80873DCC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 015A0 80873DD0 26040318 */  addiu   $a0, $s0, 0x0318           ## $a0 = 00000318
/* 015A4 80873DD4 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 015A8 80873DD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015AC 80873DDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 015B0 80873DE0 27280BB8 */  addiu   $t0, $t9, 0x0BB8           ## $t0 = 00000BB8
/* 015B4 80873DE4 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 015B8 80873DE8 0C21CA58 */  jal     func_80872960              
/* 015BC 80873DEC 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80873DF0:
/* 015C0 80873DF0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80873DF4:
/* 015C4 80873DF4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 015C8 80873DF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 015CC 80873DFC 03E00008 */  jr      $ra                        
/* 015D0 80873E00 00000000 */  nop