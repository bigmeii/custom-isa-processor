# Instruction Set

```
0x00: nop
```

## Register Arithmetic

```
0x01: add     rd, rs, rt
0x02: sub     rd, rs, rt

0x03: and     rd, rs, rt
0x04: or      rd, rs, rt
0x05: xor     rd, rs, rt

0x06: slt     rd, rs, rt    #signed

0x07: sll     rd, rs, rt    #rd <- rs << rt[4:0]
0x08: srl     rd, rs, rt    #rd <- rs >> rt[4:0]
0x09: sra     rd, rs, rt    #rd <- rs >>> rt[4:0]
```

## Immediate Arithmetic
Using 16-bit immediate value `X`:

```
0x10: addi    rd, rs, X     #sign-extended imm.

0x11: andi    rd, rs, X     #zero-extended imm.
0x12: ori     rd, rs, X
0x13: xori    rd, rs, X
```

## Constant Construction

```
0x14: LUI     rd, X
```

## Memory

```
0x20: ldw     rd, X(rs)
```
address = rs + signed-extended X  
rd <- Mem32[address]  

```
0x21: stw     rt, X(rs)
```
address = rs + signed-extended X  
Mem32[address] <- rt  

**Address must be word (4-bytes) aligned**


## Control Flow

```
0x22: beq       rs, rt, label 
0x23: bne       rs, rt, label
0x24: blt       rs, rt, label     #signed
```
PC <- PC + 4 + (sign-extended imm16 << 2)  

```
0x25: call      label
```
ra <- PC + 4  
PC <- PC + 4 + (sign-extended imm26 << 2)  

```
0x26: jump      X(rs)     
```
PC <- rs + sign-extended imm16  
