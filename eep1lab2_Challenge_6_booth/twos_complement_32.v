module twos_complement_32(
    input bit [15:0] in,
    output bit [15:0] out
);

    assign out = (~in) + 16'b0001;

endmodule

