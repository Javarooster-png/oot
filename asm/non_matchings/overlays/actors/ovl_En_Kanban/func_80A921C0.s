glabel func_80A921C0
/* 00220 80A921C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00224 80A921C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00228 80A921C8 908E019C */  lbu     $t6, 0x019C($a0)           ## 0000019C
/* 0022C 80A921CC 15C0001F */  bne     $t6, $zero, .L80A9224C     
/* 00230 80A921D0 00000000 */  nop
/* 00234 80A921D4 9082019D */  lbu     $v0, 0x019D($a0)           ## 0000019D
/* 00238 80A921D8 1440001A */  bne     $v0, $zero, .L80A92244     
/* 0023C 80A921DC 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00240 80A921E0 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 00244 80A921E4 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00248 80A921E8 01F81023 */  subu    $v0, $t7, $t8              
/* 0024C 80A921EC 00021400 */  sll     $v0, $v0, 16               
/* 00250 80A921F0 00021403 */  sra     $v0, $v0, 16               
/* 00254 80A921F4 04400003 */  bltz    $v0, .L80A92204            
/* 00258 80A921F8 00021823 */  subu    $v1, $zero, $v0            
/* 0025C 80A921FC 10000001 */  beq     $zero, $zero, .L80A92204   
/* 00260 80A92200 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A92204:
/* 00264 80A92204 28612800 */  slti    $at, $v1, 0x2800           
/* 00268 80A92208 50200018 */  beql    $at, $zero, .L80A9226C     
/* 0026C 80A9220C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00270 80A92210 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00274 80A92214 0C00BC65 */  jal     func_8002F194              
/* 00278 80A92218 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0027C 80A9221C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00280 80A92220 10400004 */  beq     $v0, $zero, .L80A92234     
/* 00284 80A92224 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00288 80A92228 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0028C 80A9222C 1000000E */  beq     $zero, $zero, .L80A92268   
/* 00290 80A92230 A099019C */  sb      $t9, 0x019C($a0)           ## 0000019C
.L80A92234:
/* 00294 80A92234 0C00BCB3 */  jal     func_8002F2CC              
/* 00298 80A92238 3C064288 */  lui     $a2, 0x4288                ## $a2 = 42880000
/* 0029C 80A9223C 1000000B */  beq     $zero, $zero, .L80A9226C   
/* 002A0 80A92240 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A92244:
/* 002A4 80A92244 10000008 */  beq     $zero, $zero, .L80A92268   
/* 002A8 80A92248 A088019D */  sb      $t0, 0x019D($a0)           ## 0000019D
.L80A9224C:
/* 002AC 80A9224C 0C00BCCD */  jal     func_8002F334              
/* 002B0 80A92250 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002B4 80A92254 10400004 */  beq     $v0, $zero, .L80A92268     
/* 002B8 80A92258 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002BC 80A9225C 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 002C0 80A92260 A080019C */  sb      $zero, 0x019C($a0)         ## 0000019C
/* 002C4 80A92264 A089019D */  sb      $t1, 0x019D($a0)           ## 0000019D
.L80A92268:
/* 002C8 80A92268 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9226C:
/* 002CC 80A9226C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002D0 80A92270 03E00008 */  jr      $ra                        
/* 002D4 80A92274 00000000 */  nop