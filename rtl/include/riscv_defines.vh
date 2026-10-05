// riscv_defines.vh
// Shared constants for the RV32I core: opcodes, funct3/funct7 fields,
// and the internal ALU operation encoding.

`ifndef RISCV_DEFINES_VH
`define RISCV_DEFINES_VH

// General
`define XLEN            32
`define REG_ADDR_WIDTH  5
`define RESET_PC        32'h0000_0000

// Opcodes (instr[6:0]) 
`define OPCODE_LUI      7'b0110111
`define OPCODE_AUIPC    7'b0010111
`define OPCODE_JAL      7'b1101111
`define OPCODE_JALR     7'b1100111
`define OPCODE_BRANCH   7'b1100011
`define OPCODE_LOAD     7'b0000011
`define OPCODE_STORE    7'b0100011
`define OPCODE_OP_IMM   7'b0010011
`define OPCODE_OP       7'b0110011
`define OPCODE_MISC_MEM 7'b0001111  // FENCE
`define OPCODE_SYSTEM   7'b1110011  // ECALL / EBREAK

 
// funct3 (instr[14:12])
// Branches
`define F3_BEQ          3'b000
`define F3_BNE          3'b001
`define F3_BLT          3'b100
`define F3_BGE          3'b101
`define F3_BLTU         3'b110
`define F3_BGEU         3'b111

// Loads
`define F3_LB           3'b000
`define F3_LH           3'b001
`define F3_LW           3'b010
`define F3_LBU          3'b100
`define F3_LHU          3'b101

// Stores
`define F3_SB           3'b000
`define F3_SH           3'b001
`define F3_SW           3'b010

// Arithmetic / logic (OP and OP_IMM)
`define F3_ADD_SUB      3'b000
`define F3_SLL          3'b001
`define F3_SLT          3'b010
`define F3_SLTU         3'b011
`define F3_XOR          3'b100
`define F3_SRL_SRA      3'b101
`define F3_OR           3'b110
`define F3_AND          3'b111

 
// funct7 (instr[31:25])
`define F7_DEFAULT      7'b0000000
`define F7_SUB_SRA      7'b0100000

 
// ALU operations (internal encoding, driven by alu_control)
`define ALU_OP_WIDTH    4

`define ALU_ADD         4'b0000
`define ALU_SUB         4'b0001
`define ALU_AND         4'b0010
`define ALU_OR          4'b0011
`define ALU_XOR         4'b0100
`define ALU_SLL         4'b0101
`define ALU_SRL         4'b0110
`define ALU_SRA         4'b0111
`define ALU_SLT         4'b1000
`define ALU_SLTU        4'b1001
`define ALU_PASS_B      4'b1010

`endif // RISCV_DEFINES_VH
