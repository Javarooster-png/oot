glabel func_80888694
/* 00654 80888694 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00658 80888698 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 0065C 8088869C 29E10002 */  slti    $at, $t7, 0x0002           
/* 00660 808886A0 54200016 */  bnel    $at, $zero, .L808886FC     
/* 00664 808886A4 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
/* 00668 808886A8 C4A00028 */  lwc1    $f0, 0x0028($a1)           ## 00000028
/* 0066C 808886AC C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
/* 00670 808886B0 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 00674 808886B4 4602003C */  c.lt.s  $f0, $f2                   
/* 00678 808886B8 00000000 */  nop
/* 0067C 808886BC 45020004 */  bc1fl   .L808886D0                 
/* 00680 808886C0 46001101 */  sub.s   $f4, $f2, $f0              
/* 00684 808886C4 1000000C */  beq     $zero, $zero, .L808886F8   
/* 00688 808886C8 E4800028 */  swc1    $f0, 0x0028($a0)           ## 00000028
/* 0068C 808886CC 46001101 */  sub.s   $f4, $f2, $f0              
.L808886D0:
/* 00690 808886D0 44813000 */  mtc1    $at, $f6                   ## $f6 = -100.00
/* 00694 808886D4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00698 808886D8 4606203C */  c.lt.s  $f4, $f6                   
/* 0069C 808886DC 00000000 */  nop
/* 006A0 808886E0 45020006 */  bc1fl   .L808886FC                 
/* 006A4 808886E4 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
/* 006A8 808886E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 006AC 808886EC 00000000 */  nop
/* 006B0 808886F0 46080281 */  sub.s   $f10, $f0, $f8             
/* 006B4 808886F4 E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
.L808886F8:
/* 006B8 808886F8 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
.L808886FC:
/* 006BC 808886FC 1040000B */  beq     $v0, $zero, .L8088872C     
/* 006C0 80888700 00000000 */  nop
/* 006C4 80888704 C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
.L80888708:
/* 006C8 80888708 C4500028 */  lwc1    $f16, 0x0028($v0)          ## 00000028
/* 006CC 8088870C 4610103C */  c.lt.s  $f2, $f16                  
/* 006D0 80888710 00000000 */  nop
/* 006D4 80888714 45020003 */  bc1fl   .L80888724                 
/* 006D8 80888718 8C42011C */  lw      $v0, 0x011C($v0)           ## 0000011C
/* 006DC 8088871C E4420028 */  swc1    $f2, 0x0028($v0)           ## 00000028
/* 006E0 80888720 8C42011C */  lw      $v0, 0x011C($v0)           ## 0000011C
.L80888724:
/* 006E4 80888724 5440FFF8 */  bnel    $v0, $zero, .L80888708     
/* 006E8 80888728 C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
.L8088872C:
/* 006EC 8088872C 03E00008 */  jr      $ra                        
/* 006F0 80888730 00000000 */  nop