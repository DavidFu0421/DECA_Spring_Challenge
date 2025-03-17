module twos_complement (
    input bit [3:0] in,  // 4位输入二进制数
    output bit [3:0] out  // 4位输出补码
);

    // 补码 = 取反 + 1
    assign out = (~in) + 4'b0001;

endmodule