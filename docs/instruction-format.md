# Instruction Formats

**32-bit instructions**

## R-Type

```
[opcode][ rd  ][ rs  ][ rt  ][  unused  ]
|31  26||25 21||20 16||15 11||10       0|
```
opcode: 6 bits  
rd: 5 bits  
rs: 5 bits  
rt: 5 bits  
unused: 11 bits  

## I-Type

```
[opcode][rd/rt][ rs  ][      imm16     ]
|31  26||25 21||20 16||15             0|
```
opcode: 6 bits  
rd/rt: 5 bits  
rs: 5 bits  
imm: 16 bits  

## J-Type

```
[opcode][          imm26           ]
|31  26||25                       0|
```
opcode: 6 bits  
imm: 26 bits  
