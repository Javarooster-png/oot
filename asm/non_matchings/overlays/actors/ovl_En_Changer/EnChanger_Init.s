.rdata
glabel D_809D3180
    .asciz "\n\n"
    .balign 4

glabel D_809D3184
    .asciz "[32m☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n[m"
    .balign 4

glabel D_809D31B0
    .asciz "[32m☆☆☆☆☆ ビットは？ 	     %x\n[m"
    .balign 4

glabel D_809D31D8
    .asciz "[32m☆☆☆☆☆ セーブＢＩＴは？     %x\n[m"
    .balign 4

glabel D_809D3204
    .asciz "[32m☆☆☆☆☆ もう、ゾンビ？	     %d\n[m"
    .balign 4

glabel D_809D3230
    .asciz "\n\n"
    .balign 4

glabel D_809D3234
    .asciz "[33m☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809D3270
    .asciz "[35m☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809D32B4
    .asciz "[35m☆☆☆☆☆ 部屋番号は？  %x\n[m"
    .balign 4

glabel D_809D32DC
    .asciz "[35m☆☆☆☆☆ ビットはなぁに？  %x\n[m"
    .balign 4

glabel D_809D3308
    .asciz "[35m☆☆☆☆☆ すけすけ君？ %x\n[m"
    .balign 4

glabel D_809D332C
    .asciz "\n\n"
    .balign 4

glabel D_809D3330
    .asciz "[36m☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809D3374
    .asciz "[36m☆☆☆☆☆ 部屋番号は？  %d\n[m"
    .balign 4

glabel D_809D339C
    .asciz "[36m☆☆☆☆☆ ビットはなぁに？  %x\n[m"
    .balign 4

glabel D_809D33C8
    .asciz "[36m☆☆☆☆☆ すけすけ君？ %x\n[m"
    .balign 4

glabel D_809D33EC
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel D_809D3448
 .word 0xC51C4000
glabel D_809D344C
 .word 0xC51C4000
glabel D_809D3450
    .float 1.99000000954

.text
glabel EnChanger_Init
/* 0000C 809D269C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00010 809D26A0 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00014 809D26A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00018 809D26A8 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 0001C 809D26AC AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00020 809D26B0 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00024 809D26B4 00A19021 */  addu    $s2, $a1, $at              
/* 00028 809D26B8 82431CBC */  lb      $v1, 0x1CBC($s2)           ## 00001CBC
/* 0002C 809D26BC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00030 809D26C0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00034 809D26C4 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 00038 809D26C8 00031C00 */  sll     $v1, $v1, 16               
/* 0003C 809D26CC 00031C03 */  sra     $v1, $v1, 16               
/* 00040 809D26D0 04610002 */  bgez    $v1, .L809D26DC            
/* 00044 809D26D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00048 809D26D8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809D26DC:
/* 0004C 809D26DC 3C0F809D */  lui     $t7, %hi(D_809D3160)       ## $t7 = 809D0000
/* 00050 809D26E0 25EF3160 */  addiu   $t7, $t7, %lo(D_809D3160)  ## $t7 = 809D3160
/* 00054 809D26E4 00037080 */  sll     $t6, $v1,  2               
/* 00058 809D26E8 01CF1021 */  addu    $v0, $t6, $t7              
/* 0005C 809D26EC 8C450000 */  lw      $a1, 0x0000($v0)           ## 00000000
/* 00060 809D26F0 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 00064 809D26F4 0C00B32C */  jal     Flags_GetTreasure
              
/* 00068 809D26F8 A7A30068 */  sh      $v1, 0x0068($sp)           
/* 0006C 809D26FC 10400003 */  beq     $v0, $zero, .L809D270C     
/* 00070 809D2700 87A30068 */  lh      $v1, 0x0068($sp)           
/* 00074 809D2704 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00078 809D2708 A6380168 */  sh      $t8, 0x0168($s1)           ## 00000168
.L809D270C:
/* 0007C 809D270C 3C04809D */  lui     $a0, %hi(D_809D3180)       ## $a0 = 809D0000
/* 00080 809D2710 24843180 */  addiu   $a0, $a0, %lo(D_809D3180)  ## $a0 = 809D3180
/* 00084 809D2714 0C00084C */  jal     osSyncPrintf
              
/* 00088 809D2718 A7A30068 */  sh      $v1, 0x0068($sp)           
/* 0008C 809D271C 3C04809D */  lui     $a0, %hi(D_809D3184)       ## $a0 = 809D0000
/* 00090 809D2720 24843184 */  addiu   $a0, $a0, %lo(D_809D3184)  ## $a0 = 809D3184
/* 00094 809D2724 0C00084C */  jal     osSyncPrintf
              
/* 00098 809D2728 82451CBC */  lb      $a1, 0x1CBC($s2)           ## 00001CBC
/* 0009C 809D272C 3C04809D */  lui     $a0, %hi(D_809D31B0)       ## $a0 = 809D0000
/* 000A0 809D2730 248431B0 */  addiu   $a0, $a0, %lo(D_809D31B0)  ## $a0 = 809D31B0
/* 000A4 809D2734 0C00084C */  jal     osSyncPrintf
              
/* 000A8 809D2738 8E051D38 */  lw      $a1, 0x1D38($s0)           ## 00001D38
/* 000AC 809D273C 8FB90054 */  lw      $t9, 0x0054($sp)           
/* 000B0 809D2740 3C04809D */  lui     $a0, %hi(D_809D31D8)       ## $a0 = 809D0000
/* 000B4 809D2744 248431D8 */  addiu   $a0, $a0, %lo(D_809D31D8)  ## $a0 = 809D31D8
/* 000B8 809D2748 0C00084C */  jal     osSyncPrintf
              
/* 000BC 809D274C 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 000C0 809D2750 3C04809D */  lui     $a0, %hi(D_809D3204)       ## $a0 = 809D0000
/* 000C4 809D2754 24843204 */  addiu   $a0, $a0, %lo(D_809D3204)  ## $a0 = 809D3204
/* 000C8 809D2758 0C00084C */  jal     osSyncPrintf
              
/* 000CC 809D275C 86250168 */  lh      $a1, 0x0168($s1)           ## 00000168
/* 000D0 809D2760 3C04809D */  lui     $a0, %hi(D_809D3230)       ## $a0 = 809D0000
/* 000D4 809D2764 0C00084C */  jal     osSyncPrintf
              
/* 000D8 809D2768 24843230 */  addiu   $a0, $a0, %lo(D_809D3230)  ## $a0 = 809D3230
/* 000DC 809D276C 87A30068 */  lh      $v1, 0x0068($sp)           
/* 000E0 809D2770 82491CBC */  lb      $t1, 0x1CBC($s2)           ## 00001CBC
/* 000E4 809D2774 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xef2)
/* 000E8 809D2778 00031840 */  sll     $v1, $v1,  1               
/* 000EC 809D277C 00031C00 */  sll     $v1, $v1, 16               
/* 000F0 809D2780 29210006 */  slti    $at, $t1, 0x0006           
/* 000F4 809D2784 14200053 */  bne     $at, $zero, .L809D28D4     
/* 000F8 809D2788 00031C03 */  sra     $v1, $v1, 16               
/* 000FC 809D278C 954AF552 */  lhu     $t2, %lo(gSaveContext+0xef2)($t2)
/* 00100 809D2790 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00104 809D2794 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00108 809D2798 314B0800 */  andi    $t3, $t2, 0x0800           ## $t3 = 00000000
/* 0010C 809D279C 11600003 */  beq     $t3, $zero, .L809D27AC     
/* 00110 809D27A0 3C0D809D */  lui     $t5, %hi(D_809D3174)       ## $t5 = 809D0000
/* 00114 809D27A4 10000004 */  beq     $zero, $zero, .L809D27B8   
/* 00118 809D27A8 24024EA0 */  addiu   $v0, $zero, 0x4EA0         ## $v0 = 00004EA0
.L809D27AC:
/* 0011C 809D27AC 240C4EC0 */  addiu   $t4, $zero, 0x4EC0         ## $t4 = 00004EC0
/* 00120 809D27B0 A7AC006A */  sh      $t4, 0x006A($sp)           
/* 00124 809D27B4 24024EC0 */  addiu   $v0, $zero, 0x4EC0         ## $v0 = 00004EC0
.L809D27B8:
/* 00128 809D27B8 8DAD3174 */  lw      $t5, %lo(D_809D3174)($t5)  
/* 0012C 809D27BC 3C01809D */  lui     $at, %hi(D_809D3448)       ## $at = 809D0000
/* 00130 809D27C0 C4243448 */  lwc1    $f4, %lo(D_809D3448)($at)  
/* 00134 809D27C4 01A21025 */  or      $v0, $t5, $v0              ## $v0 = 809D4EC0
/* 00138 809D27C8 00021400 */  sll     $v0, $v0, 16               
/* 0013C 809D27CC 00021403 */  sra     $v0, $v0, 16               
/* 00140 809D27D0 26041C24 */  addiu   $a0, $s0, 0x1C24           ## $a0 = 00001C24
/* 00144 809D27D4 240E7FFF */  addiu   $t6, $zero, 0x7FFF         ## $t6 = 00007FFF
/* 00148 809D27D8 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 0014C 809D27DC AFA4004C */  sw      $a0, 0x004C($sp)           
/* 00150 809D27E0 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00154 809D27E4 A7A2006A */  sh      $v0, 0x006A($sp)           
/* 00158 809D27E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0015C 809D27EC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00160 809D27F0 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 00164 809D27F4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00168 809D27F8 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 0016C 809D27FC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00170 809D2800 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00174 809D2804 A7A30068 */  sh      $v1, 0x0068($sp)           
/* 00178 809D2808 0C00C916 */  jal     Actor_SpawnAttached
              
/* 0017C 809D280C E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 00180 809D2810 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00184 809D2814 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00188 809D2818 87A30068 */  lh      $v1, 0x0068($sp)           
/* 0018C 809D281C 1040002D */  beq     $v0, $zero, .L809D28D4     
/* 00190 809D2820 AE220158 */  sw      $v0, 0x0158($s1)           ## 00000158
/* 00194 809D2824 862F0168 */  lh      $t7, 0x0168($s1)           ## 00000168
/* 00198 809D2828 3C188016 */  lui     $t8, %hi(gSaveContext+0xef2)
/* 0019C 809D282C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 001A0 809D2830 11E00009 */  beq     $t7, $zero, .L809D2858     
/* 001A4 809D2834 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001A8 809D2838 87A5006A */  lh      $a1, 0x006A($sp)           
/* 001AC 809D283C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B0 809D2840 0C00B331 */  jal     Flags_SetTreasure
              
/* 001B4 809D2844 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 001B8 809D2848 0C00B55C */  jal     Actor_Kill
              
/* 001BC 809D284C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C0 809D2850 10000119 */  beq     $zero, $zero, .L809D2CB8   
/* 001C4 809D2854 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L809D2858:
/* 001C8 809D2858 9718F552 */  lhu     $t8, %lo(gSaveContext+0xef2)($t8)
/* 001CC 809D285C 44070000 */  mfc1    $a3, $f0                   
/* 001D0 809D2860 2406010F */  addiu   $a2, $zero, 0x010F         ## $a2 = 0000010F
/* 001D4 809D2864 33190800 */  andi    $t9, $t8, 0x0800           ## $t9 = 00000000
/* 001D8 809D2868 13200003 */  beq     $t9, $zero, .L809D2878     
/* 001DC 809D286C 3C01809D */  lui     $at, %hi(D_809D344C)       ## $at = 809D0000
/* 001E0 809D2870 10000002 */  beq     $zero, $zero, .L809D287C   
/* 001E4 809D2874 2402000B */  addiu   $v0, $zero, 0x000B         ## $v0 = 0000000B
.L809D2878:
/* 001E8 809D2878 2402000C */  addiu   $v0, $zero, 0x000C         ## $v0 = 0000000C
.L809D287C:
/* 001EC 809D287C 3C09809D */  lui     $t1, %hi(D_809D3174)       ## $t1 = 809D0000
/* 001F0 809D2880 8D293174 */  lw      $t1, %lo(D_809D3174)($t1)  
/* 001F4 809D2884 C426344C */  lwc1    $f6, %lo(D_809D344C)($at)  
/* 001F8 809D2888 304C00FF */  andi    $t4, $v0, 0x00FF           ## $t4 = 0000000C
/* 001FC 809D288C 312A001F */  andi    $t2, $t1, 0x001F           ## $t2 = 00000000
/* 00200 809D2890 000A5A00 */  sll     $t3, $t2,  8               
/* 00204 809D2894 016C6821 */  addu    $t5, $t3, $t4              
/* 00208 809D2898 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 0020C 809D289C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00210 809D28A0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00214 809D28A4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00218 809D28A8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0021C 809D28AC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00220 809D28B0 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00224 809D28B4 3C04809D */  lui     $a0, %hi(D_809D3234)       ## $a0 = 809D0000
/* 00228 809D28B8 24843234 */  addiu   $a0, $a0, %lo(D_809D3234)  ## $a0 = 809D3234
/* 0022C 809D28BC 0C00084C */  jal     osSyncPrintf
              
/* 00230 809D28C0 87A5006A */  lh      $a1, 0x006A($sp)           
/* 00234 809D28C4 3C0E809D */  lui     $t6, %hi(func_809D2F74)    ## $t6 = 809D0000
/* 00238 809D28C8 25CE2F74 */  addiu   $t6, $t6, %lo(func_809D2F74) ## $t6 = 809D2F74
/* 0023C 809D28CC 100000F9 */  beq     $zero, $zero, .L809D2CB4   
/* 00240 809D28D0 AE2E014C */  sw      $t6, 0x014C($s1)           ## 0000014C
.L809D28D4:
/* 00244 809D28D4 824F1CBC */  lb      $t7, 0x1CBC($s2)           ## 00001CBC
/* 00248 809D28D8 3C06809D */  lui     $a2, %hi(D_809D3130)       ## $a2 = 809D0000
/* 0024C 809D28DC 24C63130 */  addiu   $a2, $a2, %lo(D_809D3130)  ## $a2 = 809D3130
/* 00250 809D28E0 000FC080 */  sll     $t8, $t7,  2               
/* 00254 809D28E4 00D8C821 */  addu    $t9, $a2, $t8              
/* 00258 809D28E8 8F220000 */  lw      $v0, 0x0000($t9)           ## 00000000
/* 0025C 809D28EC A623015C */  sh      $v1, 0x015C($s1)           ## 0000015C
/* 00260 809D28F0 82491CBC */  lb      $t1, 0x1CBC($s2)           ## 00001CBC
/* 00264 809D28F4 3C0F809D */  lui     $t7, %hi(D_809D3148)       ## $t7 = 809D0000
/* 00268 809D28F8 34644E21 */  ori     $a0, $v1, 0x4E21           ## $a0 = 00004E21
/* 0026C 809D28FC 00095080 */  sll     $t2, $t1,  2               
/* 00270 809D2900 00CA5821 */  addu    $t3, $a2, $t2              
/* 00274 809D2904 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 00278 809D2908 34650001 */  ori     $a1, $v1, 0x0001           ## $a1 = 00000001
/* 0027C 809D290C 24180071 */  addiu   $t8, $zero, 0x0071         ## $t8 = 00000071
/* 00280 809D2910 A62C0160 */  sh      $t4, 0x0160($s1)           ## 00000160
/* 00284 809D2914 824D1CBC */  lb      $t5, 0x1CBC($s2)           ## 00001CBC
/* 00288 809D2918 A7A4006C */  sh      $a0, 0x006C($sp)           
/* 0028C 809D291C 00021140 */  sll     $v0, $v0,  5               
/* 00290 809D2920 000D7080 */  sll     $t6, $t5,  2               
/* 00294 809D2924 01EE7821 */  addu    $t7, $t7, $t6              
/* 00298 809D2928 8DEF3148 */  lw      $t7, %lo(D_809D3148)($t7)  
/* 0029C 809D292C 34424000 */  ori     $v0, $v0, 0x4000           ## $v0 = 00004000
/* 002A0 809D2930 00021400 */  sll     $v0, $v0, 16               
/* 002A4 809D2934 A7AF0064 */  sh      $t7, 0x0064($sp)           
/* 002A8 809D2938 A625015E */  sh      $a1, 0x015E($s1)           ## 0000015E
/* 002AC 809D293C A6380162 */  sh      $t8, 0x0162($s1)           ## 00000162
/* 002B0 809D2940 00021403 */  sra     $v0, $v0, 16               
/* 002B4 809D2944 00431025 */  or      $v0, $v0, $v1              ## $v0 = 00004000
/* 002B8 809D2948 00021400 */  sll     $v0, $v0, 16               
/* 002BC 809D294C 00021403 */  sra     $v0, $v0, 16               
/* 002C0 809D2950 2419000D */  addiu   $t9, $zero, 0x000D         ## $t9 = 0000000D
/* 002C4 809D2954 26091C24 */  addiu   $t1, $s0, 0x1C24           ## $t1 = 00001C24
/* 002C8 809D2958 3C01809D */  lui     $at, %hi(D_809D3450)       ## $at = 809D0000
/* 002CC 809D295C A7B90066 */  sh      $t9, 0x0066($sp)           
/* 002D0 809D2960 C42C3450 */  lwc1    $f12, %lo(D_809D3450)($at) 
/* 002D4 809D2964 AFA9004C */  sw      $t1, 0x004C($sp)           
/* 002D8 809D2968 A7A2006E */  sh      $v0, 0x006E($sp)           
/* 002DC 809D296C AFA50050 */  sw      $a1, 0x0050($sp)           
/* 002E0 809D2970 AFA40054 */  sw      $a0, 0x0054($sp)           
/* 002E4 809D2974 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 002E8 809D2978 A7A30068 */  sh      $v1, 0x0068($sp)           
/* 002EC 809D297C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 002F0 809D2980 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 002F4 809D2984 3C06809D */  lui     $a2, %hi(D_809D3130)       ## $a2 = 809D0000
/* 002F8 809D2988 24C63130 */  addiu   $a2, $a2, %lo(D_809D3130)  ## $a2 = 809D3130
/* 002FC 809D298C 4608003C */  c.lt.s  $f0, $f8                   
/* 00300 809D2990 87A30068 */  lh      $v1, 0x0068($sp)           
/* 00304 809D2994 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00308 809D2998 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 0030C 809D299C 4500001F */  bc1f    .L809D2A1C                 
/* 00310 809D29A0 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 00314 809D29A4 824A1CBC */  lb      $t2, 0x1CBC($s2)           ## 00001CBC
/* 00318 809D29A8 000A5880 */  sll     $t3, $t2,  2               
/* 0031C 809D29AC 00CB6021 */  addu    $t4, $a2, $t3              
/* 00320 809D29B0 8D880000 */  lw      $t0, 0x0000($t4)           ## 00000000
/* 00324 809D29B4 A623015E */  sh      $v1, 0x015E($s1)           ## 0000015E
/* 00328 809D29B8 824D1CBC */  lb      $t5, 0x1CBC($s2)           ## 00001CBC
/* 0032C 809D29BC 3C0A809D */  lui     $t2, %hi(D_809D3148)       ## $t2 = 809D0000
/* 00330 809D29C0 00084140 */  sll     $t0, $t0,  5               
/* 00334 809D29C4 000D7080 */  sll     $t6, $t5,  2               
/* 00338 809D29C8 00CE7821 */  addu    $t7, $a2, $t6              
/* 0033C 809D29CC 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00340 809D29D0 35084000 */  ori     $t0, $t0, 0x4000           ## $t0 = 00004000
/* 00344 809D29D4 00084400 */  sll     $t0, $t0, 16               
/* 00348 809D29D8 A6380162 */  sh      $t8, 0x0162($s1)           ## 00000162
/* 0034C 809D29DC 82591CBC */  lb      $t9, 0x1CBC($s2)           ## 00001CBC
/* 00350 809D29E0 00084403 */  sra     $t0, $t0, 16               
/* 00354 809D29E4 A7A4006E */  sh      $a0, 0x006E($sp)           
/* 00358 809D29E8 00194880 */  sll     $t1, $t9,  2               
/* 0035C 809D29EC 01495021 */  addu    $t2, $t2, $t1              
/* 00360 809D29F0 8D4A3148 */  lw      $t2, %lo(D_809D3148)($t2)  
/* 00364 809D29F4 01034025 */  or      $t0, $t0, $v1              ## $t0 = 00004000
/* 00368 809D29F8 240B0071 */  addiu   $t3, $zero, 0x0071         ## $t3 = 00000071
/* 0036C 809D29FC A7AA0066 */  sh      $t2, 0x0066($sp)           
/* 00370 809D2A00 00084400 */  sll     $t0, $t0, 16               
/* 00374 809D2A04 A625015C */  sh      $a1, 0x015C($s1)           ## 0000015C
/* 00378 809D2A08 A62B0160 */  sh      $t3, 0x0160($s1)           ## 00000160
/* 0037C 809D2A0C 00084403 */  sra     $t0, $t0, 16               
/* 00380 809D2A10 240C000D */  addiu   $t4, $zero, 0x000D         ## $t4 = 0000000D
/* 00384 809D2A14 A7AC0064 */  sh      $t4, 0x0064($sp)           
/* 00388 809D2A18 A7A8006C */  sh      $t0, 0x006C($sp)           
.L809D2A1C:
/* 0038C 809D2A1C 824D1CBC */  lb      $t5, 0x1CBC($s2)           ## 00001CBC
/* 00390 809D2A20 3C0F809D */  lui     $t7, %hi(D_809D30A0)       ## $t7 = 809D0000
/* 00394 809D2A24 25EF30A0 */  addiu   $t7, $t7, %lo(D_809D30A0)  ## $t7 = 809D30A0
/* 00398 809D2A28 000D7080 */  sll     $t6, $t5,  2               
/* 0039C 809D2A2C 01CD7023 */  subu    $t6, $t6, $t5              
/* 003A0 809D2A30 000E7080 */  sll     $t6, $t6,  2               
/* 003A4 809D2A34 01CF1021 */  addu    $v0, $t6, $t7              
/* 003A8 809D2A38 C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 00000000
/* 003AC 809D2A3C C4500004 */  lwc1    $f16, 0x0004($v0)          ## 00000004
/* 003B0 809D2A40 C4520008 */  lwc1    $f18, 0x0008($v0)          ## 00000008
/* 003B4 809D2A44 87B9006E */  lh      $t9, 0x006E($sp)           
/* 003B8 809D2A48 2418C001 */  addiu   $t8, $zero, 0xC001         ## $t8 = FFFFC001
/* 003BC 809D2A4C AFB80020 */  sw      $t8, 0x0020($sp)           
/* 003C0 809D2A50 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 003C4 809D2A54 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 003C8 809D2A58 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 003CC 809D2A5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 003D0 809D2A60 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003D4 809D2A64 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 003D8 809D2A68 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 003DC 809D2A6C E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 003E0 809D2A70 0C00C916 */  jal     Actor_SpawnAttached
              
/* 003E4 809D2A74 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 003E8 809D2A78 10400036 */  beq     $v0, $zero, .L809D2B54     
/* 003EC 809D2A7C AE220150 */  sw      $v0, 0x0150($s1)           ## 00000150
/* 003F0 809D2A80 3C04809D */  lui     $a0, %hi(D_809D3270)       ## $a0 = 809D0000
/* 003F4 809D2A84 24843270 */  addiu   $a0, $a0, %lo(D_809D3270)  ## $a0 = 809D3270
/* 003F8 809D2A88 0C00084C */  jal     osSyncPrintf
              
/* 003FC 809D2A8C 87A5006E */  lh      $a1, 0x006E($sp)           
/* 00400 809D2A90 3C04809D */  lui     $a0, %hi(D_809D32B4)       ## $a0 = 809D0000
/* 00404 809D2A94 248432B4 */  addiu   $a0, $a0, %lo(D_809D32B4)  ## $a0 = 809D32B4
/* 00408 809D2A98 0C00084C */  jal     osSyncPrintf
              
/* 0040C 809D2A9C 82451CBC */  lb      $a1, 0x1CBC($s2)           ## 00001CBC
/* 00410 809D2AA0 3C04809D */  lui     $a0, %hi(D_809D32DC)       ## $a0 = 809D0000
/* 00414 809D2AA4 248432DC */  addiu   $a0, $a0, %lo(D_809D32DC)  ## $a0 = 809D32DC
/* 00418 809D2AA8 0C00084C */  jal     osSyncPrintf
              
/* 0041C 809D2AAC 8625015E */  lh      $a1, 0x015E($s1)           ## 0000015E
/* 00420 809D2AB0 3C04809D */  lui     $a0, %hi(D_809D3308)       ## $a0 = 809D0000
/* 00424 809D2AB4 24843308 */  addiu   $a0, $a0, %lo(D_809D3308)  ## $a0 = 809D3308
/* 00428 809D2AB8 0C00084C */  jal     osSyncPrintf
              
/* 0042C 809D2ABC 87A50066 */  lh      $a1, 0x0066($sp)           
/* 00430 809D2AC0 3C04809D */  lui     $a0, %hi(D_809D332C)       ## $a0 = 809D0000
/* 00434 809D2AC4 0C00084C */  jal     osSyncPrintf
              
/* 00438 809D2AC8 2484332C */  addiu   $a0, $a0, %lo(D_809D332C)  ## $a0 = 809D332C
/* 0043C 809D2ACC 86290168 */  lh      $t1, 0x0168($s1)           ## 00000168
/* 00440 809D2AD0 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00444 809D2AD4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00448 809D2AD8 11200007 */  beq     $t1, $zero, .L809D2AF8     
/* 0044C 809D2ADC 2406010F */  addiu   $a2, $zero, 0x010F         ## $a2 = 0000010F
/* 00450 809D2AE0 8625015C */  lh      $a1, 0x015C($s1)           ## 0000015C
/* 00454 809D2AE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00458 809D2AE8 0C00B331 */  jal     Flags_SetTreasure
              
/* 0045C 809D2AEC 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 00460 809D2AF0 10000019 */  beq     $zero, $zero, .L809D2B58   
/* 00464 809D2AF4 824A1CBC */  lb      $t2, 0x1CBC($s2)           ## 00001CBC
.L809D2AF8:
/* 00468 809D2AF8 824A1CBC */  lb      $t2, 0x1CBC($s2)           ## 00001CBC
/* 0046C 809D2AFC 3C0C809D */  lui     $t4, %hi(D_809D30A0)       ## $t4 = 809D0000
/* 00470 809D2B00 258C30A0 */  addiu   $t4, $t4, %lo(D_809D30A0)  ## $t4 = 809D30A0
/* 00474 809D2B04 000A5880 */  sll     $t3, $t2,  2               
/* 00478 809D2B08 016A5823 */  subu    $t3, $t3, $t2              
/* 0047C 809D2B0C 000B5880 */  sll     $t3, $t3,  2               
/* 00480 809D2B10 016C1021 */  addu    $v0, $t3, $t4              
/* 00484 809D2B14 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 00000004
/* 00488 809D2B18 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 0048C 809D2B1C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00490 809D2B20 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00494 809D2B24 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00498 809D2B28 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0049C 809D2B2C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 004A0 809D2B30 862D015C */  lh      $t5, 0x015C($s1)           ## 0000015C
/* 004A4 809D2B34 87B80064 */  lh      $t8, 0x0064($sp)           
/* 004A8 809D2B38 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000000
/* 004AC 809D2B3C 31AE001F */  andi    $t6, $t5, 0x001F           ## $t6 = 00000000
/* 004B0 809D2B40 000E7A00 */  sll     $t7, $t6,  8               
/* 004B4 809D2B44 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 004B8 809D2B48 01F94821 */  addu    $t1, $t7, $t9              
/* 004BC 809D2B4C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 004C0 809D2B50 AFA90024 */  sw      $t1, 0x0024($sp)           
.L809D2B54:
/* 004C4 809D2B54 824A1CBC */  lb      $t2, 0x1CBC($s2)           ## 00001CBC
.L809D2B58:
/* 004C8 809D2B58 3C0C809D */  lui     $t4, %hi(D_809D30E8)       ## $t4 = 809D0000
/* 004CC 809D2B5C 258C30E8 */  addiu   $t4, $t4, %lo(D_809D30E8)  ## $t4 = 809D30E8
/* 004D0 809D2B60 000A5880 */  sll     $t3, $t2,  2               
/* 004D4 809D2B64 016A5823 */  subu    $t3, $t3, $t2              
/* 004D8 809D2B68 000B5880 */  sll     $t3, $t3,  2               
/* 004DC 809D2B6C 016C1021 */  addu    $v0, $t3, $t4              
/* 004E0 809D2B70 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
/* 004E4 809D2B74 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00000004
/* 004E8 809D2B78 C4500008 */  lwc1    $f16, 0x0008($v0)          ## 00000008
/* 004EC 809D2B7C 87AE006C */  lh      $t6, 0x006C($sp)           
/* 004F0 809D2B80 240D3FFF */  addiu   $t5, $zero, 0x3FFF         ## $t5 = 00003FFF
/* 004F4 809D2B84 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 004F8 809D2B88 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 004FC 809D2B8C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00500 809D2B90 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00504 809D2B94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00508 809D2B98 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0050C 809D2B9C 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 00510 809D2BA0 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00514 809D2BA4 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00518 809D2BA8 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 0051C 809D2BAC 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00520 809D2BB0 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00524 809D2BB4 10400038 */  beq     $v0, $zero, .L809D2C98     
/* 00528 809D2BB8 AE220154 */  sw      $v0, 0x0154($s1)           ## 00000154
/* 0052C 809D2BBC 3C04809D */  lui     $a0, %hi(D_809D3330)       ## $a0 = 809D0000
/* 00530 809D2BC0 24843330 */  addiu   $a0, $a0, %lo(D_809D3330)  ## $a0 = 809D3330
/* 00534 809D2BC4 0C00084C */  jal     osSyncPrintf
              
/* 00538 809D2BC8 87A5006C */  lh      $a1, 0x006C($sp)           
/* 0053C 809D2BCC 3C04809D */  lui     $a0, %hi(D_809D3374)       ## $a0 = 809D0000
/* 00540 809D2BD0 24843374 */  addiu   $a0, $a0, %lo(D_809D3374)  ## $a0 = 809D3374
/* 00544 809D2BD4 0C00084C */  jal     osSyncPrintf
              
/* 00548 809D2BD8 82451CBC */  lb      $a1, 0x1CBC($s2)           ## 00001CBC
/* 0054C 809D2BDC 3C04809D */  lui     $a0, %hi(D_809D339C)       ## $a0 = 809D0000
/* 00550 809D2BE0 2484339C */  addiu   $a0, $a0, %lo(D_809D339C)  ## $a0 = 809D339C
/* 00554 809D2BE4 0C00084C */  jal     osSyncPrintf
              
/* 00558 809D2BE8 8625015C */  lh      $a1, 0x015C($s1)           ## 0000015C
/* 0055C 809D2BEC 3C04809D */  lui     $a0, %hi(D_809D33C8)       ## $a0 = 809D0000
/* 00560 809D2BF0 248433C8 */  addiu   $a0, $a0, %lo(D_809D33C8)  ## $a0 = 809D33C8
/* 00564 809D2BF4 0C00084C */  jal     osSyncPrintf
              
/* 00568 809D2BF8 87A50064 */  lh      $a1, 0x0064($sp)           
/* 0056C 809D2BFC 3C04809D */  lui     $a0, %hi(D_809D33EC)       ## $a0 = 809D0000
/* 00570 809D2C00 0C00084C */  jal     osSyncPrintf
              
/* 00574 809D2C04 248433EC */  addiu   $a0, $a0, %lo(D_809D33EC)  ## $a0 = 809D33EC
/* 00578 809D2C08 86380168 */  lh      $t8, 0x0168($s1)           ## 00000168
/* 0057C 809D2C0C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00580 809D2C10 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00584 809D2C14 13000009 */  beq     $t8, $zero, .L809D2C3C     
/* 00588 809D2C18 2406010F */  addiu   $a2, $zero, 0x010F         ## $a2 = 0000010F
/* 0058C 809D2C1C 8625015E */  lh      $a1, 0x015E($s1)           ## 0000015E
/* 00590 809D2C20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00594 809D2C24 0C00B331 */  jal     Flags_SetTreasure
              
/* 00598 809D2C28 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 0059C 809D2C2C 0C00B55C */  jal     Actor_Kill
              
/* 005A0 809D2C30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005A4 809D2C34 10000020 */  beq     $zero, $zero, .L809D2CB8   
/* 005A8 809D2C38 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L809D2C3C:
/* 005AC 809D2C3C 824F1CBC */  lb      $t7, 0x1CBC($s2)           ## 00001CBC
/* 005B0 809D2C40 3C09809D */  lui     $t1, %hi(D_809D30E8)       ## $t1 = 809D0000
/* 005B4 809D2C44 252930E8 */  addiu   $t1, $t1, %lo(D_809D30E8)  ## $t1 = 809D30E8
/* 005B8 809D2C48 000FC880 */  sll     $t9, $t7,  2               
/* 005BC 809D2C4C 032FC823 */  subu    $t9, $t9, $t7              
/* 005C0 809D2C50 0019C880 */  sll     $t9, $t9,  2               
/* 005C4 809D2C54 03291021 */  addu    $v0, $t9, $t1              
/* 005C8 809D2C58 C4520004 */  lwc1    $f18, 0x0004($v0)          ## 00000004
/* 005CC 809D2C5C C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 005D0 809D2C60 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 005D4 809D2C64 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 005D8 809D2C68 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 005DC 809D2C6C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 005E0 809D2C70 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 005E4 809D2C74 862A015E */  lh      $t2, 0x015E($s1)           ## 0000015E
/* 005E8 809D2C78 87AD0066 */  lh      $t5, 0x0066($sp)           
/* 005EC 809D2C7C 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000000
/* 005F0 809D2C80 314B001F */  andi    $t3, $t2, 0x001F           ## $t3 = 00000000
/* 005F4 809D2C84 000B6200 */  sll     $t4, $t3,  8               
/* 005F8 809D2C88 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 005FC 809D2C8C 018EC021 */  addu    $t8, $t4, $t6              
/* 00600 809D2C90 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00604 809D2C94 AFB80024 */  sw      $t8, 0x0024($sp)           
.L809D2C98:
/* 00608 809D2C98 8E2F0004 */  lw      $t7, 0x0004($s1)           ## 00000004
/* 0060C 809D2C9C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00610 809D2CA0 3C09809D */  lui     $t1, %hi(func_809D2CCC)    ## $t1 = 809D0000
/* 00614 809D2CA4 25292CCC */  addiu   $t1, $t1, %lo(func_809D2CCC) ## $t1 = 809D2CCC
/* 00618 809D2CA8 01E1C824 */  and     $t9, $t7, $at              
/* 0061C 809D2CAC AE390004 */  sw      $t9, 0x0004($s1)           ## 00000004
/* 00620 809D2CB0 AE29014C */  sw      $t1, 0x014C($s1)           ## 0000014C
.L809D2CB4:
/* 00624 809D2CB4 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L809D2CB8:
/* 00628 809D2CB8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0062C 809D2CBC 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00630 809D2CC0 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00634 809D2CC4 03E00008 */  jr      $ra                        
/* 00638 809D2CC8 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000