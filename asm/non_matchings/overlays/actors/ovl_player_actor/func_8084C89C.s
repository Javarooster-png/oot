glabel func_8084C89C
/* 1A68C 8084C89C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 1A690 8084C8A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1A694 8084C8A4 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 1A698 8084C8A8 AFA60060 */  sw      $a2, 0x0060($sp)           
/* 1A69C 8084C8AC AFA70064 */  sw      $a3, 0x0064($sp)           
/* 1A6A0 8084C8B0 8CA20440 */  lw      $v0, 0x0440($a1)           ## 00000440
/* 1A6A4 8084C8B4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 1A6A8 8084C8B8 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 1A6AC 8084C8BC C4400028 */  lwc1    $f0, 0x0028($v0)           ## 00000028
/* 1A6B0 8084C8C0 00061880 */  sll     $v1, $a2,  2               
/* 1A6B4 8084C8C4 00661823 */  subu    $v1, $v1, $a2              
/* 1A6B8 8084C8C8 46020100 */  add.s   $f4, $f0, $f2              
/* 1A6BC 8084C8CC 3C0E8085 */  lui     $t6, %hi(D_808548FC)       ## $t6 = 80850000
/* 1A6C0 8084C8D0 25CE48FC */  addiu   $t6, $t6, %lo(D_808548FC)  ## $t6 = 808548FC
/* 1A6C4 8084C8D4 46020181 */  sub.s   $f6, $f0, $f2              
/* 1A6C8 8084C8D8 00031880 */  sll     $v1, $v1,  2               
/* 1A6CC 8084C8DC E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 1A6D0 8084C8E0 006E3021 */  addu    $a2, $v1, $t6              
/* 1A6D4 8084C8E4 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 1A6D8 8084C8E8 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 1A6DC 8084C8EC AFA5005C */  sw      $a1, 0x005C($sp)           
/* 1A6E0 8084C8F0 0C20E5CF */  jal     func_8083973C              
/* 1A6E4 8084C8F4 27A70040 */  addiu   $a3, $sp, 0x0040           ## $a3 = FFFFFFE8
/* 1A6E8 8084C8F8 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 1A6EC 8084C8FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A6F0 8084C900 E4600000 */  swc1    $f0, 0x0000($v1)           ## 00000000
/* 1A6F4 8084C904 C7A8004C */  lwc1    $f8, 0x004C($sp)           
/* 1A6F8 8084C908 C7B00050 */  lwc1    $f16, 0x0050($sp)          
/* 1A6FC 8084C90C 4600403C */  c.lt.s  $f8, $f0                   
/* 1A700 8084C910 00000000 */  nop
/* 1A704 8084C914 45000002 */  bc1f    .L8084C920                 
/* 1A708 8084C918 00000000 */  nop
/* 1A70C 8084C91C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084C920:
/* 1A710 8084C920 50400023 */  beql    $v0, $zero, .L8084C9B0     
/* 1A714 8084C924 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1A718 8084C928 C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 00000000
/* 1A71C 8084C92C 3C188085 */  lui     $t8, %hi(D_80854914)       ## $t8 = 80850000
/* 1A720 8084C930 27184914 */  addiu   $t8, $t8, %lo(D_80854914)  ## $t8 = 80854914
/* 1A724 8084C934 4610503C */  c.lt.s  $f10, $f16                 
/* 1A728 8084C938 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A72C 8084C93C 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 1A730 8084C940 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 1A734 8084C944 45000002 */  bc1f    .L8084C950                 
/* 1A738 8084C948 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 1A73C 8084C94C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084C950:
/* 1A740 8084C950 10400016 */  beq     $v0, $zero, .L8084C9AC     
/* 1A744 8084C954 01F83021 */  addu    $a2, $t7, $t8              
/* 1A748 8084C958 27B9002C */  addiu   $t9, $sp, 0x002C           ## $t9 = FFFFFFD4
/* 1A74C 8084C95C 27A80034 */  addiu   $t0, $sp, 0x0034           ## $t0 = FFFFFFDC
/* 1A750 8084C960 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 1A754 8084C964 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 1A758 8084C968 0C20E5DA */  jal     func_80839768              
/* 1A75C 8084C96C 27A70030 */  addiu   $a3, $sp, 0x0030           ## $a3 = FFFFFFD8
/* 1A760 8084C970 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 1A764 8084C974 1040000D */  beq     $v0, $zero, .L8084C9AC     
/* 1A768 8084C978 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 1A76C 8084C97C 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 1A770 8084C980 3C0A8085 */  lui     $t2, %hi(D_8085492C)       ## $t2 = 80850000
/* 1A774 8084C984 254A492C */  addiu   $t2, $t2, %lo(D_8085492C)  ## $t2 = 8085492C
/* 1A778 8084C988 27AB002C */  addiu   $t3, $sp, 0x002C           ## $t3 = FFFFFFD4
/* 1A77C 8084C98C 27AC0034 */  addiu   $t4, $sp, 0x0034           ## $t4 = FFFFFFDC
/* 1A780 8084C990 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 1A784 8084C994 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 1A788 8084C998 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 1A78C 8084C99C 27A70030 */  addiu   $a3, $sp, 0x0030           ## $a3 = FFFFFFD8
/* 1A790 8084C9A0 0C20E5DA */  jal     func_80839768              
/* 1A794 8084C9A4 012A3021 */  addu    $a2, $t1, $t2              
/* 1A798 8084C9A8 2C420001 */  sltiu   $v0, $v0, 0x0001           
.L8084C9AC:
/* 1A79C 8084C9AC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084C9B0:
/* 1A7A0 8084C9B0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 1A7A4 8084C9B4 03E00008 */  jr      $ra                        
/* 1A7A8 8084C9B8 00000000 */  nop