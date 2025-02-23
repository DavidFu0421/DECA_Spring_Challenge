# Lab 2 Challenge

## 1. Aims
The challenge is to implement additional instruction(s) and/or hardware that can speed up EEP1 register multi
plication. The solutions are limited to no using more than 64 full adders: for example 8 Issie adder blocks of 8 bits each.

## 2. Design Notes
Speeding up EEP1 multiplication requires the definition of additional ALU instructions in the ISA. This
is possible because some combinations of bits in the machine work are not currently used. Specifically the MOV
instruction does not use register C, the three bits specifying this are set to 0 for a normal MOV.
### 2.1 Implementing unused instructions
There are 7 additional MOV instructions, using machine code as for MOV with with nonzero in the c register field
INS(4:2, can be used. The assembler recognises MOVCn Ra Rb where n = 1..7 and generates the correct machine
code. You may use any of these instructions in Lab 2 to interface with additional hardware. For example MOVC1
Ra, Rb could be used to implement Ra := Ra op Rb, where op is some new operation you have defined.
