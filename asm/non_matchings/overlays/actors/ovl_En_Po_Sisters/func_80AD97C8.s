glabel func_80AD97C8
/* 00838 80AD97C8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0083C 80AD97CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00840 80AD97D0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00844 80AD97D4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00848 80AD97D8 90820195 */  lbu     $v0, 0x0195($a0)           ## 00000195
/* 0084C 80AD97DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00850 80AD97E0 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 00854 80AD97E4 50400007 */  beql    $v0, $zero, .L80AD9804     
/* 00858 80AD97E8 82380843 */  lb      $t8, 0x0843($s1)           ## 00000843
/* 0085C 80AD97EC 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 00860 80AD97F0 3C0E80AE */  lui     $t6, %hi(func_80ADAAA4)    ## $t6 = 80AE0000
/* 00864 80AD97F4 25CEAAA4 */  addiu   $t6, $t6, %lo(func_80ADAAA4) ## $t6 = 80ADAAA4
/* 00868 80AD97F8 11CF001E */  beq     $t6, $t7, .L80AD9874       
/* 0086C 80AD97FC 00000000 */  nop
/* 00870 80AD9800 82380843 */  lb      $t8, 0x0843($s1)           ## 00000843
.L80AD9804:
/* 00874 80AD9804 53000006 */  beql    $t8, $zero, .L80AD9820     
/* 00878 80AD9808 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 0087C 80AD980C 82390842 */  lb      $t9, 0x0842($s1)           ## 00000842
/* 00880 80AD9810 2B210018 */  slti    $at, $t9, 0x0018           
/* 00884 80AD9814 54200011 */  bnel    $at, $zero, .L80AD985C     
/* 00888 80AD9818 26040294 */  addiu   $a0, $s0, 0x0294           ## $a0 = 00000294
/* 0088C 80AD981C C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
.L80AD9820:
/* 00890 80AD9820 C6260080 */  lwc1    $f6, 0x0080($s1)           ## 00000080
/* 00894 80AD9824 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00898 80AD9828 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0089C 80AD982C 46062201 */  sub.s   $f8, $f4, $f6              
/* 008A0 80AD9830 26040294 */  addiu   $a0, $s0, 0x0294           ## $a0 = 00000294
/* 008A4 80AD9834 3C0542DC */  lui     $a1, 0x42DC                ## $a1 = 42DC0000
/* 008A8 80AD9838 460A403C */  c.lt.s  $f8, $f10                  
/* 008AC 80AD983C 00000000 */  nop
/* 008B0 80AD9840 45020006 */  bc1fl   .L80AD985C                 
/* 008B4 80AD9844 26040294 */  addiu   $a0, $s0, 0x0294           ## $a0 = 00000294
/* 008B8 80AD9848 0C01DE80 */  jal     Math_ApproxF
              
/* 008BC 80AD984C 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 008C0 80AD9850 10000006 */  beq     $zero, $zero, .L80AD986C   
/* 008C4 80AD9854 C6100294 */  lwc1    $f16, 0x0294($s0)          ## 00000294
/* 008C8 80AD9858 26040294 */  addiu   $a0, $s0, 0x0294           ## $a0 = 00000294
.L80AD985C:
/* 008CC 80AD985C 3C05432A */  lui     $a1, 0x432A                ## $a1 = 432A0000
/* 008D0 80AD9860 0C01DE80 */  jal     Math_ApproxF
              
/* 008D4 80AD9864 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 008D8 80AD9868 C6100294 */  lwc1    $f16, 0x0294($s0)          ## 00000294
.L80AD986C:
/* 008DC 80AD986C 10000006 */  beq     $zero, $zero, .L80AD9888   
/* 008E0 80AD9870 E7B00020 */  swc1    $f16, 0x0020($sp)          
.L80AD9874:
/* 008E4 80AD9874 50400005 */  beql    $v0, $zero, .L80AD988C     
/* 008E8 80AD9878 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 008EC 80AD987C 8E080118 */  lw      $t0, 0x0118($s0)           ## 00000118
/* 008F0 80AD9880 C5120090 */  lwc1    $f18, 0x0090($t0)          ## 00000090
/* 008F4 80AD9884 E7B20020 */  swc1    $f18, 0x0020($sp)          
.L80AD9888:
/* 008F8 80AD9888 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
.L80AD988C:
/* 008FC 80AD988C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00900 80AD9890 00812021 */  addu    $a0, $a0, $at              
/* 00904 80AD9894 00042400 */  sll     $a0, $a0, 16               
/* 00908 80AD9898 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0090C 80AD989C 00042403 */  sra     $a0, $a0, 16               
/* 00910 80AD98A0 C7A40020 */  lwc1    $f4, 0x0020($sp)           
/* 00914 80AD98A4 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 00918 80AD98A8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0091C 80AD98AC 46040182 */  mul.s   $f6, $f0, $f4              
/* 00920 80AD98B0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00924 80AD98B4 00812021 */  addu    $a0, $a0, $at              
/* 00928 80AD98B8 00042400 */  sll     $a0, $a0, 16               
/* 0092C 80AD98BC 00042403 */  sra     $a0, $a0, 16               
/* 00930 80AD98C0 46083280 */  add.s   $f10, $f6, $f8             
/* 00934 80AD98C4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00938 80AD98C8 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 0093C 80AD98CC C7B00020 */  lwc1    $f16, 0x0020($sp)          
/* 00940 80AD98D0 C624002C */  lwc1    $f4, 0x002C($s1)           ## 0000002C
/* 00944 80AD98D4 46100482 */  mul.s   $f18, $f0, $f16            
/* 00948 80AD98D8 46049180 */  add.s   $f6, $f18, $f4             
/* 0094C 80AD98DC E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 00950 80AD98E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00954 80AD98E4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00958 80AD98E8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0095C 80AD98EC 03E00008 */  jr      $ra                        
/* 00960 80AD98F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000