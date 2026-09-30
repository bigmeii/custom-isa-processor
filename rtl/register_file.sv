module register_file (
    input   logic clk,
    input   logic write_enable,

    input   logic [4:0] rd_addr,
    input   logic [31:0] rd_data,

    input   logic [4:0] rs_addr,
    input   logic [4:0] rt_addr,
    
    output  logic [31:0] rs_data,
    output  logic [31:0] rt_data
);
    logic [31:0] registers [0:31]; //32x 32-bit registers

    //reads combinational
    always_comb begin : rf_read
        rs_data = (rs_addr == 5'd0) ? 32'd0 : registers[rs_addr];
        rt_data = (rt_addr == 5'd0) ? 32'd0 : registers[rt_addr];
    end
 

    always_ff @(posedge clk) begin : if_write //writes clocked (synchronous)
        if (write_enable && (rd_addr != 5'd0)) begin
            registers[rd_addr] <= rd_data;
        end
    end
endmodule
