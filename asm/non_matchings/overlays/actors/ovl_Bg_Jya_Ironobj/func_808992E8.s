glabel func_808992E8
/* 00A48 808992E8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00A4C 808992EC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00A50 808992F0 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 00A54 808992F4 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 00A58 808992F8 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00A5C 808992FC AFB10024 */  sw      $s1, 0x0024($sp)           
/* 00A60 80899300 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A64 80899304 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00A68 80899308 90820179 */  lbu     $v0, 0x0179($a0)           ## 00000179
/* 00A6C 8089930C 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00A70 80899310 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00A74 80899314 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00A78 80899318 11C00033 */  beq     $t6, $zero, .L808993E8     
/* 00A7C 8089931C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A80 80899320 8C860170 */  lw      $a2, 0x0170($a0)           ## 00000170
/* 00A84 80899324 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 00A88 80899328 A08F0179 */  sb      $t7, 0x0179($a0)           ## 00000179
/* 00A8C 8089932C 50C00034 */  beql    $a2, $zero, .L80899400     
/* 00A90 80899330 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00A94 80899334 84D80000 */  lh      $t8, 0x0000($a2)           ## 00000000
/* 00A98 80899338 24010113 */  addiu   $at, $zero, 0x0113         ## $at = 00000113
/* 00A9C 8089933C 57010030 */  bnel    $t8, $at, .L80899400       
/* 00AA0 80899340 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00AA4 80899344 8699001C */  lh      $t9, 0x001C($s4)           ## 0000001C
/* 00AA8 80899348 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00AAC 8089934C 00084880 */  sll     $t1, $t0,  2               
/* 00AB0 80899350 3C19808A */  lui     $t9, %hi(D_80899558)       ## $t9 = 808A0000
/* 00AB4 80899354 0329C821 */  addu    $t9, $t9, $t1              
/* 00AB8 80899358 8F399558 */  lw      $t9, %lo(D_80899558)($t9)  
/* 00ABC 8089935C 0320F809 */  jalr    $ra, $t9                   
/* 00AC0 80899360 00000000 */  nop
/* 00AC4 80899364 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00AC8 80899368 26850024 */  addiu   $a1, $s4, 0x0024           ## $a1 = 00000024
/* 00ACC 8089936C 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 00AD0 80899370 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00AD4 80899374 240739AD */  addiu   $a3, $zero, 0x39AD         ## $a3 = 000039AD
/* 00AD8 80899378 C6840024 */  lwc1    $f4, 0x0024($s4)           ## 00000024
/* 00ADC 8089937C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00AE0 80899380 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00AE4 80899384 E7A40040 */  swc1    $f4, 0x0040($sp)           
/* 00AE8 80899388 C6860028 */  lwc1    $f6, 0x0028($s4)           ## 00000028
/* 00AEC 8089938C 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 00AF0 80899390 4481A000 */  mtc1    $at, $f20                  ## $f20 = 18.00
/* 00AF4 80899394 46083280 */  add.s   $f10, $f6, $f8             
/* 00AF8 80899398 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00AFC 8089939C 24120003 */  addiu   $s2, $zero, 0x0003         ## $s2 = 00000003
/* 00B00 808993A0 27B10040 */  addiu   $s1, $sp, 0x0040           ## $s1 = FFFFFFF0
/* 00B04 808993A4 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 00B08 808993A8 C690002C */  lwc1    $f16, 0x002C($s4)          ## 0000002C
/* 00B0C 808993AC E7B00048 */  swc1    $f16, 0x0048($sp)          
.L808993B0:
/* 00B10 808993B0 00123400 */  sll     $a2, $s2, 16               
/* 00B14 808993B4 00063403 */  sra     $a2, $a2, 16               
/* 00B18 808993B8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00B1C 808993BC 0C007D52 */  jal     Item_DropCollectible
              
/* 00B20 808993C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF0
/* 00B24 808993C4 C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 00B28 808993C8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00B2C 808993CC 46149100 */  add.s   $f4, $f18, $f20            
/* 00B30 808993D0 1612FFF7 */  bne     $s0, $s2, .L808993B0       
/* 00B34 808993D4 E7A40044 */  swc1    $f4, 0x0044($sp)           
/* 00B38 808993D8 0C00B55C */  jal     Actor_Kill
              
/* 00B3C 808993DC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00B40 808993E0 10000007 */  beq     $zero, $zero, .L80899400   
/* 00B44 808993E4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808993E8:
/* 00B48 808993E8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00001E60
/* 00B4C 808993EC 02612821 */  addu    $a1, $s3, $at              
/* 00B50 808993F0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00B54 808993F4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00B58 808993F8 26860168 */  addiu   $a2, $s4, 0x0168           ## $a2 = 00000168
/* 00B5C 808993FC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80899400:
/* 00B60 80899400 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00B64 80899404 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B68 80899408 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 00B6C 8089940C 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00B70 80899410 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 00B74 80899414 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 00B78 80899418 03E00008 */  jr      $ra                        
/* 00B7C 8089941C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000