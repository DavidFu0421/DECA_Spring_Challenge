module multiplier_16bit (
    input bit [15:0] A,
    input bit [15:0] B,
    output bit [31:0] Product
);

// 16-bit multiplication operation
assign Product = A * B;

endmodule
