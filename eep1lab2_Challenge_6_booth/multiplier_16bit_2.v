module multiplier_16bit_2 (
    input bit [15:0] A,
    input bit [15:0] B,
    output bit [31:0] Product
);

always_comb begin
    Product = A * B;
end

endmodule
