glabel func_8083B040
/* 08E30 8083B040 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 08E34 8083B044 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 08E38 8083B048 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 08E3C 8083B04C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 08E40 8083B050 908E06AD */  lbu     $t6, 0x06AD($a0)           ## 000006AD
/* 08E44 8083B054 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 08E48 8083B058 51C00175 */  beql    $t6, $zero, .L8083B630     
/* 08E4C 8083B05C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 08E50 8083B060 0C20CCAE */  jal     func_808332B8              
/* 08E54 8083B064 00000000 */  nop
/* 08E58 8083B068 14400009 */  bne     $v0, $zero, .L8083B090     
/* 08E5C 8083B06C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08E60 8083B070 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 08E64 8083B074 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 08E68 8083B078 17000005 */  bne     $t8, $zero, .L8083B090     
/* 08E6C 8083B07C 00000000 */  nop
/* 08E70 8083B080 8E19067C */  lw      $t9, 0x067C($s0)           ## 0000067C
/* 08E74 8083B084 00194200 */  sll     $t0, $t9,  8               
/* 08E78 8083B088 05030169 */  bgezl   $t0, .L8083B630            
/* 08E7C 8083B08C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083B090:
/* 08E80 8083B090 0C20EB75 */  jal     func_8083ADD4              
/* 08E84 8083B094 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08E88 8083B098 14400160 */  bne     $v0, $zero, .L8083B61C     
/* 08E8C 8083B09C 00000000 */  nop
/* 08E90 8083B0A0 920906AD */  lbu     $t1, 0x06AD($s0)           ## 000006AD
/* 08E94 8083B0A4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 08E98 8083B0A8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08E9C 8083B0AC 15210138 */  bne     $t1, $at, .L8083B590       
/* 08EA0 8083B0B0 00000000 */  nop
/* 08EA4 8083B0B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08EA8 8083B0B8 0C023C36 */  jal     func_8008F0D8              
/* 08EAC 8083B0BC 82050154 */  lb      $a1, 0x0154($s0)           ## 00000154
/* 08EB0 8083B0C0 04400023 */  bltz    $v0, .L8083B150            
/* 08EB4 8083B0C4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 08EB8 8083B0C8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 08EBC 8083B0CC 14410006 */  bne     $v0, $at, .L8083B0E8       
/* 08EC0 8083B0D0 3C0A8016 */  lui     $t2, %hi(gSaveContext+0x13b3)
/* 08EC4 8083B0D4 814AFA13 */  lb      $t2, %lo(gSaveContext+0x13b3)($t2)
/* 08EC8 8083B0D8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08ECC 8083B0DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08ED0 8083B0E0 1D400007 */  bgtz    $t2, .L8083B100            
/* 08ED4 8083B0E4 3C068085 */  lui     $a2, %hi(func_8085063C)    ## $a2 = 80850000
.L8083B0E8:
/* 08ED8 8083B0E8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08EDC 8083B0EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08EE0 8083B0F0 0C20EBD1 */  jal     func_8083AF44              
/* 08EE4 8083B0F4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 08EE8 8083B0F8 10000011 */  beq     $zero, $zero, .L8083B140   
/* 08EEC 8083B0FC 00000000 */  nop
.L8083B100:
/* 08EF0 8083B100 24C6063C */  addiu   $a2, $a2, %lo(func_8085063C) ## $a2 = 0000063C
/* 08EF4 8083B104 0C20D716 */  jal     func_80835C58              
/* 08EF8 8083B108 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08EFC 8083B10C 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 08F00 8083B110 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 08F04 8083B114 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08F08 8083B118 01616025 */  or      $t4, $t3, $at              ## $t4 = 30000000
/* 08F0C 8083B11C 0C20CCCE */  jal     func_80833338              
/* 08F10 8083B120 AE0C067C */  sw      $t4, 0x067C($s0)           ## 0000067C
/* 08F14 8083B124 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08F18 8083B128 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08F1C 8083B12C 0C20C899 */  jal     func_80832264              
/* 08F20 8083B130 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 08F24 8083B134 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08F28 8083B138 0C20D7A9 */  jal     func_80835EA4              
/* 08F2C 8083B13C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
.L8083B140:
/* 08F30 8083B140 0C20C889 */  jal     func_80832224              
/* 08F34 8083B144 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08F38 8083B148 10000139 */  beq     $zero, $zero, .L8083B630   
/* 08F3C 8083B14C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083B150:
/* 08F40 8083B150 82050154 */  lb      $a1, 0x0154($s0)           ## 00000154
/* 08F44 8083B154 24ADFFD5 */  addiu   $t5, $a1, 0xFFD5           ## $t5 = FFFFFFD5
/* 08F48 8083B158 05A1001B */  bgez    $t5, .L8083B1C8            
/* 08F4C 8083B15C AFAD002C */  sw      $t5, 0x002C($sp)           
/* 08F50 8083B160 0C023C89 */  jal     func_8008F224              
/* 08F54 8083B164 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08F58 8083B168 2443FFFF */  addiu   $v1, $v0, 0xFFFF           ## $v1 = FFFFFFFF
/* 08F5C 8083B16C 046000A2 */  bltz    $v1, .L8083B3F8            
/* 08F60 8083B170 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 08F64 8083B174 28610006 */  slti    $at, $v1, 0x0006           
/* 08F68 8083B178 502000A0 */  beql    $at, $zero, .L8083B3FC     
/* 08F6C 8083B17C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08F70 8083B180 82050154 */  lb      $a1, 0x0154($s0)           ## 00000154
/* 08F74 8083B184 28A10023 */  slti    $at, $a1, 0x0023           
/* 08F78 8083B188 50200010 */  beql    $at, $zero, .L8083B1CC     
/* 08F7C 8083B18C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08F80 8083B190 8E0F0694 */  lw      $t7, 0x0694($s0)           ## 00000694
/* 08F84 8083B194 24010022 */  addiu   $at, $zero, 0x0022         ## $at = 00000022
/* 08F88 8083B198 51E00098 */  beql    $t7, $zero, .L8083B3FC     
/* 08F8C 8083B19C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08F90 8083B1A0 54A10006 */  bnel    $a1, $at, .L8083B1BC       
/* 08F94 8083B1A4 82190693 */  lb      $t9, 0x0693($s0)           ## 00000693
/* 08F98 8083B1A8 82180693 */  lb      $t8, 0x0693($s0)           ## 00000693
/* 08F9C 8083B1AC 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 08FA0 8083B1B0 53010006 */  beql    $t8, $at, .L8083B1CC       
/* 08FA4 8083B1B4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 08FA8 8083B1B8 82190693 */  lb      $t9, 0x0693($s0)           ## 00000693
.L8083B1BC:
/* 08FAC 8083B1BC 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 08FB0 8083B1C0 5721008E */  bnel    $t9, $at, .L8083B3FC       
/* 08FB4 8083B1C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083B1C8:
/* 08FB8 8083B1C8 8FA40034 */  lw      $a0, 0x0034($sp)           
.L8083B1CC:
/* 08FBC 8083B1CC 90881D57 */  lbu     $t0, 0x1D57($a0)           ## 00001D57
/* 08FC0 8083B1D0 15000087 */  bne     $t0, $zero, .L8083B3F0     
/* 08FC4 8083B1D4 00000000 */  nop
/* 08FC8 8083B1D8 84891D58 */  lh      $t1, 0x1D58($a0)           ## 00001D58
/* 08FCC 8083B1DC 3C068085 */  lui     $a2, %hi(func_8084F104)    ## $a2 = 80850000
/* 08FD0 8083B1E0 24C6F104 */  addiu   $a2, $a2, %lo(func_8084F104) ## $a2 = 8084F104
/* 08FD4 8083B1E4 15200082 */  bne     $t1, $zero, .L8083B3F0     
/* 08FD8 8083B1E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08FDC 8083B1EC 0C20D779 */  jal     func_80835DE4              
/* 08FE0 8083B1F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08FE4 8083B1F4 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 08FE8 8083B1F8 3C0B8085 */  lui     $t3, %hi(D_80854528)       ## $t3 = 80850000
/* 08FEC 8083B1FC 3C0E8085 */  lui     $t6, %hi(D_80853624)       ## $t6 = 80850000
/* 08FF0 8083B200 0540000B */  bltz    $t2, .L8083B230            
/* 08FF4 8083B204 016A5821 */  addu    $t3, $t3, $t2              
/* 08FF8 8083B208 916B4528 */  lbu     $t3, %lo(D_80854528)($t3)  
/* 08FFC 8083B20C 25CE3624 */  addiu   $t6, $t6, %lo(D_80853624)  ## $t6 = 80853624
/* 09000 8083B210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09004 8083B214 000B6080 */  sll     $t4, $t3,  2               
/* 09008 8083B218 018B6023 */  subu    $t4, $t4, $t3              
/* 0900C 8083B21C 000C6040 */  sll     $t4, $t4,  1               
/* 09010 8083B220 258DFFFA */  addiu   $t5, $t4, 0xFFFA           ## $t5 = FFFFFFFA
/* 09014 8083B224 01AE1021 */  addu    $v0, $t5, $t6              
/* 09018 8083B228 0C20EB90 */  jal     func_8083AE40              
/* 0901C 8083B22C 84450004 */  lh      $a1, 0x0004($v0)           ## 00000004
.L8083B230:
/* 09020 8083B230 8E0F067C */  lw      $t7, 0x067C($s0)           ## 0000067C
/* 09024 8083B234 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 09028 8083B238 34210040 */  ori     $at, $at, 0x0040           ## $at = 30000040
/* 0902C 8083B23C 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 30000040
/* 09030 8083B240 AE18067C */  sw      $t8, 0x067C($s0)           ## 0000067C
/* 09034 8083B244 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 09038 8083B248 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 0903C 8083B24C 07200004 */  bltz    $t9, .L8083B260            
/* 09040 8083B250 252A0018 */  addiu   $t2, $t1, 0x0018           ## $t2 = 00000018
/* 09044 8083B254 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 09048 8083B258 10000002 */  beq     $zero, $zero, .L8083B264   
/* 0904C 8083B25C AFA8002C */  sw      $t0, 0x002C($sp)           
.L8083B260:
/* 09050 8083B260 AFAA002C */  sw      $t2, 0x002C($sp)           
.L8083B264:
/* 09054 8083B264 8E030694 */  lw      $v1, 0x0694($s0)           ## 00000694
/* 09058 8083B268 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 0905C 8083B26C 50600034 */  beql    $v1, $zero, .L8083B340     
/* 09060 8083B270 8FAC002C */  lw      $t4, 0x002C($sp)           
/* 09064 8083B274 82020693 */  lb      $v0, 0x0693($s0)           ## 00000693
/* 09068 8083B278 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 0906C 8083B27C 5162000F */  beql    $t3, $v0, .L8083B2BC       
/* 09070 8083B280 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 09074 8083B284 1041000C */  beq     $v0, $at, .L8083B2B8       
/* 09078 8083B288 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 0907C 8083B28C 14410005 */  bne     $v0, $at, .L8083B2A4       
/* 09080 8083B290 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 09084 8083B294 820C0154 */  lb      $t4, 0x0154($s0)           ## 00000154
/* 09088 8083B298 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 0908C 8083B29C 51810007 */  beql    $t4, $at, .L8083B2BC       
/* 09090 8083B2A0 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
.L8083B2A4:
/* 09094 8083B2A4 54820026 */  bnel    $a0, $v0, .L8083B340       
/* 09098 8083B2A8 8FAC002C */  lw      $t4, 0x002C($sp)           
/* 0909C 8083B2AC 820D0154 */  lb      $t5, 0x0154($s0)           ## 00000154
/* 090A0 8083B2B0 24010021 */  addiu   $at, $zero, 0x0021         ## $at = 00000021
/* 090A4 8083B2B4 15A10021 */  bne     $t5, $at, .L8083B33C       
.L8083B2B8:
/* 090A8 8083B2B8 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
.L8083B2BC:
/* 090AC 8083B2BC 14820005 */  bne     $a0, $v0, .L8083B2D4       
/* 090B0 8083B2C0 00000000 */  nop
/* 090B4 8083B2C4 820E0154 */  lb      $t6, 0x0154($s0)           ## 00000154
/* 090B8 8083B2C8 2401002E */  addiu   $at, $zero, 0x002E         ## $at = 0000002E
/* 090BC 8083B2CC 55C1001C */  bnel    $t6, $at, .L8083B340       
/* 090C0 8083B2D0 8FAC002C */  lw      $t4, 0x002C($sp)           
.L8083B2D4:
/* 090C4 8083B2D4 14820013 */  bne     $a0, $v0, .L8083B324       
/* 090C8 8083B2D8 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 090CC 8083B2DC 24040010 */  addiu   $a0, $zero, 0x0010         ## $a0 = 00000010
/* 090D0 8083B2E0 0C021CCC */  jal     Inventory_ChangeAmmo              
/* 090D4 8083B2E4 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 090D8 8083B2E8 3C068084 */  lui     $a2, %hi(func_8084279C)    ## $a2 = 80840000
/* 090DC 8083B2EC 24C6279C */  addiu   $a2, $a2, %lo(func_8084279C) ## $a2 = 8084279C
/* 090E0 8083B2F0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 090E4 8083B2F4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 090E8 8083B2F8 0C20D779 */  jal     func_80835DE4              
/* 090EC 8083B2FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 090F0 8083B300 8E0F067C */  lw      $t7, 0x067C($s0)           ## 0000067C
/* 090F4 8083B304 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 090F8 8083B308 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 090FC 8083B30C 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 09100 8083B310 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 09104 8083B314 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 20000000
/* 09108 8083B318 AE18067C */  sw      $t8, 0x067C($s0)           ## 0000067C
/* 0910C 8083B31C A6190850 */  sh      $t9, 0x0850($s0)           ## 00000850
/* 09110 8083B320 A208084F */  sb      $t0, 0x084F($s0)           ## 0000084F
.L8083B324:
/* 09114 8083B324 8C690004 */  lw      $t1, 0x0004($v1)           ## 00000004
/* 09118 8083B328 352A0100 */  ori     $t2, $t1, 0x0100           ## $t2 = 00000100
/* 0911C 8083B32C AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 09120 8083B330 8E0B0694 */  lw      $t3, 0x0694($s0)           ## 00000694
/* 09124 8083B334 10000014 */  beq     $zero, $zero, .L8083B388   
/* 09128 8083B338 AE0B0664 */  sw      $t3, 0x0664($s0)           ## 00000664
.L8083B33C:
/* 0912C 8083B33C 8FAC002C */  lw      $t4, 0x002C($sp)           
.L8083B340:
/* 09130 8083B340 2401001D */  addiu   $at, $zero, 0x001D         ## $at = 0000001D
/* 09134 8083B344 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 09138 8083B348 1581000A */  bne     $t4, $at, .L8083B374       
/* 0913C 8083B34C 241800CF */  addiu   $t8, $zero, 0x00CF         ## $t8 = 000000CF
/* 09140 8083B350 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 09144 8083B354 240E4005 */  addiu   $t6, $zero, 0x4005         ## $t6 = 00004005
/* 09148 8083B358 A20D084F */  sb      $t5, 0x084F($s0)           ## 0000084F
/* 0914C 8083B35C A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
/* 09150 8083B360 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09154 8083B364 0C20D7A9 */  jal     func_80835EA4              
/* 09158 8083B368 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0915C 8083B36C 10000007 */  beq     $zero, $zero, .L8083B38C   
/* 09160 8083B370 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
.L8083B374:
/* 09164 8083B374 A20F084F */  sb      $t7, 0x084F($s0)           ## 0000084F
/* 09168 8083B378 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 0916C 8083B37C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09170 8083B380 0C20D7A9 */  jal     func_80835EA4              
/* 09174 8083B384 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
.L8083B388:
/* 09178 8083B388 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
.L8083B38C:
/* 0917C 8083B38C 8202084F */  lb      $v0, 0x084F($s0)           ## 0000084F
/* 09180 8083B390 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09184 8083B394 37280100 */  ori     $t0, $t9, 0x0100           ## $t0 = 00000100
/* 09188 8083B398 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 0918C 8083B39C 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 09190 8083B3A0 00026080 */  sll     $t4, $v0,  2               
/* 09194 8083B3A4 0441000B */  bgez    $v0, .L8083B3D4            
/* 09198 8083B3A8 A2090693 */  sb      $t1, 0x0693($s0)           ## 00000693
/* 0919C 8083B3AC 920A015B */  lbu     $t2, 0x015B($s0)           ## 0000015B
/* 091A0 8083B3B0 3C068085 */  lui     $a2, %hi(D_80853C14)       ## $a2 = 80850000
/* 091A4 8083B3B4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 091A8 8083B3B8 000A5880 */  sll     $t3, $t2,  2               
/* 091AC 8083B3BC 00CB3021 */  addu    $a2, $a2, $t3              
/* 091B0 8083B3C0 8CC63C14 */  lw      $a2, %lo(D_80853C14)($a2)  
/* 091B4 8083B3C4 0C20CAC3 */  jal     func_80832B0C              
/* 091B8 8083B3C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 091BC 8083B3CC 10000006 */  beq     $zero, $zero, .L8083B3E8   
/* 091C0 8083B3D0 00000000 */  nop
.L8083B3D4:
/* 091C4 8083B3D4 3C068085 */  lui     $a2, %hi(D_80854548)       ## $a2 = 80850000
/* 091C8 8083B3D8 00CC3021 */  addu    $a2, $a2, $t4              
/* 091CC 8083B3DC 8CC64548 */  lw      $a2, %lo(D_80854548)($a2)  
/* 091D0 8083B3E0 0C20C899 */  jal     func_80832264              
/* 091D4 8083B3E4 8FA40034 */  lw      $a0, 0x0034($sp)           
.L8083B3E8:
/* 091D8 8083B3E8 0C20C889 */  jal     func_80832224              
/* 091DC 8083B3EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083B3F0:
/* 091E0 8083B3F0 1000008F */  beq     $zero, $zero, .L8083B630   
/* 091E4 8083B3F4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083B3F8:
/* 091E8 8083B3F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083B3FC:
/* 091EC 8083B3FC 0C023C89 */  jal     func_8008F224              
/* 091F0 8083B400 82050154 */  lb      $a1, 0x0154($s0)           ## 00000154
/* 091F4 8083B404 0440003C */  bltz    $v0, .L8083B4F8            
/* 091F8 8083B408 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 091FC 8083B40C 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 09200 8083B410 14410010 */  bne     $v0, $at, .L8083B454       
/* 09204 8083B414 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09208 8083B418 3C068085 */  lui     $a2, %hi(func_8084EED8)    ## $a2 = 80850000
/* 0920C 8083B41C 24C6EED8 */  addiu   $a2, $a2, %lo(func_8084EED8) ## $a2 = 8084EED8
/* 09210 8083B420 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09214 8083B424 0C20D779 */  jal     func_80835DE4              
/* 09218 8083B428 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0921C 8083B42C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 09220 8083B430 24C62650 */  addiu   $a2, $a2, 0x2650           ## $a2 = 04002650
/* 09224 8083B434 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09228 8083B438 0C20C8B4 */  jal     func_808322D0              
/* 0922C 8083B43C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09230 8083B440 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09234 8083B444 0C20D7A9 */  jal     func_80835EA4              
/* 09238 8083B448 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0923C 8083B44C 10000070 */  beq     $zero, $zero, .L8083B610   
/* 09240 8083B450 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
.L8083B454:
/* 09244 8083B454 18400018 */  blez    $v0, .L8083B4B8            
/* 09248 8083B458 28410004 */  slti    $at, $v0, 0x0004           
/* 0924C 8083B45C 10200016 */  beq     $at, $zero, .L8083B4B8     
/* 09250 8083B460 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09254 8083B464 3C068085 */  lui     $a2, %hi(func_8084EFC0)    ## $a2 = 80850000
/* 09258 8083B468 24C6EFC0 */  addiu   $a2, $a2, %lo(func_8084EFC0) ## $a2 = 8084EFC0
/* 0925C 8083B46C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09260 8083B470 0C20D779 */  jal     func_80835DE4              
/* 09264 8083B474 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09268 8083B478 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0926C 8083B47C 24C62688 */  addiu   $a2, $a2, 0x2688           ## $a2 = 04002688
/* 09270 8083B480 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09274 8083B484 0C20C8B4 */  jal     func_808322D0              
/* 09278 8083B488 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0927C 8083B48C 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 09280 8083B490 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 09284 8083B494 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 09288 8083B498 15A10003 */  bne     $t5, $at, .L8083B4A8       
/* 0928C 8083B49C 00000000 */  nop
/* 09290 8083B4A0 10000001 */  beq     $zero, $zero, .L8083B4A8   
/* 09294 8083B4A4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L8083B4A8:
/* 09298 8083B4A8 0C20D7A9 */  jal     func_80835EA4              
/* 0929C 8083B4AC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 092A0 8083B4B0 10000057 */  beq     $zero, $zero, .L8083B610   
/* 092A4 8083B4B4 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
.L8083B4B8:
/* 092A8 8083B4B8 3C068085 */  lui     $a2, %hi(func_8084EAC0)    ## $a2 = 80850000
/* 092AC 8083B4BC 24C6EAC0 */  addiu   $a2, $a2, %lo(func_8084EAC0) ## $a2 = 8084EAC0
/* 092B0 8083B4C0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 092B4 8083B4C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 092B8 8083B4C8 0C20D779 */  jal     func_80835DE4              
/* 092BC 8083B4CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 092C0 8083B4D0 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 092C4 8083B4D4 24C62668 */  addiu   $a2, $a2, 0x2668           ## $a2 = 04002668
/* 092C8 8083B4D8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 092CC 8083B4DC 0C20CADE */  jal     func_80832B78              
/* 092D0 8083B4E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 092D4 8083B4E4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 092D8 8083B4E8 0C20D7A9 */  jal     func_80835EA4              
/* 092DC 8083B4EC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 092E0 8083B4F0 10000047 */  beq     $zero, $zero, .L8083B610   
/* 092E4 8083B4F4 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
.L8083B4F8:
/* 092E8 8083B4F8 3C068085 */  lui     $a2, %hi(func_8084E3C4)    ## $a2 = 80850000
/* 092EC 8083B4FC 24C6E3C4 */  addiu   $a2, $a2, %lo(func_8084E3C4) ## $a2 = 8084E3C4
/* 092F0 8083B500 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 092F4 8083B504 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 092F8 8083B508 0C20D779 */  jal     func_80835DE4              
/* 092FC 8083B50C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09300 8083B510 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 09304 8083B514 24C630A0 */  addiu   $a2, $a2, 0x30A0           ## $a2 = 040030A0
/* 09308 8083B518 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0930C 8083B51C 0C20C8B4 */  jal     func_808322D0              
/* 09310 8083B520 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09314 8083B524 8E0E0680 */  lw      $t6, 0x0680($s0)           ## 00000680
/* 09318 8083B528 8E1806A8 */  lw      $t8, 0x06A8($s0)           ## 000006A8
/* 0931C 8083B52C 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 09320 8083B530 01C17825 */  or      $t7, $t6, $at              ## $t7 = 08000000
/* 09324 8083B534 13000003 */  beq     $t8, $zero, .L8083B544     
/* 09328 8083B538 AE0F0680 */  sw      $t7, 0x0680($s0)           ## 00000680
/* 0932C 8083B53C 10000002 */  beq     $zero, $zero, .L8083B548   
/* 09330 8083B540 2405005B */  addiu   $a1, $zero, 0x005B         ## $a1 = 0000005B
.L8083B544:
/* 09334 8083B544 2405005A */  addiu   $a1, $zero, 0x005A         ## $a1 = 0000005A
.L8083B548:
/* 09338 8083B548 0C20D7A9 */  jal     func_80835EA4              
/* 0933C 8083B54C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09340 8083B550 8E1906A8 */  lw      $t9, 0x06A8($s0)           ## 000006A8
/* 09344 8083B554 5320002E */  beql    $t9, $zero, .L8083B610     
/* 09348 8083B558 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
/* 0934C 8083B55C 8E080680 */  lw      $t0, 0x0680($s0)           ## 00000680
/* 09350 8083B560 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 09354 8083B564 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09358 8083B568 01014825 */  or      $t1, $t0, $at              ## $t1 = 02000000
/* 0935C 8083B56C AE090680 */  sw      $t1, 0x0680($s0)           ## 00000680
/* 09360 8083B570 0C030129 */  jal     Gameplay_GetCamera              
/* 09364 8083B574 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09368 8083B578 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 0936C 8083B57C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 09370 8083B580 0C016AA4 */  jal     func_8005AA90              
/* 09374 8083B584 8E0606A8 */  lw      $a2, 0x06A8($s0)           ## 000006A8
/* 09378 8083B588 10000021 */  beq     $zero, $zero, .L8083B610   
/* 0937C 8083B58C 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
.L8083B590:
/* 09380 8083B590 0C20EB53 */  jal     func_8083AD4C              
/* 09384 8083B594 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09388 8083B598 10400018 */  beq     $v0, $zero, .L8083B5FC     
/* 0938C 8083B59C 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 09390 8083B5A0 8E02067C */  lw      $v0, 0x067C($s0)           ## 0000067C
/* 09394 8083B5A4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09398 8083B5A8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0939C 8083B5AC 00025200 */  sll     $t2, $v0,  8               
/* 093A0 8083B5B0 05400009 */  bltz    $t2, .L8083B5D8            
/* 093A4 8083B5B4 3C068085 */  lui     $a2, %hi(func_8084B1D8)    ## $a2 = 80850000
/* 093A8 8083B5B8 24C6B1D8 */  addiu   $a2, $a2, %lo(func_8084B1D8) ## $a2 = 8084B1D8
/* 093AC 8083B5BC 0C20D716 */  jal     func_80835C58              
/* 093B0 8083B5C0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 093B4 8083B5C4 240B000D */  addiu   $t3, $zero, 0x000D         ## $t3 = 0000000D
/* 093B8 8083B5C8 A60B0850 */  sh      $t3, 0x0850($s0)           ## 00000850
/* 093BC 8083B5CC 0C20EC04 */  jal     func_8083B010              
/* 093C0 8083B5D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 093C4 8083B5D4 8E02067C */  lw      $v0, 0x067C($s0)           ## 0000067C
.L8083B5D8:
/* 093C8 8083B5D8 3C010010 */  lui     $at, 0x0010                ## $at = 00100000
/* 093CC 8083B5DC 00416025 */  or      $t4, $v0, $at              ## $t4 = 00100000
/* 093D0 8083B5E0 AE0C067C */  sw      $t4, 0x067C($s0)           ## 0000067C
/* 093D4 8083B5E4 0C01E221 */  jal     func_80078884              
/* 093D8 8083B5E8 24044813 */  addiu   $a0, $zero, 0x4813         ## $a0 = 00004813
/* 093DC 8083B5EC 0C20C884 */  jal     func_80832210              
/* 093E0 8083B5F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 093E4 8083B5F4 1000000E */  beq     $zero, $zero, .L8083B630   
/* 093E8 8083B5F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083B5FC:
/* 093EC 8083B5FC 0C01E221 */  jal     func_80078884              
/* 093F0 8083B600 A20006AD */  sb      $zero, 0x06AD($s0)         ## 000006AD
/* 093F4 8083B604 1000000A */  beq     $zero, $zero, .L8083B630   
/* 093F8 8083B608 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 093FC 8083B60C 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
.L8083B610:
/* 09400 8083B610 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 09404 8083B614 01A17025 */  or      $t6, $t5, $at              ## $t6 = 30000000
/* 09408 8083B618 AE0E067C */  sw      $t6, 0x067C($s0)           ## 0000067C
.L8083B61C:
/* 0940C 8083B61C 0C20C889 */  jal     func_80832224              
/* 09410 8083B620 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09414 8083B624 10000002 */  beq     $zero, $zero, .L8083B630   
/* 09418 8083B628 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0941C 8083B62C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083B630:
/* 09420 8083B630 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 09424 8083B634 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 09428 8083B638 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0942C 8083B63C 03E00008 */  jr      $ra                        
/* 09430 8083B640 00000000 */  nop