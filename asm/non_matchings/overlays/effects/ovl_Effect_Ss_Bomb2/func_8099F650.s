glabel func_8099F650
/* 00000 8099F650 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 8099F654 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 8099F658 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0000C 8099F65C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00010 8099F660 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00014 8099F664 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00018 8099F668 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 0001C 8099F66C 00E08825 */  or      $s1, $a3, $zero            ## $s1 = 00000000
/* 00020 8099F670 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00024 8099F674 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00028 8099F678 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0002C 8099F67C 2604000C */  addiu   $a0, $s0, 0x000C           ## $a0 = 0000000C
/* 00030 8099F680 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00034 8099F684 2625000C */  addiu   $a1, $s1, 0x000C           ## $a1 = 0000000C
/* 00038 8099F688 26040018 */  addiu   $a0, $s0, 0x0018           ## $a0 = 00000018
/* 0003C 8099F68C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00040 8099F690 26250018 */  addiu   $a1, $s1, 0x0018           ## $a1 = 00000018
/* 00044 8099F694 3C030401 */  lui     $v1, 0x0401                ## $v1 = 04010000
/* 00048 8099F698 2463BF80 */  addiu   $v1, $v1, 0xBF80           ## $v1 = 0400BF80
/* 0004C 8099F69C 00037100 */  sll     $t6, $v1,  4               
/* 00050 8099F6A0 000E7F02 */  srl     $t7, $t6, 28               
/* 00054 8099F6A4 000FC080 */  sll     $t8, $t7,  2               
/* 00058 8099F6A8 3C198016 */  lui     $t9, %hi(gSegments)
/* 0005C 8099F6AC 0338C821 */  addu    $t9, $t9, $t8              
/* 00060 8099F6B0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00064 8099F6B4 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 00068 8099F6B8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0006C 8099F6BC 00614024 */  and     $t0, $v1, $at              
/* 00070 8099F6C0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00074 8099F6C4 3C0C809A */  lui     $t4, %hi(func_8099FCCC)    ## $t4 = 809A0000
/* 00078 8099F6C8 03284821 */  addu    $t1, $t9, $t0              
/* 0007C 8099F6CC 01215021 */  addu    $t2, $t1, $at              
/* 00080 8099F6D0 240B0018 */  addiu   $t3, $zero, 0x0018         ## $t3 = 00000018
/* 00084 8099F6D4 258CFCCC */  addiu   $t4, $t4, %lo(func_8099FCCC) ## $t4 = 8099FCCC
/* 00088 8099F6D8 AE0A0038 */  sw      $t2, 0x0038($s0)           ## 00000038
/* 0008C 8099F6DC A60B005C */  sh      $t3, 0x005C($s0)           ## 0000005C
/* 00090 8099F6E0 AE0C0024 */  sw      $t4, 0x0024($s0)           ## 00000024
/* 00094 8099F6E4 922D0028 */  lbu     $t5, 0x0028($s1)           ## 00000028
/* 00098 8099F6E8 3C0F809A */  lui     $t7, %hi(D_8099FED8)       ## $t7 = 809A0000
/* 0009C 8099F6EC 240400FF */  addiu   $a0, $zero, 0x00FF         ## $a0 = 000000FF
/* 000A0 8099F6F0 000D7080 */  sll     $t6, $t5,  2               
/* 000A4 8099F6F4 01EE7821 */  addu    $t7, $t7, $t6              
/* 000A8 8099F6F8 8DEFFED8 */  lw      $t7, %lo(D_8099FED8)($t7)  
/* 000AC 8099F6FC 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 000B0 8099F700 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000B4 8099F704 AE0F0028 */  sw      $t7, 0x0028($s0)           ## 00000028
/* 000B8 8099F708 86380024 */  lh      $t8, 0x0024($s1)           ## 00000024
/* 000BC 8099F70C A6180040 */  sh      $t8, 0x0040($s0)           ## 00000040
/* 000C0 8099F710 86390026 */  lh      $t9, 0x0026($s1)           ## 00000026
/* 000C4 8099F714 A6040044 */  sh      $a0, 0x0044($s0)           ## 00000044
/* 000C8 8099F718 A6040046 */  sh      $a0, 0x0046($s0)           ## 00000046
/* 000CC 8099F71C A6040048 */  sh      $a0, 0x0048($s0)           ## 00000048
/* 000D0 8099F720 A604004A */  sh      $a0, 0x004A($s0)           ## 0000004A
/* 000D4 8099F724 A600004C */  sh      $zero, 0x004C($s0)         ## 0000004C
/* 000D8 8099F728 A600004E */  sh      $zero, 0x004E($s0)         ## 0000004E
/* 000DC 8099F72C A6080050 */  sh      $t0, 0x0050($s0)           ## 00000050
/* 000E0 8099F730 A6190052 */  sh      $t9, 0x0052($s0)           ## 00000052
/* 000E4 8099F734 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000E8 8099F738 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 000EC 8099F73C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 000F0 8099F740 03E00008 */  jr      $ra                        
/* 000F4 8099F744 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000