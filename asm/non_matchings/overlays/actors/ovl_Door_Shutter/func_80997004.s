glabel func_80997004
/* 00D64 80997004 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D68 80997008 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D6C 8099700C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D70 80997010 8082016E */  lb      $v0, 0x016E($a0)           ## 0000016E
/* 00D74 80997014 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D78 80997018 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00D7C 8099701C 14400003 */  bne     $v0, $zero, .L8099702C     
/* 00D80 80997020 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00D84 80997024 10000003 */  beq     $zero, $zero, .L80997034   
/* 00D88 80997028 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8099702C:
/* 00D8C 8099702C A20E016E */  sb      $t6, 0x016E($s0)           ## 0000016E
/* 00D90 80997030 8203016E */  lb      $v1, 0x016E($s0)           ## 0000016E
.L80997034:
/* 00D94 80997034 14600041 */  bne     $v1, $zero, .L8099713C     
/* 00D98 80997038 01E57821 */  addu    $t7, $t7, $a1              
/* 00D9C 8099703C 81EF1CED */  lb      $t7, 0x1CED($t7)           ## 00011CED
/* 00DA0 80997040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DA4 80997044 55E0003E */  bnel    $t7, $zero, .L80997140     
/* 00DA8 80997048 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DAC 8099704C 0C265B45 */  jal     func_80996D14              
/* 00DB0 80997050 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DB4 80997054 5040003A */  beql    $v0, $zero, .L80997140     
/* 00DB8 80997058 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DBC 8099705C 9218016A */  lbu     $t8, 0x016A($s0)           ## 0000016A
/* 00DC0 80997060 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00DC4 80997064 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC8 80997068 17010004 */  bne     $t8, $at, .L8099707C       
/* 00DCC 8099706C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00DD0 80997070 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00DD4 80997074 10000005 */  beq     $zero, $zero, .L8099708C   
/* 00DD8 80997078 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
.L8099707C:
/* 00DDC 8099707C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00DE0 80997080 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00DE4 80997084 00000000 */  nop
/* 00DE8 80997088 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
.L8099708C:
/* 00DEC 8099708C 4604003C */  c.lt.s  $f0, $f4                   
/* 00DF0 80997090 00000000 */  nop
/* 00DF4 80997094 4502002A */  bc1fl   .L80997140                 
/* 00DF8 80997098 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DFC 8099709C 0C2658AB */  jal     func_809962AC              
/* 00E00 809970A0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00E04 809970A4 10400004 */  beq     $v0, $zero, .L809970B8     
/* 00E08 809970A8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00E0C 809970AC 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00E10 809970B0 00000000 */  nop
/* 00E14 809970B4 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
.L809970B8:
/* 00E18 809970B8 9219016C */  lbu     $t9, 0x016C($s0)           ## 0000016C
/* 00E1C 809970BC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00E20 809970C0 2405281C */  addiu   $a1, $zero, 0x281C         ## $a1 = 0000281C
/* 00E24 809970C4 13210009 */  beq     $t9, $at, .L809970EC       
/* 00E28 809970C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E2C 809970CC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E30 809970D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E34 809970D4 3C058099 */  lui     $a1, %hi(func_809973E8)    ## $a1 = 80990000
/* 00E38 809970D8 24A573E8 */  addiu   $a1, $a1, %lo(func_809973E8) ## $a1 = 809973E8
/* 00E3C 809970DC 0C2658A8 */  jal     func_809962A0              
/* 00E40 809970E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E44 809970E4 10000016 */  beq     $zero, $zero, .L80997140   
/* 00E48 809970E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809970EC:
/* 00E4C 809970EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E50 809970F0 24052865 */  addiu   $a1, $zero, 0x2865         ## $a1 = 00002865
/* 00E54 809970F4 9202016A */  lbu     $v0, 0x016A($s0)           ## 0000016A
/* 00E58 809970F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00E5C 809970FC 10410003 */  beq     $v0, $at, .L8099710C       
/* 00E60 80997100 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00E64 80997104 14410009 */  bne     $v0, $at, .L8099712C       
/* 00E68 80997108 00000000 */  nop
.L8099710C:
/* 00E6C 8099710C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00E70 80997110 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00E74 80997114 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00E78 80997118 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00E7C 8099711C 14400003 */  bne     $v0, $zero, .L8099712C     
/* 00E80 80997120 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E84 80997124 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E88 80997128 24052892 */  addiu   $a1, $zero, 0x2892         ## $a1 = 00002892
.L8099712C:
/* 00E8C 8099712C 3C058099 */  lui     $a1, %hi(func_80997528)    ## $a1 = 80990000
/* 00E90 80997130 24A57528 */  addiu   $a1, $a1, %lo(func_80997528) ## $a1 = 80997528
/* 00E94 80997134 0C2658A8 */  jal     func_809962A0              
/* 00E98 80997138 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8099713C:
/* 00E9C 8099713C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80997140:
/* 00EA0 80997140 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EA4 80997144 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EA8 80997148 03E00008 */  jr      $ra                        
/* 00EAC 8099714C 00000000 */  nop