.rdata
glabel D_8097C050
    .asciz "[31mDemo_Gj_common_Reflect : そんなarg_dataには対応していない = %d\n[m"
    .balign 4

.late_rodata
glabel jtbl_8097C1AC
.word L80979288
.word L80979320
.word L809793B8
.word L80979450
.word L809794E8
.word L80979580
.word L80979618
glabel D_8097C1C8
    .float 0.01

glabel D_8097C1CC
    .float 0.01

glabel D_8097C1D0
    .float 0.01

glabel D_8097C1D4
    .float 0.01

glabel D_8097C1D8
    .float 0.01

glabel D_8097C1DC
    .float 0.01

glabel D_8097C1E0
    .float 0.01

glabel D_8097C1E4
 .word 0x4487C000

.text
glabel func_8097923C
/* 0090C 8097923C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00910 80979240 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00914 80979244 F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 00918 80979248 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 0091C 8097924C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00920 80979250 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00924 80979254 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00928 80979258 0C25E254 */  jal     func_80978950              
/* 0092C 8097925C E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00930 80979260 244EFFF8 */  addiu   $t6, $v0, 0xFFF8           ## $t6 = FFFFFFF8
/* 00934 80979264 2DC10007 */  sltiu   $at, $t6, 0x0007           
/* 00938 80979268 10200114 */  beq     $at, $zero, .L809796BC     
/* 0093C 8097926C 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00940 80979270 000E7080 */  sll     $t6, $t6,  2               
/* 00944 80979274 3C018098 */  lui     $at, %hi(jtbl_8097C1AC)       ## $at = 80980000
/* 00948 80979278 002E0821 */  addu    $at, $at, $t6              
/* 0094C 8097927C 8C2EC1AC */  lw      $t6, %lo(jtbl_8097C1AC)($at)  
/* 00950 80979280 01C00008 */  jr      $t6                        
/* 00954 80979284 00000000 */  nop
glabel L80979288
/* 00958 80979288 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0095C 8097928C 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00960 80979290 3C018098 */  lui     $at, %hi(D_8097C1C8)       ## $at = 80980000
/* 00964 80979294 C420C1C8 */  lwc1    $f0, %lo(D_8097C1C8)($at)  
/* 00968 80979298 844F1482 */  lh      $t7, 0x1482($v0)           ## 80161482
/* 0096C 8097929C 84581484 */  lh      $t8, 0x1484($v0)           ## 80161484
/* 00970 809792A0 84591486 */  lh      $t9, 0x1486($v0)           ## 80161486
/* 00974 809792A4 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00978 809792A8 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 0097C 809792AC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00980 809792B0 46803320 */  cvt.s.w $f12, $f6                  
/* 00984 809792B4 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00988 809792B8 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 0098C 809792BC 84481488 */  lh      $t0, 0x1488($v0)           ## 80161488
/* 00990 809792C0 8449148A */  lh      $t1, 0x148A($v0)           ## 8016148A
/* 00994 809792C4 468042A0 */  cvt.s.w $f10, $f8                  
/* 00998 809792C8 844A148C */  lh      $t2, 0x148C($v0)           ## 8016148C
/* 0099C 809792CC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 009A0 809792D0 46803220 */  cvt.s.w $f8, $f6                   
/* 009A4 809792D4 46005102 */  mul.s   $f4, $f10, $f0             
/* 009A8 809792D8 46022380 */  add.s   $f14, $f4, $f2             
/* 009AC 809792DC 46004282 */  mul.s   $f10, $f8, $f0             
/* 009B0 809792E0 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 009B4 809792E4 00000000 */  nop
/* 009B8 809792E8 468021A0 */  cvt.s.w $f6, $f4                   
/* 009BC 809792EC 46025400 */  add.s   $f16, $f10, $f2            
/* 009C0 809792F0 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 009C4 809792F4 46003202 */  mul.s   $f8, $f6, $f0              
/* 009C8 809792F8 46805120 */  cvt.s.w $f4, $f10                  
/* 009CC 809792FC 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 009D0 80979300 46024480 */  add.s   $f18, $f8, $f2             
/* 009D4 80979304 46002182 */  mul.s   $f6, $f4, $f0              
/* 009D8 80979308 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 009DC 8097930C 46805120 */  cvt.s.w $f4, $f10                  
/* 009E0 80979310 46083500 */  add.s   $f20, $f6, $f8             
/* 009E4 80979314 46002182 */  mul.s   $f6, $f4, $f0              
/* 009E8 80979318 100000EE */  beq     $zero, $zero, .L809796D4   
/* 009EC 8097931C 46023580 */  add.s   $f22, $f6, $f2             
glabel L80979320
/* 009F0 80979320 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 009F4 80979324 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 009F8 80979328 3C018098 */  lui     $at, %hi(D_8097C1CC)       ## $at = 80980000
/* 009FC 8097932C C420C1CC */  lwc1    $f0, %lo(D_8097C1CC)($at)  
/* 00A00 80979330 844B149C */  lh      $t3, 0x149C($v0)           ## 8016149C
/* 00A04 80979334 844C149E */  lh      $t4, 0x149E($v0)           ## 8016149E
/* 00A08 80979338 844D14A0 */  lh      $t5, 0x14A0($v0)           ## 801614A0
/* 00A0C 8097933C 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 00A10 80979340 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00A14 80979344 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00A18 80979348 46804320 */  cvt.s.w $f12, $f8                  
/* 00A1C 8097934C 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 00A20 80979350 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00A24 80979354 844E14A2 */  lh      $t6, 0x14A2($v0)           ## 801614A2
/* 00A28 80979358 844F14A4 */  lh      $t7, 0x14A4($v0)           ## 801614A4
/* 00A2C 8097935C 46805120 */  cvt.s.w $f4, $f10                  
/* 00A30 80979360 845814A6 */  lh      $t8, 0x14A6($v0)           ## 801614A6
/* 00A34 80979364 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00A38 80979368 468042A0 */  cvt.s.w $f10, $f8                  
/* 00A3C 8097936C 46002182 */  mul.s   $f6, $f4, $f0              
/* 00A40 80979370 46023380 */  add.s   $f14, $f6, $f2             
/* 00A44 80979374 46005102 */  mul.s   $f4, $f10, $f0             
/* 00A48 80979378 448E3000 */  mtc1    $t6, $f6                   ## $f6 = NaN
/* 00A4C 8097937C 00000000 */  nop
/* 00A50 80979380 46803220 */  cvt.s.w $f8, $f6                   
/* 00A54 80979384 46022400 */  add.s   $f16, $f4, $f2             
/* 00A58 80979388 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00A5C 8097938C 46004282 */  mul.s   $f10, $f8, $f0             
/* 00A60 80979390 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A64 80979394 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00A68 80979398 46025480 */  add.s   $f18, $f10, $f2            
/* 00A6C 8097939C 46003202 */  mul.s   $f8, $f6, $f0              
/* 00A70 809793A0 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00A74 809793A4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A78 809793A8 460A4500 */  add.s   $f20, $f8, $f10            
/* 00A7C 809793AC 46003202 */  mul.s   $f8, $f6, $f0              
/* 00A80 809793B0 100000C8 */  beq     $zero, $zero, .L809796D4   
/* 00A84 809793B4 46024580 */  add.s   $f22, $f8, $f2             
glabel L809793B8
/* 00A88 809793B8 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00A8C 809793BC 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00A90 809793C0 3C018098 */  lui     $at, %hi(D_8097C1D0)       ## $at = 80980000
/* 00A94 809793C4 C420C1D0 */  lwc1    $f0, %lo(D_8097C1D0)($at)  
/* 00A98 809793C8 845914B6 */  lh      $t9, 0x14B6($v0)           ## 801614B6
/* 00A9C 809793CC 844814B8 */  lh      $t0, 0x14B8($v0)           ## 801614B8
/* 00AA0 809793D0 844914BA */  lh      $t1, 0x14BA($v0)           ## 801614BA
/* 00AA4 809793D4 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00AA8 809793D8 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00AAC 809793DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00AB0 809793E0 46805320 */  cvt.s.w $f12, $f10                 
/* 00AB4 809793E4 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 00AB8 809793E8 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00ABC 809793EC 844A14BC */  lh      $t2, 0x14BC($v0)           ## 801614BC
/* 00AC0 809793F0 844B14BE */  lh      $t3, 0x14BE($v0)           ## 801614BE
/* 00AC4 809793F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00AC8 809793F8 844C14C0 */  lh      $t4, 0x14C0($v0)           ## 801614C0
/* 00ACC 809793FC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00AD0 80979400 46805120 */  cvt.s.w $f4, $f10                  
/* 00AD4 80979404 46003202 */  mul.s   $f8, $f6, $f0              
/* 00AD8 80979408 46024380 */  add.s   $f14, $f8, $f2             
/* 00ADC 8097940C 46002182 */  mul.s   $f6, $f4, $f0              
/* 00AE0 80979410 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 00AE4 80979414 00000000 */  nop
/* 00AE8 80979418 468042A0 */  cvt.s.w $f10, $f8                  
/* 00AEC 8097941C 46023400 */  add.s   $f16, $f6, $f2             
/* 00AF0 80979420 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 00AF4 80979424 46005102 */  mul.s   $f4, $f10, $f0             
/* 00AF8 80979428 46803220 */  cvt.s.w $f8, $f6                   
/* 00AFC 8097942C 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 00B00 80979430 46022480 */  add.s   $f18, $f4, $f2             
/* 00B04 80979434 46004282 */  mul.s   $f10, $f8, $f0             
/* 00B08 80979438 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00B0C 8097943C 46803220 */  cvt.s.w $f8, $f6                   
/* 00B10 80979440 46045500 */  add.s   $f20, $f10, $f4            
/* 00B14 80979444 46004282 */  mul.s   $f10, $f8, $f0             
/* 00B18 80979448 100000A2 */  beq     $zero, $zero, .L809796D4   
/* 00B1C 8097944C 46025580 */  add.s   $f22, $f10, $f2            
glabel L80979450
/* 00B20 80979450 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00B24 80979454 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00B28 80979458 3C018098 */  lui     $at, %hi(D_8097C1D4)       ## $at = 80980000
/* 00B2C 8097945C C420C1D4 */  lwc1    $f0, %lo(D_8097C1D4)($at)  
/* 00B30 80979460 844D14D0 */  lh      $t5, 0x14D0($v0)           ## 801614D0
/* 00B34 80979464 844E14D2 */  lh      $t6, 0x14D2($v0)           ## 801614D2
/* 00B38 80979468 844F14D4 */  lh      $t7, 0x14D4($v0)           ## 801614D4
/* 00B3C 8097946C 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 00B40 80979470 448E3000 */  mtc1    $t6, $f6                   ## $f6 = NaN
/* 00B44 80979474 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00B48 80979478 46802320 */  cvt.s.w $f12, $f4                  
/* 00B4C 8097947C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00B50 80979480 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00B54 80979484 845814D6 */  lh      $t8, 0x14D6($v0)           ## 801614D6
/* 00B58 80979488 845914D8 */  lh      $t9, 0x14D8($v0)           ## 801614D8
/* 00B5C 8097948C 46803220 */  cvt.s.w $f8, $f6                   
/* 00B60 80979490 844814DA */  lh      $t0, 0x14DA($v0)           ## 801614DA
/* 00B64 80979494 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00B68 80979498 468021A0 */  cvt.s.w $f6, $f4                   
/* 00B6C 8097949C 46004282 */  mul.s   $f10, $f8, $f0             
/* 00B70 809794A0 46025380 */  add.s   $f14, $f10, $f2            
/* 00B74 809794A4 46003202 */  mul.s   $f8, $f6, $f0              
/* 00B78 809794A8 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00B7C 809794AC 00000000 */  nop
/* 00B80 809794B0 46805120 */  cvt.s.w $f4, $f10                  
/* 00B84 809794B4 46024400 */  add.s   $f16, $f8, $f2             
/* 00B88 809794B8 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00B8C 809794BC 46002182 */  mul.s   $f6, $f4, $f0              
/* 00B90 809794C0 468042A0 */  cvt.s.w $f10, $f8                  
/* 00B94 809794C4 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 00B98 809794C8 46023480 */  add.s   $f18, $f6, $f2             
/* 00B9C 809794CC 46005102 */  mul.s   $f4, $f10, $f0             
/* 00BA0 809794D0 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00BA4 809794D4 468042A0 */  cvt.s.w $f10, $f8                  
/* 00BA8 809794D8 46062500 */  add.s   $f20, $f4, $f6             
/* 00BAC 809794DC 46005102 */  mul.s   $f4, $f10, $f0             
/* 00BB0 809794E0 1000007C */  beq     $zero, $zero, .L809796D4   
/* 00BB4 809794E4 46022580 */  add.s   $f22, $f4, $f2             
glabel L809794E8
/* 00BB8 809794E8 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00BBC 809794EC 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00BC0 809794F0 3C018098 */  lui     $at, %hi(D_8097C1D8)       ## $at = 80980000
/* 00BC4 809794F4 C420C1D8 */  lwc1    $f0, %lo(D_8097C1D8)($at)  
/* 00BC8 809794F8 844914EA */  lh      $t1, 0x14EA($v0)           ## 801614EA
/* 00BCC 809794FC 844A14EC */  lh      $t2, 0x14EC($v0)           ## 801614EC
/* 00BD0 80979500 844B14EE */  lh      $t3, 0x14EE($v0)           ## 801614EE
/* 00BD4 80979504 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 00BD8 80979508 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 00BDC 8097950C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BE0 80979510 46803320 */  cvt.s.w $f12, $f6                  
/* 00BE4 80979514 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 00BE8 80979518 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00BEC 8097951C 844C14F0 */  lh      $t4, 0x14F0($v0)           ## 801614F0
/* 00BF0 80979520 844D14F2 */  lh      $t5, 0x14F2($v0)           ## 801614F2
/* 00BF4 80979524 468042A0 */  cvt.s.w $f10, $f8                  
/* 00BF8 80979528 844E14F4 */  lh      $t6, 0x14F4($v0)           ## 801614F4
/* 00BFC 8097952C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00C00 80979530 46803220 */  cvt.s.w $f8, $f6                   
/* 00C04 80979534 46005102 */  mul.s   $f4, $f10, $f0             
/* 00C08 80979538 46022380 */  add.s   $f14, $f4, $f2             
/* 00C0C 8097953C 46004282 */  mul.s   $f10, $f8, $f0             
/* 00C10 80979540 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00C14 80979544 00000000 */  nop
/* 00C18 80979548 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C1C 8097954C 46025400 */  add.s   $f16, $f10, $f2            
/* 00C20 80979550 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 00C24 80979554 46003202 */  mul.s   $f8, $f6, $f0              
/* 00C28 80979558 46805120 */  cvt.s.w $f4, $f10                  
/* 00C2C 8097955C 448E5000 */  mtc1    $t6, $f10                  ## $f10 = NaN
/* 00C30 80979560 46024480 */  add.s   $f18, $f8, $f2             
/* 00C34 80979564 46002182 */  mul.s   $f6, $f4, $f0              
/* 00C38 80979568 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 00C3C 8097956C 46805120 */  cvt.s.w $f4, $f10                  
/* 00C40 80979570 46083500 */  add.s   $f20, $f6, $f8             
/* 00C44 80979574 46002182 */  mul.s   $f6, $f4, $f0              
/* 00C48 80979578 10000056 */  beq     $zero, $zero, .L809796D4   
/* 00C4C 8097957C 46023580 */  add.s   $f22, $f6, $f2             
glabel L80979580
/* 00C50 80979580 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00C54 80979584 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00C58 80979588 3C018098 */  lui     $at, %hi(D_8097C1DC)       ## $at = 80980000
/* 00C5C 8097958C C420C1DC */  lwc1    $f0, %lo(D_8097C1DC)($at)  
/* 00C60 80979590 844F1504 */  lh      $t7, 0x1504($v0)           ## 80161504
/* 00C64 80979594 84581506 */  lh      $t8, 0x1506($v0)           ## 80161506
/* 00C68 80979598 84591508 */  lh      $t9, 0x1508($v0)           ## 80161508
/* 00C6C 8097959C 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00C70 809795A0 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00C74 809795A4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C78 809795A8 46804320 */  cvt.s.w $f12, $f8                  
/* 00C7C 809795AC 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00C80 809795B0 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00C84 809795B4 8448150A */  lh      $t0, 0x150A($v0)           ## 8016150A
/* 00C88 809795B8 8449150C */  lh      $t1, 0x150C($v0)           ## 8016150C
/* 00C8C 809795BC 46805120 */  cvt.s.w $f4, $f10                  
/* 00C90 809795C0 844A150E */  lh      $t2, 0x150E($v0)           ## 8016150E
/* 00C94 809795C4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00C98 809795C8 468042A0 */  cvt.s.w $f10, $f8                  
/* 00C9C 809795CC 46002182 */  mul.s   $f6, $f4, $f0              
/* 00CA0 809795D0 46023380 */  add.s   $f14, $f6, $f2             
/* 00CA4 809795D4 46005102 */  mul.s   $f4, $f10, $f0             
/* 00CA8 809795D8 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 00CAC 809795DC 00000000 */  nop
/* 00CB0 809795E0 46803220 */  cvt.s.w $f8, $f6                   
/* 00CB4 809795E4 46022400 */  add.s   $f16, $f4, $f2             
/* 00CB8 809795E8 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 00CBC 809795EC 46004282 */  mul.s   $f10, $f8, $f0             
/* 00CC0 809795F0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00CC4 809795F4 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 00CC8 809795F8 46025480 */  add.s   $f18, $f10, $f2            
/* 00CCC 809795FC 46003202 */  mul.s   $f8, $f6, $f0              
/* 00CD0 80979600 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00CD4 80979604 468021A0 */  cvt.s.w $f6, $f4                   
/* 00CD8 80979608 460A4500 */  add.s   $f20, $f8, $f10            
/* 00CDC 8097960C 46003202 */  mul.s   $f8, $f6, $f0              
/* 00CE0 80979610 10000030 */  beq     $zero, $zero, .L809796D4   
/* 00CE4 80979614 46024580 */  add.s   $f22, $f8, $f2             
glabel L80979618
/* 00CE8 80979618 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00CEC 8097961C 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00CF0 80979620 3C018098 */  lui     $at, %hi(D_8097C1E0)       ## $at = 80980000
/* 00CF4 80979624 C420C1E0 */  lwc1    $f0, %lo(D_8097C1E0)($at)  
/* 00CF8 80979628 844B1468 */  lh      $t3, 0x1468($v0)           ## 80161468
/* 00CFC 8097962C 844C1466 */  lh      $t4, 0x1466($v0)           ## 80161466
/* 00D00 80979630 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00D04 80979634 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 00D08 80979638 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00D0C 8097963C 3C01C33E */  lui     $at, 0xC33E                ## $at = C33E0000
/* 00D10 80979640 46805120 */  cvt.s.w $f4, $f10                  
/* 00D14 80979644 44813000 */  mtc1    $at, $f6                   ## $f6 = -190.00
/* 00D18 80979648 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 00D1C 8097964C 844D1464 */  lh      $t5, 0x1464($v0)           ## 80161464
/* 00D20 80979650 844E1462 */  lh      $t6, 0x1462($v0)           ## 80161462
/* 00D24 80979654 468042A0 */  cvt.s.w $f10, $f8                  
/* 00D28 80979658 844F1460 */  lh      $t7, 0x1460($v0)           ## 80161460
/* 00D2C 8097965C 8458145E */  lh      $t8, 0x145E($v0)           ## 8016145E
/* 00D30 80979660 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00D34 80979664 46062300 */  add.s   $f12, $f4, $f6             
/* 00D38 80979668 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 00D3C 8097966C 46005102 */  mul.s   $f4, $f10, $f0             
/* 00D40 80979670 46803220 */  cvt.s.w $f8, $f6                   
/* 00D44 80979674 46022380 */  add.s   $f14, $f4, $f2             
/* 00D48 80979678 46004282 */  mul.s   $f10, $f8, $f0             
/* 00D4C 8097967C 448E2000 */  mtc1    $t6, $f4                   ## $f4 = NaN
/* 00D50 80979680 00000000 */  nop
/* 00D54 80979684 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D58 80979688 46025400 */  add.s   $f16, $f10, $f2            
/* 00D5C 8097968C 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00D60 80979690 46003202 */  mul.s   $f8, $f6, $f0              
/* 00D64 80979694 46805120 */  cvt.s.w $f4, $f10                  
/* 00D68 80979698 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00D6C 8097969C 46024480 */  add.s   $f18, $f8, $f2             
/* 00D70 809796A0 46002182 */  mul.s   $f6, $f4, $f0              
/* 00D74 809796A4 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 00D78 809796A8 46805120 */  cvt.s.w $f4, $f10                  
/* 00D7C 809796AC 46083500 */  add.s   $f20, $f6, $f8             
/* 00D80 809796B0 46002182 */  mul.s   $f6, $f4, $f0              
/* 00D84 809796B4 10000007 */  beq     $zero, $zero, .L809796D4   
/* 00D88 809796B8 46023580 */  add.s   $f22, $f6, $f2             
.L809796BC:
/* 00D8C 809796BC 3C048098 */  lui     $a0, %hi(D_8097C050)       ## $a0 = 80980000
/* 00D90 809796C0 2484C050 */  addiu   $a0, $a0, %lo(D_8097C050)  ## $a0 = 8097C050
/* 00D94 809796C4 0C00084C */  jal     osSyncPrintf
              
/* 00D98 809796C8 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00D9C 809796CC 10000041 */  beq     $zero, $zero, .L809797D4   
/* 00DA0 809796D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809796D4:
/* 00DA4 809796D4 C7A0002C */  lwc1    $f0, 0x002C($sp)           
/* 00DA8 809796D8 3C018098 */  lui     $at, %hi(D_8097C1E4)       ## $at = 80980000
/* 00DAC 809796DC C428C1E4 */  lwc1    $f8, %lo(D_8097C1E4)($at)  
/* 00DB0 809796E0 460C0000 */  add.s   $f0, $f0, $f12             
/* 00DB4 809796E4 24C30060 */  addiu   $v1, $a2, 0x0060           ## $v1 = 00000060
/* 00DB8 809796E8 4608003E */  c.le.s  $f0, $f8                   
/* 00DBC 809796EC 00000000 */  nop
/* 00DC0 809796F0 45020038 */  bc1fl   .L809797D4                 
/* 00DC4 809796F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DC8 809796F8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00DCC 809796FC C4600000 */  lwc1    $f0, 0x0000($v1)           ## 00000060
/* 00DD0 80979700 4602003C */  c.lt.s  $f0, $f2                   
/* 00DD4 80979704 00000000 */  nop
/* 00DD8 80979708 45020032 */  bc1fl   .L809797D4                 
/* 00DDC 8097970C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DE0 80979710 8CD90180 */  lw      $t9, 0x0180($a2)           ## 00000180
/* 00DE4 80979714 5720002F */  bnel    $t9, $zero, .L809797D4     
/* 00DE8 80979718 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DEC 8097971C 46140282 */  mul.s   $f10, $f0, $f20            
/* 00DF0 80979720 24C40068 */  addiu   $a0, $a2, 0x0068           ## $a0 = 00000068
/* 00DF4 80979724 24C20172 */  addiu   $v0, $a2, 0x0172           ## $v0 = 00000172
/* 00DF8 80979728 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00DFC 8097972C E46A0000 */  swc1    $f10, 0x0000($v1)          ## 00000060
/* 00E00 80979730 C4840000 */  lwc1    $f4, 0x0000($a0)           ## 00000068
/* 00E04 80979734 46162182 */  mul.s   $f6, $f4, $f22             
/* 00E08 80979738 E4860000 */  swc1    $f6, 0x0000($a0)           ## 00000068
/* 00E0C 8097973C 84480000 */  lh      $t0, 0x0000($v0)           ## 00000172
/* 00E10 80979740 844B0002 */  lh      $t3, 0x0002($v0)           ## 00000174
/* 00E14 80979744 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000176
/* 00E18 80979748 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 00E1C 8097974C 00000000 */  nop
/* 00E20 80979750 468042A0 */  cvt.s.w $f10, $f8                  
/* 00E24 80979754 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 00E28 80979758 460E5102 */  mul.s   $f4, $f10, $f14            
/* 00E2C 8097975C 468042A0 */  cvt.s.w $f10, $f8                  
/* 00E30 80979760 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00E34 80979764 4600218D */  trunc.w.s $f6, $f4                   
/* 00E38 80979768 46105102 */  mul.s   $f4, $f10, $f16            
/* 00E3C 8097976C 440A3000 */  mfc1    $t2, $f6                   
/* 00E40 80979770 468042A0 */  cvt.s.w $f10, $f8                  
/* 00E44 80979774 A44A0000 */  sh      $t2, 0x0000($v0)           ## 00000172
/* 00E48 80979778 4600218D */  trunc.w.s $f6, $f4                   
/* 00E4C 8097977C 46125102 */  mul.s   $f4, $f10, $f18            
/* 00E50 80979780 440D3000 */  mfc1    $t5, $f6                   
/* 00E54 80979784 00000000 */  nop
/* 00E58 80979788 A44D0002 */  sh      $t5, 0x0002($v0)           ## 00000174
/* 00E5C 8097978C 4600218D */  trunc.w.s $f6, $f4                   
/* 00E60 80979790 44183000 */  mfc1    $t8, $f6                   
/* 00E64 80979794 00000000 */  nop
/* 00E68 80979798 A4580004 */  sh      $t8, 0x0004($v0)           ## 00000176
/* 00E6C 8097979C C4C8006C */  lwc1    $f8, 0x006C($a2)           ## 0000006C
/* 00E70 809797A0 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 00000060
/* 00E74 809797A4 46004287 */  neg.s   $f10, $f8                  
/* 00E78 809797A8 460A203E */  c.le.s  $f4, $f10                  
/* 00E7C 809797AC 00000000 */  nop
/* 00E80 809797B0 45020007 */  bc1fl   .L809797D0                 
/* 00E84 809797B4 ACD90180 */  sw      $t9, 0x0180($a2)           ## 00000180
/* 00E88 809797B8 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000060
/* 00E8C 809797BC E4820000 */  swc1    $f2, 0x0000($a0)           ## 00000068
/* 00E90 809797C0 A4400000 */  sh      $zero, 0x0000($v0)         ## 00000172
/* 00E94 809797C4 A4400002 */  sh      $zero, 0x0002($v0)         ## 00000174
/* 00E98 809797C8 A4400004 */  sh      $zero, 0x0004($v0)         ## 00000176
/* 00E9C 809797CC ACD90180 */  sw      $t9, 0x0180($a2)           ## 00000180
.L809797D0:
/* 00EA0 809797D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809797D4:
/* 00EA4 809797D4 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 00EA8 809797D8 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 00EAC 809797DC 03E00008 */  jr      $ra                        
/* 00EB0 809797E0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000