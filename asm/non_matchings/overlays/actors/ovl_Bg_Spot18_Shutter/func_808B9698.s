glabel func_808B9698
/* 002C8 808B9698 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002CC 808B969C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D0 808B96A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002D4 808B96A4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002D8 808B96A8 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 002DC 808B96AC 44813000 */  mtc1    $at, $f6                   ## $f6 = 180.00
/* 002E0 808B96B0 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 002E4 808B96B4 3C063FB8 */  lui     $a2, 0x3FB8                ## $a2 = 3FB80000
/* 002E8 808B96B8 34C651EC */  ori     $a2, $a2, 0x51EC           ## $a2 = 3FB851EC
/* 002EC 808B96BC 46062200 */  add.s   $f8, $f4, $f6              
/* 002F0 808B96C0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 002F4 808B96C4 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 002F8 808B96C8 44054000 */  mfc1    $a1, $f8                   
/* 002FC 808B96CC 0C01DE80 */  jal     Math_ApproxF
              
/* 00300 808B96D0 00000000 */  nop
/* 00304 808B96D4 1040000A */  beq     $v0, $zero, .L808B9700     
/* 00308 808B96D8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0030C 808B96DC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00310 808B96E0 24052893 */  addiu   $a1, $zero, 0x2893         ## $a1 = 00002893
/* 00314 808B96E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00318 808B96E8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0031C 808B96EC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00320 808B96F0 3C0E808C */  lui     $t6, %hi(func_808B95AC)    ## $t6 = 808C0000
/* 00324 808B96F4 25CE95AC */  addiu   $t6, $t6, %lo(func_808B95AC) ## $t6 = 808B95AC
/* 00328 808B96F8 10000004 */  beq     $zero, $zero, .L808B970C   
/* 0032C 808B96FC ACEE0164 */  sw      $t6, 0x0164($a3)           ## 00000164
.L808B9700:
/* 00330 808B9700 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00334 808B9704 0C00BE5D */  jal     func_8002F974              
/* 00338 808B9708 2405201E */  addiu   $a1, $zero, 0x201E         ## $a1 = 0000201E
.L808B970C:
/* 0033C 808B970C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00340 808B9710 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00344 808B9714 03E00008 */  jr      $ra                        
/* 00348 808B9718 00000000 */  nop