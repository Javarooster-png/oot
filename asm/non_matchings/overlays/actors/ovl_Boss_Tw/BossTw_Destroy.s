glabel BossTw_Destroy
/* 01208 80939ED8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0120C 80939EDC AFA40018 */  sw      $a0, 0x0018($sp)
/* 01210 80939EE0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 01214 80939EE4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01218 80939EE8 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0121C 80939EEC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01220 80939EF0 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 01224 80939EF4 24A505AC */  addiu   $a1, $a1, 0x05AC           ## $a1 = 000005AC
/* 01228 80939EF8 8FA30018 */  lw      $v1, 0x0018($sp)
/* 0122C 80939EFC 8462001C */  lh      $v0, 0x001C($v1)           ## 0000001C
/* 01230 80939F00 24640568 */  addiu   $a0, $v1, 0x0568           ## $a0 = 00000568
/* 01234 80939F04 28410064 */  slti    $at, $v0, 0x0064
/* 01238 80939F08 50200006 */  beql    $at, $zero, .L80939F24
/* 0123C 80939F0C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01240 80939F10 0C0295BC */  jal     SkelAnime_Free
/* 01244 80939F14 8FA5001C */  lw      $a1, 0x001C($sp)
/* 01248 80939F18 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 0124C 80939F1C 85C2001C */  lh      $v0, 0x001C($t6)           ## 0000001C
/* 01250 80939F20 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80939F24:
/* 01254 80939F24 14410002 */  bne     $v0, $at, .L80939F30
/* 01258 80939F28 3C018095 */  lui     $at, %hi(D_8094A89C)       ## $at = 80950000
/* 0125C 80939F2C A020A89C */  sb      $zero, %lo(D_8094A89C)($at)
.L80939F30:
/* 01260 80939F30 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01264 80939F34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01268 80939F38 03E00008 */  jr      $ra
/* 0126C 80939F3C 00000000 */  nop