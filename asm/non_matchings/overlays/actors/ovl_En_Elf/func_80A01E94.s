glabel func_80A01E94
/* 00264 80A01E94 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00268 80A01E98 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 0026C 80A01E9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00270 80A01EA0 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00274 80A01EA4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00278 80A01EA8 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 0027C 80A01EAC 3C0D80A0 */  lui     $t5, %hi(func_80A02B38)    ## $t5 = 80A00000
/* 00280 80A01EB0 240C0800 */  addiu   $t4, $zero, 0x0800         ## $t4 = 00000800
/* 00284 80A01EB4 25AD2B38 */  addiu   $t5, $t5, %lo(func_80A02B38) ## $t5 = 80A02B38
/* 00288 80A01EB8 A48C02B0 */  sh      $t4, 0x02B0($a0)           ## 000002B0
/* 0028C 80A01EBC AC8D02C8 */  sw      $t5, 0x02C8($a0)           ## 000002C8
/* 00290 80A01EC0 E48A02B4 */  swc1    $f10, 0x02B4($a0)          ## 000002B4
/* 00294 80A01EC4 E49002B8 */  swc1    $f16, 0x02B8($a0)          ## 000002B8
/* 00298 80A01EC8 03E00008 */  jr      $ra                        
/* 0029C 80A01ECC E4920168 */  swc1    $f18, 0x0168($a0)          ## 00000168