glabel func_80971070
/* 00120 80971070 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00124 80971074 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00128 80971078 3C0E8097 */  lui     $t6, %hi(func_809761C4)    ## $t6 = 80970000
/* 0012C 8097107C 3C0F8097 */  lui     $t7, %hi(func_80971BBC)    ## $t7 = 80970000
/* 00130 80971080 25CE61C4 */  addiu   $t6, $t6, %lo(func_809761C4) ## $t6 = 809761C4
/* 00134 80971084 25EF1BBC */  addiu   $t7, $t7, %lo(func_80971BBC) ## $t7 = 80971BBC
/* 00138 80971088 A0800184 */  sb      $zero, 0x0184($a0)         ## 00000184
/* 0013C 8097108C A0800185 */  sb      $zero, 0x0185($a0)         ## 00000185
/* 00140 80971090 AC8E0198 */  sw      $t6, 0x0198($a0)           ## 00000198
/* 00144 80971094 AC8F0194 */  sw      $t7, 0x0194($a0)           ## 00000194
/* 00148 80971098 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0014C 8097109C 0C00B58B */  jal     Actor_SetScale
              
/* 00150 809710A0 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 00154 809710A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00158 809710A8 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 0015C 809710AC A498018C */  sh      $t8, 0x018C($a0)           ## 0000018C
/* 00160 809710B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00164 809710B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00168 809710B8 03E00008 */  jr      $ra                        
/* 0016C 809710BC 00000000 */  nop