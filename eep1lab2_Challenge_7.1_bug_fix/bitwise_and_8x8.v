module bitwise_and_8x8 (
    input  bit [15:0] A,
    input  bit [15:0] B,
    output bit [15:0] Y
);

// 8-bit bitwise AND operation
assign Y = A & B;

endmodule
