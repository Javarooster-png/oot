glabel func_8096F808
/* 02358 8096F808 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0235C 8096F80C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02360 8096F810 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02364 8096F814 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02368 8096F818 0C25B743 */  jal     func_8096DD0C              
/* 0236C 8096F81C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02370 8096F820 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 02374 8096F824 24C600F0 */  addiu   $a2, $a2, 0x00F0           ## $a2 = 060000F0
/* 02378 8096F828 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0237C 8096F82C 0C25B5CA */  jal     func_8096D728              
/* 02380 8096F830 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02384 8096F834 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02388 8096F838 0C25B76F */  jal     func_8096DDBC              
/* 0238C 8096F83C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02390 8096F840 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02394 8096F844 24A50CD8 */  addiu   $a1, $a1, 0x0CD8           ## $a1 = 06000CD8
/* 02398 8096F848 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0239C 8096F84C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 023A0 8096F850 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 023A4 8096F854 0C25B5E7 */  jal     func_8096D79C              
/* 023A8 8096F858 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 023AC 8096F85C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023B0 8096F860 0C25B575 */  jal     func_8096D5D4              
/* 023B4 8096F864 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 023B8 8096F868 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 023BC 8096F86C 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 023C0 8096F870 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 023C4 8096F874 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 023C8 8096F878 0C00AC78 */  jal     ActorShape_Init
              
/* 023CC 8096F87C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 023D0 8096F880 240E0016 */  addiu   $t6, $zero, 0x0016         ## $t6 = 00000016
/* 023D4 8096F884 240F0011 */  addiu   $t7, $zero, 0x0011         ## $t7 = 00000011
/* 023D8 8096F888 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 023DC 8096F88C AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 023E0 8096F890 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 023E4 8096F894 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 023E8 8096F898 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 023EC 8096F89C 03E00008 */  jr      $ra                        
/* 023F0 8096F8A0 00000000 */  nop