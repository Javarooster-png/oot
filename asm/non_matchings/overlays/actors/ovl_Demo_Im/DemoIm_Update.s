.rdata
glabel D_80988944
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel DemoIm_Update
/* 02790 80987370 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02794 80987374 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02798 80987378 8C820260 */  lw      $v0, 0x0260($a0)           ## 00000260
/* 0279C 8098737C 04400008 */  bltz    $v0, .L809873A0            
/* 027A0 80987380 2841001F */  slti    $at, $v0, 0x001F           
/* 027A4 80987384 10200006 */  beq     $at, $zero, .L809873A0     
/* 027A8 80987388 00027080 */  sll     $t6, $v0,  2               
/* 027AC 8098738C 3C038099 */  lui     $v1, %hi(D_8098875C)       ## $v1 = 80990000
/* 027B0 80987390 006E1821 */  addu    $v1, $v1, $t6              
/* 027B4 80987394 8C63875C */  lw      $v1, %lo(D_8098875C)($v1)  
/* 027B8 80987398 14600006 */  bne     $v1, $zero, .L809873B4     
/* 027BC 8098739C 00000000 */  nop
.L809873A0:
/* 027C0 809873A0 3C048099 */  lui     $a0, %hi(D_80988944)       ## $a0 = 80990000
/* 027C4 809873A4 0C00084C */  jal     osSyncPrintf
              
/* 027C8 809873A8 24848944 */  addiu   $a0, $a0, %lo(D_80988944)  ## $a0 = 80988944
/* 027CC 809873AC 10000004 */  beq     $zero, $zero, .L809873C0   
/* 027D0 809873B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809873B4:
/* 027D4 809873B4 0060F809 */  jalr    $ra, $v1                   
/* 027D8 809873B8 00000000 */  nop
/* 027DC 809873BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809873C0:
/* 027E0 809873C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 027E4 809873C4 03E00008 */  jr      $ra                        
/* 027E8 809873C8 00000000 */  nop