.late_rodata
glabel D_8099EC08
    .float 0.2

glabel D_8099EC0C
    .float 0.1

glabel D_8099EC10
    .float 3000.0

glabel D_8099EC14
    .float 4500.0

glabel D_8099EC18
    .float 2500.0

glabel D_8099EC1C
 .word 0x4604D000
glabel D_8099EC20
 .word 0x44D48000
glabel D_8099EC24
    .float 5000.0

.text
glabel func_8099DFC0
/* 006F0 8099DFC0 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 006F4 8099DFC4 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 006F8 8099DFC8 AFB60058 */  sw      $s6, 0x0058($sp)           
/* 006FC 8099DFCC AFB50054 */  sw      $s5, 0x0054($sp)           
/* 00700 8099DFD0 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 00704 8099DFD4 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 00708 8099DFD8 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 0070C 8099DFDC AFB10044 */  sw      $s1, 0x0044($sp)           
/* 00710 8099DFE0 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 00714 8099DFE4 F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 00718 8099DFE8 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 0071C 8099DFEC F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00720 8099DFF0 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00724 8099DFF4 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00728 8099DFF8 8C860118 */  lw      $a2, 0x0118($a0)           ## 00000118
/* 0072C 8099DFFC 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00730 8099E000 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00734 8099E004 10C0000A */  beq     $a2, $zero, .L8099E030     
/* 00738 8099E008 2482014C */  addiu   $v0, $a0, 0x014C           ## $v0 = 0000014C
/* 0073C 8099E00C 8CCE0130 */  lw      $t6, 0x0130($a2)           ## 00000130
/* 00740 8099E010 51C00008 */  beql    $t6, $zero, .L8099E034     
/* 00744 8099E014 9263054D */  lbu     $v1, 0x054D($s3)           ## 0000054D
/* 00748 8099E018 8C6F067C */  lw      $t7, 0x067C($v1)           ## 0000067C
/* 0074C 8099E01C 24030040 */  addiu   $v1, $zero, 0x0040         ## $v1 = 00000040
/* 00750 8099E020 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00754 8099E024 31F81000 */  andi    $t8, $t7, 0x1000           ## $t8 = 00000000
/* 00758 8099E028 17000034 */  bne     $t8, $zero, .L8099E0FC     
/* 0075C 8099E02C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L8099E030:
/* 00760 8099E030 9263054D */  lbu     $v1, 0x054D($s3)           ## 0000054D
.L8099E034:
/* 00764 8099E034 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00768 8099E038 10600003 */  beq     $v1, $zero, .L8099E048     
/* 0076C 8099E03C 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = 0000003F
/* 00770 8099E040 10000004 */  beq     $zero, $zero, .L8099E054   
/* 00774 8099E044 A279054D */  sb      $t9, 0x054D($s3)           ## 0000054D
.L8099E048:
/* 00778 8099E048 0C00B55C */  jal     Actor_Kill
              
/* 0077C 8099E04C AFA20060 */  sw      $v0, 0x0060($sp)           
/* 00780 8099E050 8FA20060 */  lw      $v0, 0x0060($sp)           
.L8099E054:
/* 00784 8099E054 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00788 8099E058 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 0078C 8099E05C 3C01809A */  lui     $at, %hi(D_8099EC08)       ## $at = 809A0000
/* 00790 8099E060 C422EC08 */  lwc1    $f2, %lo(D_8099EC08)($at)  
/* 00794 8099E064 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00798 8099E068 24030040 */  addiu   $v1, $zero, 0x0040         ## $v1 = 00000040
.L8099E06C:
/* 0079C 8099E06C C4400000 */  lwc1    $f0, 0x0000($v0)           ## 00000000
/* 007A0 8099E070 26520004 */  addiu   $s2, $s2, 0x0004           ## $s2 = 00000004
/* 007A4 8099E074 4616003C */  c.lt.s  $f0, $f22                  
/* 007A8 8099E078 00000000 */  nop
/* 007AC 8099E07C 45020004 */  bc1fl   .L8099E090                 
/* 007B0 8099E080 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000004
/* 007B4 8099E084 46020100 */  add.s   $f4, $f0, $f2              
/* 007B8 8099E088 E4440000 */  swc1    $f4, 0x0000($v0)           ## 00000000
/* 007BC 8099E08C C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000004
.L8099E090:
/* 007C0 8099E090 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000004
/* 007C4 8099E094 4616003C */  c.lt.s  $f0, $f22                  
/* 007C8 8099E098 00000000 */  nop
/* 007CC 8099E09C 45020004 */  bc1fl   .L8099E0B0                 
/* 007D0 8099E0A0 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000008
/* 007D4 8099E0A4 46020180 */  add.s   $f6, $f0, $f2              
/* 007D8 8099E0A8 E4460000 */  swc1    $f6, 0x0000($v0)           ## 00000004
/* 007DC 8099E0AC C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000008
.L8099E0B0:
/* 007E0 8099E0B0 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000008
/* 007E4 8099E0B4 4616003C */  c.lt.s  $f0, $f22                  
/* 007E8 8099E0B8 00000000 */  nop
/* 007EC 8099E0BC 45020004 */  bc1fl   .L8099E0D0                 
/* 007F0 8099E0C0 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 0000000C
/* 007F4 8099E0C4 46020200 */  add.s   $f8, $f0, $f2              
/* 007F8 8099E0C8 E4480000 */  swc1    $f8, 0x0000($v0)           ## 00000008
/* 007FC 8099E0CC C4400004 */  lwc1    $f0, 0x0004($v0)           ## 0000000C
.L8099E0D0:
/* 00800 8099E0D0 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 0000000C
/* 00804 8099E0D4 4616003C */  c.lt.s  $f0, $f22                  
/* 00808 8099E0D8 00000000 */  nop
/* 0080C 8099E0DC 45000003 */  bc1f    .L8099E0EC                 
/* 00810 8099E0E0 00000000 */  nop
/* 00814 8099E0E4 46020280 */  add.s   $f10, $f0, $f2             
/* 00818 8099E0E8 E44A0000 */  swc1    $f10, 0x0000($v0)          ## 0000000C
.L8099E0EC:
/* 0081C 8099E0EC 1643FFDF */  bne     $s2, $v1, .L8099E06C       
/* 00820 8099E0F0 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000010
/* 00824 8099E0F4 100000E8 */  beq     $zero, $zero, .L8099E498   
/* 00828 8099E0F8 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8099E0FC:
/* 0082C 8099E0FC 4481B000 */  mtc1    $at, $f22                  ## $f22 = -0.00
/* 00830 8099E100 3C01809A */  lui     $at, %hi(D_8099EC0C)       ## $at = 809A0000
/* 00834 8099E104 C422EC0C */  lwc1    $f2, %lo(D_8099EC0C)($at)  
.L8099E108:
/* 00838 8099E108 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 00000010
/* 0083C 8099E10C 26520004 */  addiu   $s2, $s2, 0x0004           ## $s2 = 00000008
/* 00840 8099E110 4616003C */  c.lt.s  $f0, $f22                  
/* 00844 8099E114 00000000 */  nop
/* 00848 8099E118 45020004 */  bc1fl   .L8099E12C                 
/* 0084C 8099E11C C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000014
/* 00850 8099E120 46020400 */  add.s   $f16, $f0, $f2             
/* 00854 8099E124 E4500000 */  swc1    $f16, 0x0000($v0)          ## 00000010
/* 00858 8099E128 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000014
.L8099E12C:
/* 0085C 8099E12C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000014
/* 00860 8099E130 4616003C */  c.lt.s  $f0, $f22                  
/* 00864 8099E134 00000000 */  nop
/* 00868 8099E138 45020004 */  bc1fl   .L8099E14C                 
/* 0086C 8099E13C C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000018
/* 00870 8099E140 46020480 */  add.s   $f18, $f0, $f2             
/* 00874 8099E144 E4520000 */  swc1    $f18, 0x0000($v0)          ## 00000014
/* 00878 8099E148 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000018
.L8099E14C:
/* 0087C 8099E14C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000018
/* 00880 8099E150 4616003C */  c.lt.s  $f0, $f22                  
/* 00884 8099E154 00000000 */  nop
/* 00888 8099E158 45020004 */  bc1fl   .L8099E16C                 
/* 0088C 8099E15C C4400004 */  lwc1    $f0, 0x0004($v0)           ## 0000001C
/* 00890 8099E160 46020100 */  add.s   $f4, $f0, $f2              
/* 00894 8099E164 E4440000 */  swc1    $f4, 0x0000($v0)           ## 00000018
/* 00898 8099E168 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 0000001C
.L8099E16C:
/* 0089C 8099E16C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 0000001C
/* 008A0 8099E170 4616003C */  c.lt.s  $f0, $f22                  
/* 008A4 8099E174 00000000 */  nop
/* 008A8 8099E178 45000003 */  bc1f    .L8099E188                 
/* 008AC 8099E17C 00000000 */  nop
/* 008B0 8099E180 46020180 */  add.s   $f6, $f0, $f2              
/* 008B4 8099E184 E4460000 */  swc1    $f6, 0x0000($v0)           ## 0000001C
.L8099E188:
/* 008B8 8099E188 1643FFDF */  bne     $s2, $v1, .L8099E108       
/* 008BC 8099E18C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000020
/* 008C0 8099E190 8CC90024 */  lw      $t1, 0x0024($a2)           ## 00000024
/* 008C4 8099E194 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 008C8 8099E198 4481E000 */  mtc1    $at, $f28                  ## $f28 = 4000.00
/* 008CC 8099E19C AE690024 */  sw      $t1, 0x0024($s3)           ## 00000024
/* 008D0 8099E1A0 8CC80028 */  lw      $t0, 0x0028($a2)           ## 00000028
/* 008D4 8099E1A4 3C01809A */  lui     $at, %hi(D_8099EC10)       ## $at = 809A0000
/* 008D8 8099E1A8 0000B025 */  or      $s6, $zero, $zero          ## $s6 = 00000000
/* 008DC 8099E1AC AE680028 */  sw      $t0, 0x0028($s3)           ## 00000028
/* 008E0 8099E1B0 8CC9002C */  lw      $t1, 0x002C($a2)           ## 0000002C
/* 008E4 8099E1B4 2415000C */  addiu   $s5, $zero, 0x000C         ## $s5 = 0000000C
/* 008E8 8099E1B8 AE69002C */  sw      $t1, 0x002C($s3)           ## 0000002C
/* 008EC 8099E1BC C43AEC10 */  lwc1    $f26, %lo(D_8099EC10)($at) 
/* 008F0 8099E1C0 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 008F4 8099E1C4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2000.00
/* 008F8 8099E1C8 00000000 */  nop
/* 008FC 8099E1CC 9272054C */  lbu     $s2, 0x054C($s3)           ## 0000054C
.L8099E1D0:
/* 00900 8099E1D0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 00904 8099E1D4 3252003F */  andi    $s2, $s2, 0x003F           ## $s2 = 00000008
/* 00908 8099E1D8 00125080 */  sll     $t2, $s2,  2               
/* 0090C 8099E1DC 026AA021 */  addu    $s4, $s3, $t2              
/* 00910 8099E1E0 C688014C */  lwc1    $f8, 0x014C($s4)           ## 0000014C
/* 00914 8099E1E4 4608B03E */  c.le.s  $f22, $f8                  
/* 00918 8099E1E8 00000000 */  nop
/* 0091C 8099E1EC 450200A6 */  bc1fl   .L8099E488                 
/* 00920 8099E1F0 26D60001 */  addiu   $s6, $s6, 0x0001           ## $s6 = 00000001
/* 00924 8099E1F4 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 00928 8099E1F8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0092C 8099E1FC 00000000 */  nop
/* 00930 8099E200 4600028D */  trunc.w.s $f10, $f0                  
/* 00934 8099E204 8662001C */  lh      $v0, 0x001C($s3)           ## 0000001C
/* 00938 8099E208 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0093C 8099E20C 44115000 */  mfc1    $s1, $f10                  
/* 00940 8099E210 00000000 */  nop
/* 00944 8099E214 00118C00 */  sll     $s1, $s1, 16               
/* 00948 8099E218 10410008 */  beq     $v0, $at, .L8099E23C       
/* 0094C 8099E21C 00118C03 */  sra     $s1, $s1, 16               
/* 00950 8099E220 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00954 8099E224 10410033 */  beq     $v0, $at, .L8099E2F4       
/* 00958 8099E228 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0095C 8099E22C 1041005F */  beq     $v0, $at, .L8099E3AC       
/* 00960 8099E230 00000000 */  nop
/* 00964 8099E234 1000008E */  beq     $zero, $zero, .L8099E470   
/* 00968 8099E238 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L8099E23C:
/* 0096C 8099E23C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00970 8099E240 00000000 */  nop
/* 00974 8099E244 3C01809A */  lui     $at, %hi(D_8099EC14)       ## $at = 809A0000
/* 00978 8099E248 C430EC14 */  lwc1    $f16, %lo(D_8099EC14)($at) 
/* 0097C 8099E24C 02550019 */  multu   $s2, $s5                   
/* 00980 8099E250 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 00984 8099E254 46100482 */  mul.s   $f18, $f0, $f16            
/* 00988 8099E258 44812000 */  mtc1    $at, $f4                   ## $f4 = 700.00
/* 0098C 8099E25C 00112400 */  sll     $a0, $s1, 16               
/* 00990 8099E260 46049080 */  add.s   $f2, $f18, $f4             
/* 00994 8099E264 00006012 */  mflo    $t4                        
/* 00998 8099E268 026C8021 */  addu    $s0, $s3, $t4              
/* 0099C 8099E26C 4602D03C */  c.lt.s  $f26, $f2                  
/* 009A0 8099E270 E602024C */  swc1    $f2, 0x024C($s0)           ## 0000024C
/* 009A4 8099E274 45000015 */  bc1f    .L8099E2CC                 
/* 009A8 8099E278 00000000 */  nop
/* 009AC 8099E27C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009B0 8099E280 00000000 */  nop
/* 009B4 8099E284 00112400 */  sll     $a0, $s1, 16               
/* 009B8 8099E288 00042403 */  sra     $a0, $a0, 16               
/* 009BC 8099E28C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 009C0 8099E290 46000506 */  mov.s   $f20, $f0                  
/* 009C4 8099E294 4614D182 */  mul.s   $f6, $f26, $f20            
/* 009C8 8099E298 00000000 */  nop
/* 009CC 8099E29C 46060202 */  mul.s   $f8, $f0, $f6              
/* 009D0 8099E2A0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009D4 8099E2A4 E6080250 */  swc1    $f8, 0x0250($s0)           ## 00000250
/* 009D8 8099E2A8 00112400 */  sll     $a0, $s1, 16               
/* 009DC 8099E2AC 00042403 */  sra     $a0, $a0, 16               
/* 009E0 8099E2B0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 009E4 8099E2B4 46000506 */  mov.s   $f20, $f0                  
/* 009E8 8099E2B8 4614D282 */  mul.s   $f10, $f26, $f20           
/* 009EC 8099E2BC 00000000 */  nop
/* 009F0 8099E2C0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 009F4 8099E2C4 10000069 */  beq     $zero, $zero, .L8099E46C   
/* 009F8 8099E2C8 E6100254 */  swc1    $f16, 0x0254($s0)          ## 00000254
.L8099E2CC:
/* 009FC 8099E2CC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00A00 8099E2D0 00042403 */  sra     $a0, $a0, 16               
/* 00A04 8099E2D4 461A0482 */  mul.s   $f18, $f0, $f26            
/* 00A08 8099E2D8 00112400 */  sll     $a0, $s1, 16               
/* 00A0C 8099E2DC 00042403 */  sra     $a0, $a0, 16               
/* 00A10 8099E2E0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00A14 8099E2E4 E6120250 */  swc1    $f18, 0x0250($s0)          ## 00000250
/* 00A18 8099E2E8 461A0102 */  mul.s   $f4, $f0, $f26             
/* 00A1C 8099E2EC 1000005F */  beq     $zero, $zero, .L8099E46C   
/* 00A20 8099E2F0 E6040254 */  swc1    $f4, 0x0254($s0)           ## 00000254
.L8099E2F4:
/* 00A24 8099E2F4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A28 8099E2F8 00000000 */  nop
/* 00A2C 8099E2FC 3C01809A */  lui     $at, %hi(D_8099EC18)       ## $at = 809A0000
/* 00A30 8099E300 C426EC18 */  lwc1    $f6, %lo(D_8099EC18)($at)  
/* 00A34 8099E304 02550019 */  multu   $s2, $s5                   
/* 00A38 8099E308 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 00A3C 8099E30C 46060202 */  mul.s   $f8, $f0, $f6              
/* 00A40 8099E310 44815000 */  mtc1    $at, $f10                  ## $f10 = 700.00
/* 00A44 8099E314 00112400 */  sll     $a0, $s1, 16               
/* 00A48 8099E318 460A4080 */  add.s   $f2, $f8, $f10             
/* 00A4C 8099E31C 00006812 */  mflo    $t5                        
/* 00A50 8099E320 026D8021 */  addu    $s0, $s3, $t5              
/* 00A54 8099E324 4602C03C */  c.lt.s  $f24, $f2                  
/* 00A58 8099E328 E602024C */  swc1    $f2, 0x024C($s0)           ## 0000024C
/* 00A5C 8099E32C 45000015 */  bc1f    .L8099E384                 
/* 00A60 8099E330 00000000 */  nop
/* 00A64 8099E334 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A68 8099E338 00000000 */  nop
/* 00A6C 8099E33C 00112400 */  sll     $a0, $s1, 16               
/* 00A70 8099E340 00042403 */  sra     $a0, $a0, 16               
/* 00A74 8099E344 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00A78 8099E348 46000506 */  mov.s   $f20, $f0                  
/* 00A7C 8099E34C 4614C402 */  mul.s   $f16, $f24, $f20           
/* 00A80 8099E350 00000000 */  nop
/* 00A84 8099E354 46100482 */  mul.s   $f18, $f0, $f16            
/* 00A88 8099E358 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A8C 8099E35C E6120250 */  swc1    $f18, 0x0250($s0)          ## 00000250
/* 00A90 8099E360 00112400 */  sll     $a0, $s1, 16               
/* 00A94 8099E364 00042403 */  sra     $a0, $a0, 16               
/* 00A98 8099E368 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00A9C 8099E36C 46000506 */  mov.s   $f20, $f0                  
/* 00AA0 8099E370 4614C102 */  mul.s   $f4, $f24, $f20            
/* 00AA4 8099E374 00000000 */  nop
/* 00AA8 8099E378 46040182 */  mul.s   $f6, $f0, $f4              
/* 00AAC 8099E37C 1000003B */  beq     $zero, $zero, .L8099E46C   
/* 00AB0 8099E380 E6060254 */  swc1    $f6, 0x0254($s0)           ## 00000254
.L8099E384:
/* 00AB4 8099E384 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00AB8 8099E388 00042403 */  sra     $a0, $a0, 16               
/* 00ABC 8099E38C 46180202 */  mul.s   $f8, $f0, $f24             
/* 00AC0 8099E390 00112400 */  sll     $a0, $s1, 16               
/* 00AC4 8099E394 00042403 */  sra     $a0, $a0, 16               
/* 00AC8 8099E398 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00ACC 8099E39C E6080250 */  swc1    $f8, 0x0250($s0)           ## 00000250
/* 00AD0 8099E3A0 46180282 */  mul.s   $f10, $f0, $f24            
/* 00AD4 8099E3A4 10000031 */  beq     $zero, $zero, .L8099E46C   
/* 00AD8 8099E3A8 E60A0254 */  swc1    $f10, 0x0254($s0)          ## 00000254
.L8099E3AC:
/* 00ADC 8099E3AC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AE0 8099E3B0 00000000 */  nop
/* 00AE4 8099E3B4 3C01809A */  lui     $at, %hi(D_8099EC1C)       ## $at = 809A0000
/* 00AE8 8099E3B8 C430EC1C */  lwc1    $f16, %lo(D_8099EC1C)($at) 
/* 00AEC 8099E3BC 02550019 */  multu   $s2, $s5                   
/* 00AF0 8099E3C0 3C01809A */  lui     $at, %hi(D_8099EC20)       ## $at = 809A0000
/* 00AF4 8099E3C4 46100482 */  mul.s   $f18, $f0, $f16            
/* 00AF8 8099E3C8 C424EC20 */  lwc1    $f4, %lo(D_8099EC20)($at)  
/* 00AFC 8099E3CC 3C01809A */  lui     $at, %hi(D_8099EC24)       ## $at = 809A0000
/* 00B00 8099E3D0 00112400 */  sll     $a0, $s1, 16               
/* 00B04 8099E3D4 46049080 */  add.s   $f2, $f18, $f4             
/* 00B08 8099E3D8 00007012 */  mflo    $t6                        
/* 00B0C 8099E3DC 026E8021 */  addu    $s0, $s3, $t6              
/* 00B10 8099E3E0 E602024C */  swc1    $f2, 0x024C($s0)           ## 0000024C
/* 00B14 8099E3E4 C426EC24 */  lwc1    $f6, %lo(D_8099EC24)($at)  
/* 00B18 8099E3E8 4602303C */  c.lt.s  $f6, $f2                   
/* 00B1C 8099E3EC 00000000 */  nop
/* 00B20 8099E3F0 45000015 */  bc1f    .L8099E448                 
/* 00B24 8099E3F4 00000000 */  nop
/* 00B28 8099E3F8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B2C 8099E3FC 00000000 */  nop
/* 00B30 8099E400 00112400 */  sll     $a0, $s1, 16               
/* 00B34 8099E404 00042403 */  sra     $a0, $a0, 16               
/* 00B38 8099E408 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B3C 8099E40C 46000506 */  mov.s   $f20, $f0                  
/* 00B40 8099E410 4614E202 */  mul.s   $f8, $f28, $f20            
/* 00B44 8099E414 00000000 */  nop
/* 00B48 8099E418 46080282 */  mul.s   $f10, $f0, $f8             
/* 00B4C 8099E41C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B50 8099E420 E60A0250 */  swc1    $f10, 0x0250($s0)          ## 00000250
/* 00B54 8099E424 00112400 */  sll     $a0, $s1, 16               
/* 00B58 8099E428 00042403 */  sra     $a0, $a0, 16               
/* 00B5C 8099E42C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B60 8099E430 46000506 */  mov.s   $f20, $f0                  
/* 00B64 8099E434 4614E402 */  mul.s   $f16, $f28, $f20           
/* 00B68 8099E438 00000000 */  nop
/* 00B6C 8099E43C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00B70 8099E440 1000000A */  beq     $zero, $zero, .L8099E46C   
/* 00B74 8099E444 E6120254 */  swc1    $f18, 0x0254($s0)          ## 00000254
.L8099E448:
/* 00B78 8099E448 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B7C 8099E44C 00042403 */  sra     $a0, $a0, 16               
/* 00B80 8099E450 461C0102 */  mul.s   $f4, $f0, $f28             
/* 00B84 8099E454 00112400 */  sll     $a0, $s1, 16               
/* 00B88 8099E458 00042403 */  sra     $a0, $a0, 16               
/* 00B8C 8099E45C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B90 8099E460 E6040250 */  swc1    $f4, 0x0250($s0)           ## 00000250
/* 00B94 8099E464 461C0182 */  mul.s   $f6, $f0, $f28             
/* 00B98 8099E468 E6060254 */  swc1    $f6, 0x0254($s0)           ## 00000254
.L8099E46C:
/* 00B9C 8099E46C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L8099E470:
/* 00BA0 8099E470 00000000 */  nop
/* 00BA4 8099E474 E688014C */  swc1    $f8, 0x014C($s4)           ## 0000014C
/* 00BA8 8099E478 926F054C */  lbu     $t7, 0x054C($s3)           ## 0000054C
/* 00BAC 8099E47C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00BB0 8099E480 A278054C */  sb      $t8, 0x054C($s3)           ## 0000054C
/* 00BB4 8099E484 26D60001 */  addiu   $s6, $s6, 0x0001           ## $s6 = 00000002
.L8099E488:
/* 00BB8 8099E488 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00BBC 8099E48C 56C1FF50 */  bnel    $s6, $at, .L8099E1D0       
/* 00BC0 8099E490 9272054C */  lbu     $s2, 0x054C($s3)           ## 0000054C
/* 00BC4 8099E494 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8099E498:
/* 00BC8 8099E498 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00BCC 8099E49C D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00BD0 8099E4A0 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00BD4 8099E4A4 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 00BD8 8099E4A8 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 00BDC 8099E4AC 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 00BE0 8099E4B0 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 00BE4 8099E4B4 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 00BE8 8099E4B8 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 00BEC 8099E4BC 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 00BF0 8099E4C0 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 00BF4 8099E4C4 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 00BF8 8099E4C8 03E00008 */  jr      $ra                        
/* 00BFC 8099E4CC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000