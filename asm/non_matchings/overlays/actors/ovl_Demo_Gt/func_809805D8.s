.late_rodata
glabel D_80982AF0
    .float 550.0

.text
glabel func_809805D8
/* 02F68 809805D8 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 02F6C 809805DC 3C0F8098 */  lui     $t7, %hi(D_80982694)       ## $t7 = 80980000
/* 02F70 809805E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02F74 809805E4 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 02F78 809805E8 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 02F7C 809805EC 25EF2694 */  addiu   $t7, $t7, %lo(D_80982694)  ## $t7 = 80982694
/* 02F80 809805F0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80982694
/* 02F84 809805F4 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 02F88 809805F8 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFD4
/* 02F8C 809805FC ACD90000 */  sw      $t9, 0x0000($a2)           ## FFFFFFD4
/* 02F90 80980600 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80982698
/* 02F94 80980604 284102E4 */  slti    $at, $v0, 0x02E4           
/* 02F98 80980608 3C088016 */  lui     $t0, %hi(gGameInfo)
/* 02F9C 8098060C ACD80004 */  sw      $t8, 0x0004($a2)           ## FFFFFFD8
/* 02FA0 80980610 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8098269C
/* 02FA4 80980614 14200004 */  bne     $at, $zero, .L80980628     
/* 02FA8 80980618 ACD90008 */  sw      $t9, 0x0008($a2)           ## FFFFFFDC
/* 02FAC 8098061C 2841030D */  slti    $at, $v0, 0x030D           
/* 02FB0 80980620 54200007 */  bnel    $at, $zero, .L80980640     
/* 02FB4 80980624 8FA20068 */  lw      $v0, 0x0068($sp)           
.L80980628:
/* 02FB8 80980628 8D08FA90 */  lw      $t0, %lo(gGameInfo)($t0)
/* 02FBC 8098062C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 02FC0 80980630 85091456 */  lh      $t1, 0x1456($t0)           ## 80161456
/* 02FC4 80980634 5521001D */  bnel    $t1, $at, .L809806AC       
/* 02FC8 80980638 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02FCC 8098063C 8FA20068 */  lw      $v0, 0x0068($sp)           
.L80980640:
/* 02FD0 80980640 3C018098 */  lui     $at, %hi(D_80982AF0)       ## $at = 80980000
/* 02FD4 80980644 C4262AF0 */  lwc1    $f6, %lo(D_80982AF0)($at)  
/* 02FD8 80980648 C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 02FDC 8098064C 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 02FE0 80980650 44818000 */  mtc1    $at, $f16                  ## $f16 = 110.00
/* 02FE4 80980654 46062200 */  add.s   $f8, $f4, $f6              
/* 02FE8 80980658 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02FEC 8098065C 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 02FF0 80980660 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 02FF4 80980664 E7A80050 */  swc1    $f8, 0x0050($sp)           
/* 02FF8 80980668 C44A000C */  lwc1    $f10, 0x000C($v0)          ## 0000000C
/* 02FFC 8098066C 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 03000 80980670 240C0023 */  addiu   $t4, $zero, 0x0023         ## $t4 = 00000023
/* 03004 80980674 46105481 */  sub.s   $f18, $f10, $f16           
/* 03008 80980678 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 0300C 8098067C 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFE8
/* 03010 80980680 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 03014 80980684 E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 03018 80980688 C4440010 */  lwc1    $f4, 0x0010($v0)           ## 00000010
/* 0301C 8098068C AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 03020 80980690 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 03024 80980694 46062200 */  add.s   $f8, $f4, $f6              
/* 03028 80980698 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0302C 8098069C 24420008 */  addiu   $v0, $v0, 0x0008           ## $v0 = 00000008
/* 03030 809806A0 0C25F5F6 */  jal     func_8097D7D8              
/* 03034 809806A4 E7A80058 */  swc1    $f8, 0x0058($sp)           
/* 03038 809806A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809806AC:
/* 0303C 809806AC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 03040 809806B0 03E00008 */  jr      $ra                        
/* 03044 809806B4 00000000 */  nop