glabel EnIn_Update
/* 02160 80A7B110 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02164 80A7B114 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02168 80A7B118 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0216C 80A7B11C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02170 80A7B120 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 02174 80A7B124 3C0E80A8 */  lui     $t6, %hi(func_80A79FB0)    ## $t6 = 80A80000
/* 02178 80A7B128 25CE9FB0 */  addiu   $t6, $t6, %lo(func_80A79FB0) ## $t6 = 80A79FB0
/* 0217C 80A7B12C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02180 80A7B130 15C20005 */  bne     $t6, $v0, .L80A7B148       
/* 02184 80A7B134 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02188 80A7B138 0040F809 */  jalr    $ra, $v0                   
/* 0218C 80A7B13C 00000000 */  nop
/* 02190 80A7B140 10000073 */  beq     $zero, $zero, .L80A7B310   
/* 02194 80A7B144 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7B148:
/* 02198 80A7B148 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 0219C 80A7B14C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 021A0 80A7B150 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 021A4 80A7B154 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 021A8 80A7B158 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021AC 80A7B15C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 021B0 80A7B160 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 021B4 80A7B164 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 021B8 80A7B168 02212821 */  addu    $a1, $s1, $at              
/* 021BC 80A7B16C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 021C0 80A7B170 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 021C4 80A7B174 3C0F80A8 */  lui     $t7, %hi(func_80A7A304)    ## $t7 = 80A80000
/* 021C8 80A7B178 25EFA304 */  addiu   $t7, $t7, %lo(func_80A7A304) ## $t7 = 80A7A304
/* 021CC 80A7B17C AFAF0030 */  sw      $t7, 0x0030($sp)           
/* 021D0 80A7B180 8E180190 */  lw      $t8, 0x0190($s0)           ## 00000190
/* 021D4 80A7B184 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 021D8 80A7B188 11F8001A */  beq     $t7, $t8, .L80A7B1F4       
/* 021DC 80A7B18C 00000000 */  nop
/* 021E0 80A7B190 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 021E4 80A7B194 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 021E8 80A7B198 8E080154 */  lw      $t0, 0x0154($s0)           ## 00000154
/* 021EC 80A7B19C 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 021F0 80A7B1A0 27391BE0 */  addiu   $t9, $t9, 0x1BE0           ## $t9 = 06001BE0
/* 021F4 80A7B1A4 1728000A */  bne     $t9, $t0, .L80A7B1D0       
/* 021F8 80A7B1A8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 021FC 80A7B1AC 3C098016 */  lui     $t1, %hi(gSaveContext+0x13fa)
/* 02200 80A7B1B0 9529FA5A */  lhu     $t1, %lo(gSaveContext+0x13fa)($t1)
/* 02204 80A7B1B4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02208 80A7B1B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0220C 80A7B1BC 312A000F */  andi    $t2, $t1, 0x000F           ## $t2 = 00000000
/* 02210 80A7B1C0 51410004 */  beql    $t2, $at, .L80A7B1D4       
/* 02214 80A7B1C4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02218 80A7B1C8 0C29E5A4 */  jal     func_80A79690              
/* 0221C 80A7B1CC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
.L80A7B1D0:
/* 02220 80A7B1D0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A7B1D4:
/* 02224 80A7B1D4 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 02228 80A7B1D8 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 0222C 80A7B1DC 44060000 */  mfc1    $a2, $f0                   
/* 02230 80A7B1E0 44070000 */  mfc1    $a3, $f0                   
/* 02234 80A7B1E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02238 80A7B1E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0223C 80A7B1EC 0C00B92D */  jal     func_8002E4B4              
/* 02240 80A7B1F0 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80A7B1F4:
/* 02244 80A7B1F4 0C29E68B */  jal     func_80A79A2C              
/* 02248 80A7B1F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0224C 80A7B1FC 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 02250 80A7B200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02254 80A7B204 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02258 80A7B208 0320F809 */  jalr    $ra, $t9                   
/* 0225C 80A7B20C 00000000 */  nop
/* 02260 80A7B210 8FAC0030 */  lw      $t4, 0x0030($sp)           
/* 02264 80A7B214 8E0D0190 */  lw      $t5, 0x0190($s0)           ## 00000190
/* 02268 80A7B218 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0226C 80A7B21C 518D003C */  beql    $t4, $t5, .L80A7B310       
/* 02270 80A7B220 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02274 80A7B224 0C29E6AD */  jal     func_80A79AB4              
/* 02278 80A7B228 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0227C 80A7B22C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x13d4)
/* 02280 80A7B230 85CEFA34 */  lh      $t6, %lo(gSaveContext+0x13d4)($t6)
/* 02284 80A7B234 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x13d2)
/* 02288 80A7B238 29C10006 */  slti    $at, $t6, 0x0006           
/* 0228C 80A7B23C 5020000F */  beql    $at, $zero, .L80A7B27C     
/* 02290 80A7B240 8208001F */  lb      $t0, 0x001F($s0)           ## 0000001F
/* 02294 80A7B244 85EFFA32 */  lh      $t7, %lo(gSaveContext+0x13d2)($t7)
/* 02298 80A7B248 51E0000C */  beql    $t7, $zero, .L80A7B27C     
/* 0229C 80A7B24C 8208001F */  lb      $t0, 0x001F($s0)           ## 0000001F
/* 022A0 80A7B250 86180308 */  lh      $t8, 0x0308($s0)           ## 00000308
/* 022A4 80A7B254 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022A8 80A7B258 57000008 */  bnel    $t8, $zero, .L80A7B27C     
/* 022AC 80A7B25C 8208001F */  lb      $t0, 0x001F($s0)           ## 0000001F
/* 022B0 80A7B260 0C00BC65 */  jal     func_8002F194              
/* 022B4 80A7B264 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 022B8 80A7B268 50400026 */  beql    $v0, $zero, .L80A7B304     
/* 022BC 80A7B26C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022C0 80A7B270 10000024 */  beq     $zero, $zero, .L80A7B304   
/* 022C4 80A7B274 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022C8 80A7B278 8208001F */  lb      $t0, 0x001F($s0)           ## 0000001F
.L80A7B27C:
/* 022CC 80A7B27C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 022D0 80A7B280 15010004 */  bne     $t0, $at, .L80A7B294       
/* 022D4 80A7B284 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 022D8 80A7B288 44810000 */  mtc1    $at, $f0                   ## $f0 = 80.00
/* 022DC 80A7B28C 10000005 */  beq     $zero, $zero, .L80A7B2A4   
/* 022E0 80A7B290 860901D4 */  lh      $t1, 0x01D4($s0)           ## 000001D4
.L80A7B294:
/* 022E4 80A7B294 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 022E8 80A7B298 44810000 */  mtc1    $at, $f0                   ## $f0 = 320.00
/* 022EC 80A7B29C 00000000 */  nop
/* 022F0 80A7B2A0 860901D4 */  lh      $t1, 0x01D4($s0)           ## 000001D4
.L80A7B2A4:
/* 022F4 80A7B2A4 3C0A80A8 */  lui     $t2, %hi(func_80A79168)    ## $t2 = 80A80000
/* 022F8 80A7B2A8 3C0B80A8 */  lui     $t3, %hi(func_80A79500)    ## $t3 = 80A80000
/* 022FC 80A7B2AC 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 02300 80A7B2B0 256B9500 */  addiu   $t3, $t3, %lo(func_80A79500) ## $t3 = 80A79500
/* 02304 80A7B2B4 254A9168 */  addiu   $t2, $t2, %lo(func_80A79168) ## $t2 = 80A79168
/* 02308 80A7B2B8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0230C 80A7B2BC AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02310 80A7B2C0 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 02314 80A7B2C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02318 80A7B2C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0231C 80A7B2CC 26060308 */  addiu   $a2, $s0, 0x0308           ## $a2 = 00000308
/* 02320 80A7B2D0 46060200 */  add.s   $f8, $f0, $f6              
/* 02324 80A7B2D4 44074000 */  mfc1    $a3, $f8                   
/* 02328 80A7B2D8 0C00D0F3 */  jal     func_800343CC              
/* 0232C 80A7B2DC 00000000 */  nop
/* 02330 80A7B2E0 86190308 */  lh      $t9, 0x0308($s0)           ## 00000308
/* 02334 80A7B2E4 53200007 */  beql    $t9, $zero, .L80A7B304     
/* 02338 80A7B2E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0233C 80A7B2EC 860C01F8 */  lh      $t4, 0x01F8($s0)           ## 000001F8
/* 02340 80A7B2F0 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 02344 80A7B2F4 0C042F6F */  jal     func_8010BDBC              
/* 02348 80A7B2F8 A60C01FA */  sh      $t4, 0x01FA($s0)           ## 000001FA
/* 0234C 80A7B2FC A60201F8 */  sh      $v0, 0x01F8($s0)           ## 000001F8
/* 02350 80A7B300 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A7B304:
/* 02354 80A7B304 0C29E572 */  jal     func_80A795C8              
/* 02358 80A7B308 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0235C 80A7B30C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7B310:
/* 02360 80A7B310 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02364 80A7B314 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02368 80A7B318 03E00008 */  jr      $ra                        
/* 0236C 80A7B31C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000