glabel func_808884C8
/* 00488 808884C8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 0048C 808884CC AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00490 808884D0 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 00494 808884D4 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 00498 808884D8 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 0049C 808884DC AFB10044 */  sw      $s1, 0x0044($sp)           
/* 004A0 808884E0 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 004A4 808884E4 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 004A8 808884E8 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 004AC 808884EC F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 004B0 808884F0 8C8F0024 */  lw      $t7, 0x0024($a0)           ## 00000024
/* 004B4 808884F4 27B4006C */  addiu   $s4, $sp, 0x006C           ## $s4 = FFFFFFF4
/* 004B8 808884F8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 004BC 808884FC AE8F0000 */  sw      $t7, 0x0000($s4)           ## FFFFFFF4
/* 004C0 80888500 8C8E0028 */  lw      $t6, 0x0028($a0)           ## 00000028
/* 004C4 80888504 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 004C8 80888508 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 004CC 8088850C AE8E0004 */  sw      $t6, 0x0004($s4)           ## FFFFFFF8
/* 004D0 80888510 8C8F002C */  lw      $t7, 0x002C($a0)           ## 0000002C
/* 004D4 80888514 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 004D8 80888518 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 004DC 8088851C AE8F0008 */  sw      $t7, 0x0008($s4)           ## FFFFFFFC
/* 004E0 80888520 C7A40070 */  lwc1    $f4, 0x0070($sp)           
/* 004E4 80888524 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004E8 80888528 24180258 */  addiu   $t8, $zero, 0x0258         ## $t8 = 00000258
/* 004EC 8088852C 46062201 */  sub.s   $f8, $f4, $f6              
/* 004F0 80888530 2419012C */  addiu   $t9, $zero, 0x012C         ## $t9 = 0000012C
/* 004F4 80888534 4406C000 */  mfc1    $a2, $f24                  
/* 004F8 80888538 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 004FC 8088853C E7A80070 */  swc1    $f8, 0x0070($sp)           
/* 00500 80888540 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00504 80888544 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 00508 80888548 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0050C 8088854C 0C00CD20 */  jal     func_80033480              
/* 00510 80888550 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00514 80888554 862800B6 */  lh      $t0, 0x00B6($s1)           ## 000000B6
/* 00518 80888558 34108000 */  ori     $s0, $zero, 0x8000         ## $s0 = 00008000
/* 0051C 8088855C 01102021 */  addu    $a0, $t0, $s0              
/* 00520 80888560 00042400 */  sll     $a0, $a0, 16               
/* 00524 80888564 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00528 80888568 00042403 */  sra     $a0, $a0, 16               
/* 0052C 8088856C 862900B6 */  lh      $t1, 0x00B6($s1)           ## 000000B6
/* 00530 80888570 46000506 */  mov.s   $f20, $f0                  
/* 00534 80888574 01302021 */  addu    $a0, $t1, $s0              
/* 00538 80888578 00042400 */  sll     $a0, $a0, 16               
/* 0053C 8088857C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00540 80888580 00042403 */  sra     $a0, $a0, 16               
/* 00544 80888584 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 00548 80888588 3C108089 */  lui     $s0, %hi(D_80888E44)       ## $s0 = 80890000
/* 0054C 8088858C 3C128089 */  lui     $s2, %hi(D_80888E9C)       ## $s2 = 80890000
/* 00550 80888590 46000586 */  mov.s   $f22, $f0                  
/* 00554 80888594 26528E9C */  addiu   $s2, $s2, %lo(D_80888E9C)  ## $s2 = 80888E9C
/* 00558 80888598 26108E44 */  addiu   $s0, $s0, %lo(D_80888E44)  ## $s0 = 80888E44
/* 0055C 8088859C E7AA0070 */  swc1    $f10, 0x0070($sp)          
/* 00560 808885A0 C6000000 */  lwc1    $f0, 0x0000($s0)           ## 80888E44
.L808885A4:
/* 00564 808885A4 C6020004 */  lwc1    $f2, 0x0004($s0)           ## 80888E48
/* 00568 808885A8 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 0056C 808885AC 46160402 */  mul.s   $f16, $f0, $f22            
/* 00570 808885B0 4406C000 */  mfc1    $a2, $f24                  
/* 00574 808885B4 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 00578 808885B8 46141482 */  mul.s   $f18, $f2, $f20            
/* 0057C 808885BC 240B0096 */  addiu   $t3, $zero, 0x0096         ## $t3 = 00000096
/* 00580 808885C0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00584 808885C4 46161282 */  mul.s   $f10, $f2, $f22            
/* 00588 808885C8 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 0058C 808885CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00590 808885D0 46128100 */  add.s   $f4, $f16, $f18            
/* 00594 808885D4 46140402 */  mul.s   $f16, $f0, $f20            
/* 00598 808885D8 46062200 */  add.s   $f8, $f4, $f6              
/* 0059C 808885DC 46105481 */  sub.s   $f18, $f10, $f16           
/* 005A0 808885E0 E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 005A4 808885E4 C624002C */  lwc1    $f4, 0x002C($s1)           ## 0000002C
/* 005A8 808885E8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 005AC 808885EC AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 005B0 808885F0 46049180 */  add.s   $f6, $f18, $f4             
/* 005B4 808885F4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 005B8 808885F8 0C00CD20 */  jal     func_80033480              
/* 005BC 808885FC E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 005C0 80888600 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 80888E4C
/* 005C4 80888604 5612FFE7 */  bnel    $s0, $s2, .L808885A4       
/* 005C8 80888608 C6000000 */  lwc1    $f0, 0x0000($s0)           ## 80888E4C
/* 005CC 8088860C 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 005D0 80888610 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 005D4 80888614 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 005D8 80888618 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 005DC 8088861C 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 005E0 80888620 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 005E4 80888624 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 005E8 80888628 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 005EC 8088862C 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 005F0 80888630 03E00008 */  jr      $ra                        
/* 005F4 80888634 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000