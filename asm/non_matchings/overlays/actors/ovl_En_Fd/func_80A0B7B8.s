.late_rodata
glabel D_80A0E1A0
 .word 0x43360B61

.text
glabel func_80A0B7B8
/* 000F8 80A0B7B8 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 000FC 80A0B7BC AFB20054 */  sw      $s2, 0x0054($sp)           
/* 00100 80A0B7C0 00069400 */  sll     $s2, $a2, 16               
/* 00104 80A0B7C4 AFA70074 */  sw      $a3, 0x0074($sp)           
/* 00108 80A0B7C8 00073C00 */  sll     $a3, $a3, 16               
/* 0010C 80A0B7CC 00129403 */  sra     $s2, $s2, 16               
/* 00110 80A0B7D0 AFB30058 */  sw      $s3, 0x0058($sp)           
/* 00114 80A0B7D4 AFB10050 */  sw      $s1, 0x0050($sp)           
/* 00118 80A0B7D8 AFB0004C */  sw      $s0, 0x004C($sp)           
/* 0011C 80A0B7DC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00120 80A0B7E0 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00124 80A0B7E4 00073C03 */  sra     $a3, $a3, 16               
/* 00128 80A0B7E8 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 0012C 80A0B7EC AFB50060 */  sw      $s5, 0x0060($sp)           
/* 00130 80A0B7F0 AFB4005C */  sw      $s4, 0x005C($sp)           
/* 00134 80A0B7F4 F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00138 80A0B7F8 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 0013C 80A0B7FC F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 00140 80A0B800 AFA60070 */  sw      $a2, 0x0070($sp)           
/* 00144 80A0B804 1A400028 */  blez    $s2, .L80A0B8A8            
/* 00148 80A0B808 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0014C 80A0B80C 3C0180A1 */  lui     $at, %hi(D_80A0E1A0)       ## $at = 80A10000
/* 00150 80A0B810 44922000 */  mtc1    $s2, $f4                   ## $f4 = 0.00
/* 00154 80A0B814 C438E1A0 */  lwc1    $f24, %lo(D_80A0E1A0)($at) 
/* 00158 80A0B818 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 0015C 80A0B81C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 360.00
/* 00160 80A0B820 24B41C24 */  addiu   $s4, $a1, 0x1C24           ## $s4 = 00001C24
/* 00164 80A0B824 0007ABC0 */  sll     $s5, $a3, 15               
/* 00168 80A0B828 46802520 */  cvt.s.w $f20, $f4                  
/* 0016C 80A0B82C 44903000 */  mtc1    $s0, $f6                   ## $f6 = 0.00
.L80A0B830:
/* 00170 80A0B830 8628008A */  lh      $t0, 0x008A($s1)           ## 0000008A
/* 00174 80A0B834 02B04825 */  or      $t1, $s5, $s0              ## $t1 = 00000000
/* 00178 80A0B838 46803220 */  cvt.s.w $f8, $f6                   
/* 0017C 80A0B83C C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 00180 80A0B840 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001C24
/* 00184 80A0B844 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00188 80A0B848 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0018C 80A0B84C 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 00190 80A0B850 46164282 */  mul.s   $f10, $f8, $f22            
/* 00194 80A0B854 C6280028 */  lwc1    $f8, 0x0028($s1)           ## 00000028
/* 00198 80A0B858 240700A3 */  addiu   $a3, $zero, 0x00A3         ## $a3 = 000000A3
/* 0019C 80A0B85C E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 001A0 80A0B860 46145403 */  div.s   $f16, $f10, $f20           
/* 001A4 80A0B864 C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 001A8 80A0B868 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 001AC 80A0B86C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 001B0 80A0B870 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 001B4 80A0B874 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 001B8 80A0B878 46188482 */  mul.s   $f18, $f16, $f24           
/* 001BC 80A0B87C 4600910D */  trunc.w.s $f4, $f18                  
/* 001C0 80A0B880 44192000 */  mfc1    $t9, $f4                   
/* 001C4 80A0B884 00000000 */  nop
/* 001C8 80A0B888 03281021 */  addu    $v0, $t9, $t0              
/* 001CC 80A0B88C 00021400 */  sll     $v0, $v0, 16               
/* 001D0 80A0B890 00021403 */  sra     $v0, $v0, 16               
/* 001D4 80A0B894 0C00C916 */  jal     Actor_SpawnAttached
              
/* 001D8 80A0B898 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 001DC 80A0B89C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 001E0 80A0B8A0 5612FFE3 */  bnel    $s0, $s2, .L80A0B830       
/* 001E4 80A0B8A4 44903000 */  mtc1    $s0, $f6                   ## $f6 = 0.00
.L80A0B8A8:
/* 001E8 80A0B8A8 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 001EC 80A0B8AC D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 001F0 80A0B8B0 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 001F4 80A0B8B4 D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 001F8 80A0B8B8 8FB0004C */  lw      $s0, 0x004C($sp)           
/* 001FC 80A0B8BC 8FB10050 */  lw      $s1, 0x0050($sp)           
/* 00200 80A0B8C0 8FB20054 */  lw      $s2, 0x0054($sp)           
/* 00204 80A0B8C4 8FB30058 */  lw      $s3, 0x0058($sp)           
/* 00208 80A0B8C8 8FB4005C */  lw      $s4, 0x005C($sp)           
/* 0020C 80A0B8CC 8FB50060 */  lw      $s5, 0x0060($sp)           
/* 00210 80A0B8D0 03E00008 */  jr      $ra                        
/* 00214 80A0B8D4 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000