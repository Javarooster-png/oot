glabel func_809F68B0
/* 004F0 809F68B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004F4 809F68B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F8 809F68B8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004FC 809F68BC C4840060 */  lwc1    $f4, 0x0060($a0)           ## 00000060
/* 00500 809F68C0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00504 809F68C4 00000000 */  nop
/* 00508 809F68C8 4604303E */  c.le.s  $f6, $f4                   
/* 0050C 809F68CC 00000000 */  nop
/* 00510 809F68D0 45020004 */  bc1fl   .L809F68E4                 
/* 00514 809F68D4 848E01FC */  lh      $t6, 0x01FC($a0)           ## 000001FC
/* 00518 809F68D8 1000002A */  beq     $zero, $zero, .L809F6984   
/* 0051C 809F68DC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00520 809F68E0 848E01FC */  lh      $t6, 0x01FC($a0)           ## 000001FC
.L809F68E4:
/* 00524 809F68E4 55C00004 */  bnel    $t6, $zero, .L809F68F8     
/* 00528 809F68E8 948F0088 */  lhu     $t7, 0x0088($a0)           ## 00000088
/* 0052C 809F68EC 10000025 */  beq     $zero, $zero, .L809F6984   
/* 00530 809F68F0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00534 809F68F4 948F0088 */  lhu     $t7, 0x0088($a0)           ## 00000088
.L809F68F8:
/* 00538 809F68F8 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 0053C 809F68FC 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00540 809F6900 53000020 */  beql    $t8, $zero, .L809F6984     
/* 00544 809F6904 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00548 809F6908 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0054C 809F690C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00550 809F6910 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00554 809F6914 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00558 809F6918 8C880024 */  lw      $t0, 0x0024($a0)           ## 00000024
/* 0055C 809F691C 8C990028 */  lw      $t9, 0x0028($a0)           ## 00000028
/* 00560 809F6920 AC8801F0 */  sw      $t0, 0x01F0($a0)           ## 000001F0
/* 00564 809F6924 8C88002C */  lw      $t0, 0x002C($a0)           ## 0000002C
/* 00568 809F6928 AC9901F4 */  sw      $t9, 0x01F4($a0)           ## 000001F4
/* 0056C 809F692C AC8801F8 */  sw      $t0, 0x01F8($a0)           ## 000001F8
/* 00570 809F6930 0C27D944 */  jal     func_809F6510              
/* 00574 809F6934 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00578 809F6938 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0057C 809F693C 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 00580 809F6940 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00584 809F6944 848201FC */  lh      $v0, 0x01FC($a0)           ## 000001FC
/* 00588 809F6948 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 0058C 809F694C 01225023 */  subu    $t2, $t1, $v0              
/* 00590 809F6950 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 00594 809F6954 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 00598 809F6958 A48B01FC */  sh      $t3, 0x01FC($a0)           ## 000001FC
/* 0059C 809F695C 46805420 */  cvt.s.w $f16, $f10                 
/* 005A0 809F6960 848C01FC */  lh      $t4, 0x01FC($a0)           ## 000001FC
/* 005A4 809F6964 46104483 */  div.s   $f18, $f8, $f16            
/* 005A8 809F6968 15800005 */  bne     $t4, $zero, .L809F6980     
/* 005AC 809F696C E4920060 */  swc1    $f18, 0x0060($a0)          ## 00000060
/* 005B0 809F6970 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 005B4 809F6974 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 005B8 809F6978 10000002 */  beq     $zero, $zero, .L809F6984   
/* 005BC 809F697C E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
.L809F6980:
/* 005C0 809F6980 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809F6984:
/* 005C4 809F6984 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C8 809F6988 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005CC 809F698C 03E00008 */  jr      $ra                        
/* 005D0 809F6990 00000000 */  nop