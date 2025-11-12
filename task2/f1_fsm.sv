module f1_fsm (
    input   logic       rst,
    input   logic       en,
    input   logic       clk,
    output  logic [7:0] data_out
);

always_ff @(posedge rst or negedge clk) begin
    if(rst)
        data_out <= 8'b0;
    else if(en) begin
        case (data_out)
            8'b0:
                data_out <= 8'b1;
            8'b1:
                data_out <= 8'b11;
            8'b11:
                data_out <= 8'b111;
            8'b111:
                data_out <= 8'b1111; 
            8'b1111:
                data_out <= 8'b11111;
            8'b11111:
                data_out <= 8'b111111;
            8'b111111:
                data_out <= 8'b1111111;
            8'b1111111:
                data_out <= 8'b11111111;
            8'b11111111:
                data_out <= 8'b0;
        endcase
    end
end

endmodule