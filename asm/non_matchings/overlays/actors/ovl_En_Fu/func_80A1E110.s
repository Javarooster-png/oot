glabel func_80A1E110
/* 00900 80A1E110 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00904 80A1E114 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00908 80A1E118 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0090C 80A1E11C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00910 80A1E120 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 00914 80A1E124 14A10003 */  bne     $a1, $at, .L80A1E134       
/* 00918 80A1E128 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 0091C 80A1E12C 1000004B */  beq     $zero, $zero, .L80A1E25C   
/* 00920 80A1E130 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1E134:
/* 00924 80A1E134 24040008 */  addiu   $a0, $zero, 0x0008         ## $a0 = 00000008
/* 00928 80A1E138 10A40010 */  beq     $a1, $a0, .L80A1E17C       
/* 0092C 80A1E13C 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00930 80A1E140 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00934 80A1E144 10A10003 */  beq     $a1, $at, .L80A1E154       
/* 00938 80A1E148 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 0093C 80A1E14C 1000000B */  beq     $zero, $zero, .L80A1E17C   
/* 00940 80A1E150 8FA30044 */  lw      $v1, 0x0044($sp)           
.L80A1E154:
/* 00944 80A1E154 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00948 80A1E158 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 0094C 80A1E15C 84590004 */  lh      $t9, 0x0004($v0)           ## 00000004
/* 00950 80A1E160 846F029E */  lh      $t7, 0x029E($v1)           ## 0000029E
/* 00954 80A1E164 01CFC021 */  addu    $t8, $t6, $t7              
/* 00958 80A1E168 A4580000 */  sh      $t8, 0x0000($v0)           ## 00000000
/* 0095C 80A1E16C 8468029C */  lh      $t0, 0x029C($v1)           ## 0000029C
/* 00960 80A1E170 03284821 */  addu    $t1, $t9, $t0              
/* 00964 80A1E174 10000001 */  beq     $zero, $zero, .L80A1E17C   
/* 00968 80A1E178 A4490004 */  sh      $t1, 0x0004($v0)           ## 00000004
.L80A1E17C:
/* 0096C 80A1E17C 946A02A8 */  lhu     $t2, 0x02A8($v1)           ## 000002A8
/* 00970 80A1E180 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 00974 80A1E184 15600003 */  bne     $t3, $zero, .L80A1E194     
/* 00978 80A1E188 00000000 */  nop
/* 0097C 80A1E18C 10000033 */  beq     $zero, $zero, .L80A1E25C   
/* 00980 80A1E190 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1E194:
/* 00984 80A1E194 14A40030 */  bne     $a1, $a0, .L80A1E258       
/* 00988 80A1E198 00051880 */  sll     $v1, $a1,  2               
/* 0098C 80A1E19C 8FAC0030 */  lw      $t4, 0x0030($sp)           
/* 00990 80A1E1A0 00651823 */  subu    $v1, $v1, $a1              
/* 00994 80A1E1A4 000318C0 */  sll     $v1, $v1,  3               
/* 00998 80A1E1A8 8D8D009C */  lw      $t5, 0x009C($t4)           ## 0000009C
/* 0099C 80A1E1AC 00651821 */  addu    $v1, $v1, $a1              
/* 009A0 80A1E1B0 00031840 */  sll     $v1, $v1,  1               
/* 009A4 80A1E1B4 246E0814 */  addiu   $t6, $v1, 0x0814           ## $t6 = 00000814
/* 009A8 80A1E1B8 01AE0019 */  multu   $t5, $t6                   
/* 009AC 80A1E1BC AFA3001C */  sw      $v1, 0x001C($sp)           
/* 009B0 80A1E1C0 00002012 */  mflo    $a0                        
/* 009B4 80A1E1C4 00042400 */  sll     $a0, $a0, 16               
/* 009B8 80A1E1C8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 009BC 80A1E1CC 00042403 */  sra     $a0, $a0, 16               
/* 009C0 80A1E1D0 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 009C4 80A1E1D4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 009C8 80A1E1D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 009CC 80A1E1DC 844F0002 */  lh      $t7, 0x0002($v0)           ## 00000002
/* 009D0 80A1E1E0 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 009D4 80A1E1E4 46080282 */  mul.s   $f10, $f0, $f8             
/* 009D8 80A1E1E8 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 009DC 80A1E1EC 246A0940 */  addiu   $t2, $v1, 0x0940           ## $t2 = 00000940
/* 009E0 80A1E1F0 468021A0 */  cvt.s.w $f6, $f4                   
/* 009E4 80A1E1F4 460A3400 */  add.s   $f16, $f6, $f10            
/* 009E8 80A1E1F8 4600848D */  trunc.w.s $f18, $f16                 
/* 009EC 80A1E1FC 44199000 */  mfc1    $t9, $f18                  
/* 009F0 80A1E200 00000000 */  nop
/* 009F4 80A1E204 A4590002 */  sh      $t9, 0x0002($v0)           ## 00000002
/* 009F8 80A1E208 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 009FC 80A1E20C 8D09009C */  lw      $t1, 0x009C($t0)           ## 0000009C
/* 00A00 80A1E210 012A0019 */  multu   $t1, $t2                   
/* 00A04 80A1E214 00002012 */  mflo    $a0                        
/* 00A08 80A1E218 00042400 */  sll     $a0, $a0, 16               
/* 00A0C 80A1E21C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00A10 80A1E220 00042403 */  sra     $a0, $a0, 16               
/* 00A14 80A1E224 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 00A18 80A1E228 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00A1C 80A1E22C 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00A20 80A1E230 844B0004 */  lh      $t3, 0x0004($v0)           ## 00000004
/* 00A24 80A1E234 46060282 */  mul.s   $f10, $f0, $f6             
/* 00A28 80A1E238 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00A2C 80A1E23C 00000000 */  nop
/* 00A30 80A1E240 46802220 */  cvt.s.w $f8, $f4                   
/* 00A34 80A1E244 460A4400 */  add.s   $f16, $f8, $f10            
/* 00A38 80A1E248 4600848D */  trunc.w.s $f18, $f16                 
/* 00A3C 80A1E24C 440D9000 */  mfc1    $t5, $f18                  
/* 00A40 80A1E250 00000000 */  nop
/* 00A44 80A1E254 A44D0004 */  sh      $t5, 0x0004($v0)           ## 00000004
.L80A1E258:
/* 00A48 80A1E258 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1E25C:
/* 00A4C 80A1E25C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A50 80A1E260 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A54 80A1E264 03E00008 */  jr      $ra                        
/* 00A58 80A1E268 00000000 */  nop