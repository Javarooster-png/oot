glabel func_80B025C0
/* 00350 80B025C0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00354 80B025C4 3C0F80B0 */  lui     $t7, %hi(D_80B0453C)       ## $t7 = 80B00000
/* 00358 80B025C8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0035C 80B025CC AFB40030 */  sw      $s4, 0x0030($sp)           
/* 00360 80B025D0 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 00364 80B025D4 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00368 80B025D8 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 0036C 80B025DC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00370 80B025E0 25EF453C */  addiu   $t7, $t7, %lo(D_80B0453C)  ## $t7 = 80B0453C
/* 00374 80B025E4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B0453C
/* 00378 80B025E8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B04540
/* 0037C 80B025EC 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFE8
/* 00380 80B025F0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 00384 80B025F4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 00388 80B025F8 8DF8000C */  lw      $t8, 0x000C($t7)           ## 80B04548
/* 0038C 80B025FC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B04544
/* 00390 80B02600 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00394 80B02604 ADD8000C */  sw      $t8, 0x000C($t6)           ## FFFFFFF4
/* 00398 80B02608 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 0039C 80B0260C 8DF90010 */  lw      $t9, 0x0010($t7)           ## 80B0454C
/* 003A0 80B02610 8DF80014 */  lw      $t8, 0x0014($t7)           ## 80B04550
/* 003A4 80B02614 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 003A8 80B02618 249002FC */  addiu   $s0, $a0, 0x02FC           ## $s0 = 000002FC
/* 003AC 80B0261C 27B10050 */  addiu   $s1, $sp, 0x0050           ## $s1 = FFFFFFE8
/* 003B0 80B02620 27B40068 */  addiu   $s4, $sp, 0x0068           ## $s4 = 00000000
/* 003B4 80B02624 ADD90010 */  sw      $t9, 0x0010($t6)           ## FFFFFFF8
/* 003B8 80B02628 ADD80014 */  sw      $t8, 0x0014($t6)           ## FFFFFFFC
.L80B0262C:
/* 003BC 80B0262C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003C0 80B02630 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 003C4 80B02634 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002FC
/* 003C8 80B02638 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003CC 80B0263C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002FC
/* 003D0 80B02640 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 003D4 80B02644 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 003D8 80B02648 8E270000 */  lw      $a3, 0x0000($s1)           ## FFFFFFE8
/* 003DC 80B0264C 26310004 */  addiu   $s1, $s1, 0x0004           ## $s1 = FFFFFFEC
/* 003E0 80B02650 1634FFF6 */  bne     $s1, $s4, .L80B0262C       
/* 003E4 80B02654 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 00000348
/* 003E8 80B02658 3C080003 */  lui     $t0, 0x0003                ## $t0 = 00030000
/* 003EC 80B0265C 3C09FFC0 */  lui     $t1, 0xFFC0                ## $t1 = FFC00000
/* 003F0 80B02660 3C0DFFCC */  lui     $t5, 0xFFCC                ## $t5 = FFCC0000
/* 003F4 80B02664 3508F8E9 */  ori     $t0, $t0, 0xF8E9           ## $t0 = 0003F8E9
/* 003F8 80B02668 35290716 */  ori     $t1, $t1, 0x0716           ## $t1 = FFC00716
/* 003FC 80B0266C 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 00400 80B02670 240B000D */  addiu   $t3, $zero, 0x000D         ## $t3 = 0000000D
/* 00404 80B02674 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 00408 80B02678 35AD0716 */  ori     $t5, $t5, 0x0716           ## $t5 = FFCC0716
/* 0040C 80B0267C AE68031C */  sw      $t0, 0x031C($s3)           ## 0000031C
/* 00410 80B02680 AE690368 */  sw      $t1, 0x0368($s3)           ## 00000368
/* 00414 80B02684 A26A03A8 */  sb      $t2, 0x03A8($s3)           ## 000003A8
/* 00418 80B02688 A26B03C2 */  sb      $t3, 0x03C2($s3)           ## 000003C2
/* 0041C 80B0268C A26C03C0 */  sb      $t4, 0x03C0($s3)           ## 000003C0
/* 00420 80B02690 AE6D03B4 */  sw      $t5, 0x03B4($s3)           ## 000003B4
/* 00424 80B02694 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 00428 80B02698 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 0042C 80B0269C 3C0680B0 */  lui     $a2, %hi(D_80B0449C)       ## $a2 = 80B00000
/* 00430 80B026A0 24C6449C */  addiu   $a2, $a2, %lo(D_80B0449C)  ## $a2 = 80B0449C
/* 00434 80B026A4 26640098 */  addiu   $a0, $s3, 0x0098           ## $a0 = 00000098
/* 00438 80B026A8 0C0187BF */  jal     func_80061EFC              
/* 0043C 80B026AC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00440 80B026B0 267004C4 */  addiu   $s0, $s3, 0x04C4           ## $s0 = 000004C4
/* 00444 80B026B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000004C4
/* 00448 80B026B8 0C016EFE */  jal     func_8005BBF8              
/* 0044C 80B026BC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00450 80B026C0 3C0780B0 */  lui     $a3, %hi(D_80B044F8)       ## $a3 = 80B00000
/* 00454 80B026C4 266E04E4 */  addiu   $t6, $s3, 0x04E4           ## $t6 = 000004E4
/* 00458 80B026C8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0045C 80B026CC 24E744F8 */  addiu   $a3, $a3, %lo(D_80B044F8)  ## $a3 = 80B044F8
/* 00460 80B026D0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00464 80B026D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000004C4
/* 00468 80B026D8 0C017014 */  jal     func_8005C050              
/* 0046C 80B026DC 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 00470 80B026E0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00474 80B026E4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00478 80B026E8 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 0047C 80B026EC 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00480 80B026F0 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 00484 80B026F4 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 00488 80B026F8 03E00008 */  jr      $ra                        
/* 0048C 80B026FC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000