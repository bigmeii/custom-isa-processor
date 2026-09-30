module instruction_decoder (
    input   logic [31:0] instruction,

    output  cpu_pkg::opcode_t opcode,

    output  logic [4:0] rd,
    output  logic [4:0] rs,
    output  logic [4:0] rt,

    output  logic[15:0] imm16,
    output  logic[25:0] imm26
);
    
    always_comb begin : decoder
        opcode  = cpu_pkg::opcode_t'(instruction[31:26]);

        rd      = instruction[25:21];
        rs      = instruction[20:16];
        rt      = instruction[15:11];

        imm16   = instruction[15:0];
        imm26   = instruction[25:0];
    end
endmodule
