glabel func_809D3798
/* 001E8 809D3798 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001EC 809D379C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 001F0 809D37A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F4 809D37A4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001F8 809D37A8 00441021 */  addu    $v0, $v0, $a0              
/* 001FC 809D37AC 44867000 */  mtc1    $a2, $f14                  ## $f14 = 0.00
/* 00200 809D37B0 8C421E10 */  lw      $v0, 0x1E10($v0)           ## 00011E10
/* 00204 809D37B4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809D37B8:
/* 00208 809D37B8 904E0000 */  lbu     $t6, 0x0000($v0)           ## 00010000
/* 0020C 809D37BC 15C00035 */  bne     $t6, $zero, .L809D3894     
/* 00210 809D37C0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00214 809D37C4 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 00218 809D37C8 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0021C 809D37CC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00220 809D37D0 E7AE0028 */  swc1    $f14, 0x0028($sp)          
/* 00224 809D37D4 4600010D */  trunc.w.s $f4, $f0                   
/* 00228 809D37D8 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 0022C 809D37DC C7AE0028 */  lwc1    $f14, 0x0028($sp)          
/* 00230 809D37E0 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 00234 809D37E4 44082000 */  mfc1    $t0, $f4                   
/* 00238 809D37E8 A0490000 */  sb      $t1, 0x0000($v0)           ## 00000000
/* 0023C 809D37EC 3C03809D */  lui     $v1, %hi(D_809D5C34)       ## $v1 = 809D0000
/* 00240 809D37F0 A0480001 */  sb      $t0, 0x0001($v0)           ## 00000001
/* 00244 809D37F4 8FAA0024 */  lw      $t2, 0x0024($sp)           
/* 00248 809D37F8 24635C34 */  addiu   $v1, $v1, %lo(D_809D5C34)  ## $v1 = 809D5C34
/* 0024C 809D37FC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00250 809D3800 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 00000000
/* 00254 809D3804 44811000 */  mtc1    $at, $f2                   ## $f2 = 255.00
/* 00258 809D3808 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0025C 809D380C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00260 809D3810 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 00000004
/* 00264 809D3814 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 00268 809D3818 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0026C 809D381C AC4B0008 */  sw      $t3, 0x0008($v0)           ## 00000008
/* 00270 809D3820 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 00000008
/* 00274 809D3824 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00278 809D3828 460E7180 */  add.s   $f6, $f14, $f14            
/* 0027C 809D382C AC4C000C */  sw      $t4, 0x000C($v0)           ## 0000000C
/* 00280 809D3830 8C6E0000 */  lw      $t6, 0x0000($v1)           ## 809D5C34
/* 00284 809D3834 3C014357 */  lui     $at, 0x4357                ## $at = 43570000
/* 00288 809D3838 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0028C 809D383C AC4E0010 */  sw      $t6, 0x0010($v0)           ## 00000010
/* 00290 809D3840 8C6D0004 */  lw      $t5, 0x0004($v1)           ## 809D5C38
/* 00294 809D3844 44819000 */  mtc1    $at, $f18                  ## $f18 = 215.00
/* 00298 809D3848 AC4D0014 */  sw      $t5, 0x0014($v0)           ## 00000014
/* 0029C 809D384C 8C6E0008 */  lw      $t6, 0x0008($v1)           ## 809D5C3C
/* 002A0 809D3850 AC4E0018 */  sw      $t6, 0x0018($v0)           ## 00000018
/* 002A4 809D3854 8C780000 */  lw      $t8, 0x0000($v1)           ## 809D5C34
/* 002A8 809D3858 AC58001C */  sw      $t8, 0x001C($v0)           ## 0000001C
/* 002AC 809D385C 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 809D5C38
/* 002B0 809D3860 AC4F0020 */  sw      $t7, 0x0020($v0)           ## 00000020
/* 002B4 809D3864 8C780008 */  lw      $t8, 0x0008($v1)           ## 809D5C3C
/* 002B8 809D3868 E4460050 */  swc1    $f6, 0x0050($v0)           ## 00000050
/* 002BC 809D386C E44E004C */  swc1    $f14, 0x004C($v0)          ## 0000004C
/* 002C0 809D3870 E4420034 */  swc1    $f2, 0x0034($v0)           ## 00000034
/* 002C4 809D3874 E4420038 */  swc1    $f2, 0x0038($v0)           ## 00000038
/* 002C8 809D3878 E4420040 */  swc1    $f2, 0x0040($v0)           ## 00000040
/* 002CC 809D387C E4480028 */  swc1    $f8, 0x0028($v0)           ## 00000028
/* 002D0 809D3880 E44A002C */  swc1    $f10, 0x002C($v0)          ## 0000002C
/* 002D4 809D3884 E4500030 */  swc1    $f16, 0x0030($v0)          ## 00000030
/* 002D8 809D3888 E452003C */  swc1    $f18, 0x003C($v0)          ## 0000003C
/* 002DC 809D388C 10000007 */  beq     $zero, $zero, .L809D38AC   
/* 002E0 809D3890 AC580024 */  sw      $t8, 0x0024($v0)           ## 00000024
.L809D3894:
/* 002E4 809D3894 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 809D5C35
/* 002E8 809D3898 00031C00 */  sll     $v1, $v1, 16               
/* 002EC 809D389C 00031C03 */  sra     $v1, $v1, 16               
/* 002F0 809D38A0 28610064 */  slti    $at, $v1, 0x0064           
/* 002F4 809D38A4 1420FFC4 */  bne     $at, $zero, .L809D37B8     
/* 002F8 809D38A8 2442006C */  addiu   $v0, $v0, 0x006C           ## $v0 = 0000006C
.L809D38AC:
/* 002FC 809D38AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00300 809D38B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00304 809D38B4 03E00008 */  jr      $ra                        
/* 00308 809D38B8 00000000 */  nop