module modified_booth_multiplier (
    input bit [3:0] multiplicand,
    input bit [3:0] multiplier,
    output bit [7:0] product
);

bit [4:0] ext_multiplier;
bit [7:0] pp0, pp1;

always_comb begin
    ext_multiplier = {multiplier, 1'b0};

    // 第一个部分积 (bits [2:0])
    case (ext_multiplier[2:0])
        3'b000, 3'b111: pp0 = 8'b00000000;
        3'b001, 3'b010: pp0 = {4'b0000, multiplicand};
        3'b011: pp0 = {3'b000, multiplicand, 1'b0};
        3'b100: pp0 = (8'b00000000 - {3'b000, multiplicand, 1'b0});
        3'b101, 3'b110: pp0 = (8'b00000000 - {4'b0000, multiplicand});
    endcase

    // 第二个部分积 (bits [4:2])
    case (ext_multiplier[4:2])
        3'b000, 3'b111: pp1 = 8'b00000000;
        3'b001, 3'b010: pp1 = {2'b00, multiplicand, 2'b00};
        3'b011: pp1 = {1'b0, multiplicand, 3'b000};
        3'b100: pp1 = (8'b00000000 - {1'b0, multiplicand, 3'b000});
        3'b101, 3'b110: pp1 = (8'b00000000 - {2'b00, multiplicand, 2'b00});
    endcase

    product = pp0 + pp1;
end

endmodule
