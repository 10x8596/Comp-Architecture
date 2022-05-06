.syntax unified
.global main

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Setting/Clearing pins 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ reset DIR and OUT on all led
.type set_bit_0x50000000_0x514, %function
set_bit_0x50000000_0x514:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P0
  ldr r1, =0x50000000

  @ load r2 with the value of P0 DIRECTION register
  ldr r2, [r1, 0x514]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b1
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P0 DIR
  str r2, [r1, 0x514]
  pop {lr}
  bx lr
.size set_bit_0x50000000_0x514, . - set_bit_0x50000000_0x514
.type clear_bit_0x50000000_0x514, %function
clear_bit_0x50000000_0x514:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P0
  ldr r1, =0x50000000

  @ load r2 with the value of P0 DIR
  ldr r2, [r1, 0x514]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b0
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P0 DIR
  str r2, [r1, 0x514]
  pop {lr}
  bx lr
.size clear_bit_0x50000000_0x514, . - clear_bit_0x50000000_0x514
.type set_bit_0x50000300_0x514, %function
set_bit_0x50000300_0x514:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P0
  ldr r1, =0x50000300

  @ load r2 with the value of P0 DIR
  ldr r2, [r1, 0x514]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b1
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P0 DIR
  str r2, [r1, 0x514]
  pop {lr}
  bx lr
.size set_bit_0x50000300_0x514, . - set_bit_0x50000300_0x514
.type clear_bit_0x50000300_0x514, %function
clear_bit_0x50000300_0x514:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P0
  ldr r1, =0x50000300

  @ load r2 with the value of P0 DIR
  ldr r2, [r1, 0x514]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b0
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P0 DIR
  str r2, [r1, 0x514]
  pop {lr}
  bx lr
.size clear_bit_0x50000300_0x514, . - clear_bit_0x50000300_0x514
@ row light on / col light off
.type set_bit_0x50000000_0x504, %function
set_bit_0x50000000_0x504:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P0
  ldr r1, =0x50000000

  @ load r2 with the value of P0 DIR
  ldr r2, [r1, 0x504]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b1
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P0 DIR
  str r2, [r1, 0x504]
  pop {lr}
  bx lr
.size set_bit_0x50000000_0x504, . - set_bit_0x50000000_0x504
@ row light off / col light on
.type clear_bit_0x50000000_0x504, %function
clear_bit_0x50000000_0x504:
  nop
  push {lr}
  @ load r1 with the base address of P0
  ldr r1, =0x50000000

  @ load r2 with the value of P0 OUT
  ldr r2, [r1, 0x504]

  @ set bit r0 of this register by doing a logical or with 0b1 left-shifted by r0
  mov r3, 0b0
  lsl r3, r3, r0
  and r2, r2, r3

  @ store the modified result back into P0 DIR
  str r2, [r1, 0x504]
  
  mov r6, #0x20000
  bl delay
  pop {lr}
  bx lr
.size clear_bit_0x50000000_0x504, . - clear_bit_0x50000000_0x504
@ column 4 light on
.type set_bit_0x50000300_0x504, %function
set_bit_0x50000300_0x504:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P1
  ldr r1, =0x50000300

  @ load r2 with the value of P1 DIR
  ldr r2, [r1, 0x504]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b0
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P1 DIR
  str r2, [r1, 0x504]
  pop {lr}
  bx lr
.size set_bit_0x50000300_0x504, . - set_bit_0x50000300_0x504
@ column 4 light off
.type clear_bit_0x50000300_0x504, %function 
clear_bit_0x50000300_0x504:
  nop
  @ Setting direction of pin to output
  nop
  push {lr}
  @ load r1 with the base address of P1
  ldr r1, =0x50000300

  @ load r2 with the value of P1 DIR
  ldr r2, [r1, 0x504]

  @ set bit r0 of this register by doing a logical OR with 0b1 left-shifted by r0
  mov r3, 0b1
  lsl r3, r3, r0
  orr r2, r2, r3

  @ store the modified result back into P1 DIR
  str r2, [r1, 0x504]
  pop {lr}
  bx lr
.size clear_bit_0x50000300_0x504, . - clear_bit_0x50000300_0x504

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Blink instructions (for LED light show)
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.type blink, %function
blink:
  nop
  push {lr}
  blinks:
    @ decrement r6
    subs r6, r6, #1
    @ if value not zero, loop. else exit loop
    bne blinks
    bl clear_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size blink, . - blink

.type delay, %function
delay:
  nop
  push {lr}
  delays:
    subs r6, r6, #1
    @ if value not zero, loop. else exit loop
    bne delays
  pop {lr}
  bx lr
.size delay, . - delay

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Main instructions
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.type main, %function
main:
  nop
  @ Store 10,000 in r4 and decrement by 1.
  mov r4, #10000
  @ begin while loop @ (while r4 is not 0, keep looping)
  while_loop: 
    @ compare and check if the conditions are met.
   
    @ condition 1 (divisible by 1) @//////////////////////////////////////////////
    @ let r5 = 1 and r8 = result
    mov r5, #1
    @ check if divisible by 1 
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq first_branch
    
    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 2 (divisible by 2) @//////////////////////////////////////////////
    @ let r5 = 2 and r8 = result
    mov r5, #2

    @ check if divisible by 2
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq second_branch

    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 3 (divisible by 3) @//////////////////////////////////////////////
    @ let r5 = 3 and r8 = result
    mov r5, #3

    @ check if divisible by 3
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq third_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 4 (divisible by 4) @//////////////////////////////////////////////
    @ let r5 = 4 and r8 = result
    mov r5, #4

    @ check if divisible by 4
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq fourth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 5 (divisible by 5) @//////////////////////////////////////////////
    @ let r5 = 5 and r8 = result
    mov r5, #5

    @ check if divisible by 5
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq fifth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 6 (divisible by 6) @//////////////////////////////////////////////
    @ let r5 = 6 and r8 = result
    mov r5, #6

    @ check if divisible by 6
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq sixth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 7 (divisible by 7) @//////////////////////////////////////////////
    @ let r5 = 7 and r8 = result
    mov r5, #7

    @ check if divisible by 7
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq seventh_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 8 (divisible by 8) @//////////////////////////////////////////////
    @ let r5 = 8 and r8 = result
    mov r5, #8

    @ check if divisible by 8
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq eighth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 9 (divisible by 9) @//////////////////////////////////////////////
    @ let r5 = 9 and r8 = result
    mov r5, #9

    @ check if divisible by 9
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq ninth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 10 (divisible by 10) @////////////////////////////////////////////
    @ let r5 = 10 and r8 = result
    mov r5, #10

    @ check if divisible by 10
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq tenth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 11 (divisible by 11) @////////////////////////////////////////////
    @ let r5 = 11 and r8 = result
    mov r5, #11

    @ check if divisible by 11
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq eleventh_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ condition 12 (divisible by 12) @////////////////////////////////////////////
    @ let r5 = 12 and r8 = result
    mov r5, #12

    @ check if divisible by 12
    sdiv r8, r4, r5
    mul r8, r8, r5
    subs r8, r4, r8
    cmp r8, #0
    @ if true then branch
    IT EQ
    bleq twelfth_branch

    @ else continue ...
    @ blink / delay
    mov r0, #21
    mov r6, #0x20000 
    bl blink @////////////////////////////////////////////////////////////////////

    @ loop again
    subs r4, r4, #1
    cmp r4, #0
    bne while_loop

  b main
.size main, . - main

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ LED light show design
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.type first, %function
first:
  nop
  push {lr}
  @ set rows DIRECTION
  mov r0, #21
  bl set_bit_0x50000000_0x514
  mov r0, #22
  bl set_bit_0x50000000_0x514
  mov r0, #15
  bl set_bit_0x50000000_0x514
  mov r0, #24
  bl set_bit_0x50000000_0x514
  mov r0, #19
  bl set_bit_0x50000000_0x514
  @ @ set cols DIRECTION
  mov r0, #28
  bl set_bit_0x50000000_0x514
  mov r0, #31
  bl set_bit_0x50000000_0x514
  mov r0, #30
  bl set_bit_0x50000000_0x514
  mov r0, #11
  bl set_bit_0x50000000_0x514
  mov r0, #05
  bl set_bit_0x50000300_0x514

  @ @ light on!
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504

  pop {lr}
  bx lr
.size first, . - first

.type second, %function
second:
  nop
  push {lr}
  @ clear row
  mov r0, #15
  bl clear_bit_0x50000000_0x504

  @ light on!
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504

  pop {lr}
  bx lr
.size second, . - second

.type third, %function
third:  
  nop
  push {lr}
  @ cols off
  mov r0, #28
  bl set_bit_0x50000000_0x504
  mov r0, #30
  bl set_bit_0x50000000_0x504

  @ light on!
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size third, . - third

.type fourth, %function
fourth:
  nop
  push {lr}
  @ cols off
  mov r0, #28
  bl set_bit_0x50000000_0x504
  mov r0, #11
  bl set_bit_0x50000000_0x504
  mov r0, #30
  bl set_bit_0x50000000_0x504

  @ turn light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504

  pop {lr}
  bx lr
.size fourth, . - fourth
 
.type fifth, %function
fifth:
  nop
  push {lr}
  @ cols off
  mov r0, #31
  bl set_bit_0x50000000_0x504
  mov r0, #30
  bl set_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size fifth, . - fifth

.type sixth, %function
sixth:
  nop
  push {lr}
  @ cols off
  mov r0, #28
  bl set_bit_0x50000000_0x504
  mov r0, #31
  bl set_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size sixth, . - sixth

.type seventh, %function
seventh:
  nop
  push {lr}
  @ cols off
  mov r0, #31
  bl set_bit_0x50000000_0x504
  @ rows off
  mov r0, #15
  bl clear_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size seventh, . - seventh

.type eighth, %function
eighth:
  nop
  push {lr}
  @ cols on
  mov r0, #28
  bl clear_bit_0x50000000_0x504
  mov r0, #11
  bl clear_bit_0x50000000_0x504
  mov r0, #31
  bl clear_bit_0x50000000_0x504
  mov r0, #30
  bl clear_bit_0x50000000_0x504

  @ rows off
  mov r0, #22
  bl clear_bit_0x50000000_0x504
  mov r0, #24
  bl clear_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size eighth, . - eighth

.type ninth, %function
ninth:
  nop
  push {lr}
  @ cols off
  mov r0, #28
  bl set_bit_0x50000000_0x504
  mov r0, #30
  bl set_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr 
.size ninth, . - ninth

.type tenth, %function
tenth:
  nop
  push {lr}
  @ cols off
  mov r0, #28
  bl set_bit_0x50000000_0x504
  mov r0, #30
  bl set_bit_0x50000000_0x504

  @ rows off
  mov r0, #21
  bl clear_bit_0x50000000_0x504
  mov r0, #19
  bl clear_bit_0x50000000_0x504

  @ light on
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504

  pop {lr}
  bx lr
.size tenth, . - tenth

.type eleventh, %function
eleventh:
  nop
  push {lr}
  @ cols off
  mov r0, #28
  bl set_bit_0x50000000_0x504
  mov r0, #30
  bl set_bit_0x50000000_0x504
  mov r0, #31
  bl set_bit_0x50000000_0x504

  @ cols on 
  mov r0, #11
  bl clear_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #22
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #24
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504

  pop {lr}
  bx lr
.size eleventh, . - eleventh

.type twelfth, %function
twelfth:
  nop
  push {lr}
  @ cols off
  mov r0, #31
  bl set_bit_0x50000000_0x504
  @ rows off
  mov r0, #22
  bl clear_bit_0x50000000_0x504
  mov r0, #24
  bl clear_bit_0x50000000_0x504

  @ light on
  mov r0, #21
  bl set_bit_0x50000000_0x504
  mov r0, #15
  bl set_bit_0x50000000_0x504
  mov r0, #19
  bl set_bit_0x50000000_0x504
  pop {lr}
  bx lr
.size twelfth, . - twelfth

first_branch:
  push {lr}
  bl first
  pop {lr}
  bx lr
second_branch:
  push {lr}
  bl second
  pop {lr}
  bx lr
third_branch:
  push {lr}
  bl third
  pop {lr}
  bx lr
fourth_branch:
  push {lr}
  bl fourth
  pop {lr}
  bx lr

fifth_branch:
  nop
  push {lr}
  bl fifth
  pop {lr}
  bx lr
sixth_branch:
  nop
  push {lr}
  bl sixth
  pop {lr}
  bx lr
seventh_branch:
  nop
  push {lr}
  bl seventh
  pop {lr}
  bx lr
eighth_branch:
  nop
  push {lr}
  bl eighth
  pop {lr}
  bx lr
ninth_branch:
  nop
  push {lr}
  bl ninth
  pop {lr}
  bx lr



tenth_branch:
  nop
  push {lr}
  bl tenth
  pop {lr}
  bx lr
eleventh_branch:
  nop
  push {lr}
  bl eleventh
  pop {lr}
  bx lr
twelfth_branch:
  nop
  push {lr}
  bl twelfth
  pop {lr}
  bx lr
.data
hello:
.word 0x424242