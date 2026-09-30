package cpu_pkg;

    parameter int XLEN = 32;
    parameter int REG_COUNT = 32;
    parameter int REG_ADDR_W = 5;

    typedef enum logic [5:0] {
        OP_NOP  = 6'h00,

        //Register arithmetic
        OP_ADD  = 6'h01,
        OP_SUB  = 6'h02,
        OP_AND  = 6'h03,
        OP_OR   = 6'h04,
        OP_XOR  = 6'h05,
        OP_SLT  = 6'h06,
        OP_SLL  = 6'h07,
        OP_SRL  = 6'h08,
        OP_SRA  = 6'h09,

        //Immediate arithmetic
        OP_ADDI = 6'h10,
        OP_ANDI = 6'h11,
        OP_ORI  = 6'h12,
        OP_XORI = 6'h13,

        //Constant construction
        OP_LUI  = 6'h14,

        //Memory
        OP_LDW  = 6'h20,
        OP_STW  = 6'h21,

        //Control flow
        OP_BEQ  = 6'h22,
        OP_BNE  = 6'h23,
        OP_BLT  = 6'h24,
        OP_CALL = 6'h25,
        OP_JUMP = 6'h26
    } opcode_t;

endpackage
