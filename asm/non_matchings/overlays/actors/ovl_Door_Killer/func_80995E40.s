.rdata
glabel D_80996080
    .asciz "../z_door_killer.c"
    .balign 4

glabel D_80996094
    .asciz "../z_door_killer.c"
    .balign 4

.text
glabel func_80995E40
/* 011F0 80995E40 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 011F4 80995E44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011F8 80995E48 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 011FC 80995E4C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01200 80995E50 8C8F0214 */  lw      $t7, 0x0214($a0)           ## 00000214
/* 01204 80995E54 3C068099 */  lui     $a2, %hi(D_80996080)       ## $a2 = 80990000
/* 01208 80995E58 24C66080 */  addiu   $a2, $a2, %lo(D_80996080)  ## $a2 = 80996080
/* 0120C 80995E5C AFAF0038 */  sw      $t7, 0x0038($sp)           
/* 01210 80995E60 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01214 80995E64 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFE4
/* 01218 80995E68 24070373 */  addiu   $a3, $zero, 0x0373         ## $a3 = 00000373
/* 0121C 80995E6C 0C031AB1 */  jal     Graph_OpenDisps              
/* 01220 80995E70 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01224 80995E74 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 01228 80995E78 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 0122C 80995E7C 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 01230 80995E80 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 01234 80995E84 3C068099 */  lui     $a2, %hi(D_80996094)       ## $a2 = 80990000
/* 01238 80995E88 24C66094 */  addiu   $a2, $a2, %lo(D_80996094)  ## $a2 = 80996094
/* 0123C 80995E8C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 01240 80995E90 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01244 80995E94 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 01248 80995E98 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0124C 80995E9C 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFE4
/* 01250 80995EA0 24070375 */  addiu   $a3, $zero, 0x0375         ## $a3 = 00000375
/* 01254 80995EA4 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 01258 80995EA8 8FAB0044 */  lw      $t3, 0x0044($sp)           
/* 0125C 80995EAC 0C031AD5 */  jal     Graph_CloseDisps              
/* 01260 80995EB0 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 01264 80995EB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01268 80995EB8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0126C 80995EBC 03E00008 */  jr      $ra                        
/* 01270 80995EC0 00000000 */  nop