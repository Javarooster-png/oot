glabel func_808D6AAC
/* 0023C 808D6AAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00240 808D6AB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00244 808D6AB4 3C100001 */  lui     $s0, 0x0001                ## $s0 = 00010000
/* 00248 808D6AB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0024C 808D6ABC 02048021 */  addu    $s0, $s0, $a0              
/* 00250 808D6AC0 8E101E10 */  lw      $s0, 0x1E10($s0)           ## 00011E10
/* 00254 808D6AC4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808D6AC8:
/* 00258 808D6AC8 920E0000 */  lbu     $t6, 0x0000($s0)           ## 00010000
/* 0025C 808D6ACC 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00260 808D6AD0 00021400 */  sll     $v0, $v0, 16               
/* 00264 808D6AD4 15C0003E */  bne     $t6, $zero, .L808D6BD0     
/* 00268 808D6AD8 00021403 */  sra     $v0, $v0, 16               
/* 0026C 808D6ADC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00270 808D6AE0 A20F0000 */  sb      $t7, 0x0000($s0)           ## 00010000
/* 00274 808D6AE4 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 00278 808D6AE8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0027C 808D6AEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00280 808D6AF0 AE190004 */  sw      $t9, 0x0004($s0)           ## 00010004
/* 00284 808D6AF4 8CB80004 */  lw      $t8, 0x0004($a1)           ## 00000004
/* 00288 808D6AF8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0028C 808D6AFC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00290 808D6B00 AE180008 */  sw      $t8, 0x0008($s0)           ## 00010008
/* 00294 808D6B04 8CB90008 */  lw      $t9, 0x0008($a1)           ## 00000008
/* 00298 808D6B08 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0029C 808D6B0C 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 002A0 808D6B10 AE19000C */  sw      $t9, 0x000C($s0)           ## 0001000C
/* 002A4 808D6B14 8CC90000 */  lw      $t1, 0x0000($a2)           ## 00000000
/* 002A8 808D6B18 AE090010 */  sw      $t1, 0x0010($s0)           ## 00010010
/* 002AC 808D6B1C 8CC80004 */  lw      $t0, 0x0004($a2)           ## 00000004
/* 002B0 808D6B20 AE080014 */  sw      $t0, 0x0014($s0)           ## 00010014
/* 002B4 808D6B24 8CC90008 */  lw      $t1, 0x0008($a2)           ## 00000008
/* 002B8 808D6B28 AE090018 */  sw      $t1, 0x0018($s0)           ## 00010018
/* 002BC 808D6B2C 8CEB0000 */  lw      $t3, 0x0000($a3)           ## 00000000
/* 002C0 808D6B30 AE0B001C */  sw      $t3, 0x001C($s0)           ## 0001001C
/* 002C4 808D6B34 8CEA0004 */  lw      $t2, 0x0004($a3)           ## 00000004
/* 002C8 808D6B38 AE0A0020 */  sw      $t2, 0x0020($s0)           ## 00010020
/* 002CC 808D6B3C 8CEB0008 */  lw      $t3, 0x0008($a3)           ## 00000008
/* 002D0 808D6B40 AE0B0024 */  sw      $t3, 0x0024($s0)           ## 00010024
/* 002D4 808D6B44 C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 002D8 808D6B48 E60A0038 */  swc1    $f10, 0x0038($s0)          ## 00010038
/* 002DC 808D6B4C 46062203 */  div.s   $f8, $f4, $f6              
/* 002E0 808D6B50 E6080034 */  swc1    $f8, 0x0034($s0)           ## 00010034
/* 002E4 808D6B54 C7B20034 */  lwc1    $f18, 0x0034($sp)          
/* 002E8 808D6B58 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 002EC 808D6B5C E6120040 */  swc1    $f18, 0x0040($s0)          ## 00010040
/* 002F0 808D6B60 4600010D */  trunc.w.s $f4, $f0                   
/* 002F4 808D6B64 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002F8 808D6B68 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 002FC 808D6B6C 440F2000 */  mfc1    $t7, $f4                   
/* 00300 808D6B70 00000000 */  nop
/* 00304 808D6B74 25F800C8 */  addiu   $t8, $t7, 0x00C8           ## $t8 = 000000C8
/* 00308 808D6B78 A618002E */  sh      $t8, 0x002E($s0)           ## 0001002E
/* 0030C 808D6B7C 87B9003A */  lh      $t9, 0x003A($sp)           
/* 00310 808D6B80 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00314 808D6B84 A6190030 */  sh      $t9, 0x0030($s0)           ## 00010030
/* 00318 808D6B88 4600018D */  trunc.w.s $f6, $f0                   
/* 0031C 808D6B8C C60C0018 */  lwc1    $f12, 0x0018($s0)          ## 00010018
/* 00320 808D6B90 C60E0010 */  lwc1    $f14, 0x0010($s0)          ## 00010010
/* 00324 808D6B94 440B3000 */  mfc1    $t3, $f6                   
/* 00328 808D6B98 0C0341F5 */  jal     atan2f
              
/* 0032C 808D6B9C A20B0001 */  sb      $t3, 0x0001($s0)           ## 00010001
/* 00330 808D6BA0 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00010010
/* 00334 808D6BA4 C6020018 */  lwc1    $f2, 0x0018($s0)           ## 00010018
/* 00338 808D6BA8 E6000048 */  swc1    $f0, 0x0048($s0)           ## 00010048
/* 0033C 808D6BAC 46108202 */  mul.s   $f8, $f16, $f16            
/* 00340 808D6BB0 C60E0014 */  lwc1    $f14, 0x0014($s0)          ## 00010014
/* 00344 808D6BB4 46021282 */  mul.s   $f10, $f2, $f2             
/* 00348 808D6BB8 460A4000 */  add.s   $f0, $f8, $f10             
/* 0034C 808D6BBC 0C0341F5 */  jal     atan2f
              
/* 00350 808D6BC0 46000304 */  sqrt.s  $f12, $f0                  
/* 00354 808D6BC4 46000487 */  neg.s   $f18, $f0                  
/* 00358 808D6BC8 10000004 */  beq     $zero, $zero, .L808D6BDC   
/* 0035C 808D6BCC E6120044 */  swc1    $f18, 0x0044($s0)          ## 00010044
.L808D6BD0:
/* 00360 808D6BD0 28410096 */  slti    $at, $v0, 0x0096           
/* 00364 808D6BD4 1420FFBC */  bne     $at, $zero, .L808D6AC8     
/* 00368 808D6BD8 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0001004C
.L808D6BDC:
/* 0036C 808D6BDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00370 808D6BE0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00374 808D6BE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00378 808D6BE8 03E00008 */  jr      $ra                        
/* 0037C 808D6BEC 00000000 */  nop