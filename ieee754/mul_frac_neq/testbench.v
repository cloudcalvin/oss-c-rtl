

////Auto-generated, don't modify


module mul_impl_tb;

reg[0:0] clk;
reg[31:0] mul_a;
reg[31:0] mul_b;
wire[31:0] mul_z;
reg [31:0] counter;
initial begin
`ifdef DUMPFSDB
$fsdbDumpfile("mul_impl_tb.fsdb");
$fsdbDumpvars(0,mul_impl_tb,"+all");
$fsdbDumpMDA(0, mul_impl_tb);
`else
$dumpfile("mul_impl_tb.vcd");
$dumpvars();
`endif
// clock signals
clk = 1;
counter = 32'h0;
// Make reset active for 3 cycles, clear up the pipe;
@ (negedge clk) begin 
mul_a=0;
mul_b=0;
end
@ (negedge clk) begin 
mul_a=0;
mul_b=0;
end
@ (negedge clk) begin 
mul_a=0;
mul_b=0;
end
//0th round of input
@ (negedge clk) begin 
//register initialization
//#0 DUT.dq_s_1.delay_line[0] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[1] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[2] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[3] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[4] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[5] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[6] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[7] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_1.delay_line[8] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[0] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[1] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[2] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[3] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[4] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[5] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[6] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[7] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_10.delay_line[8] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_108.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_110.delay_line[0] <= 7'b0000000;
//#0 DUT.dq_s_14.delay_line[0] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[1] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[2] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[3] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[4] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[5] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[6] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[7] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_14.delay_line[8] <= 32'b00000000000000000000000000000000;
//#0 DUT.dq_s_19.delay_line[0] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[1] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[2] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[3] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[4] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[5] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[6] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[7] <= 9'b000000000;
//#0 DUT.dq_s_19.delay_line[8] <= 9'b000000000;
//#0 DUT.dq_s_23.delay_line[0] <= 24'b000000000000000000000000;
//#0 DUT.dq_s_27.delay_line[0] <= 25'b0000000000000000000000000;
//#0 DUT.dq_s_31.delay_line[0] <= 48'b000000000000000000000000000000000000000000000000;
//#0 DUT.dq_s_33.delay_line[0] <= 48'b000000000000000000000000000000000000000000000000;
//#0 DUT.dq_s_33.delay_line[1] <= 48'b000000000000000000000000000000000000000000000000;
//#0 DUT.dq_s_34.delay_line[0] <= 48'b000000000000000000000000000000000000000000000000;
//#0 DUT.dq_s_39.delay_line[0] <= 37'b0000000000000000000000000000000000000;
//#0 DUT.dq_s_42.delay_line[0] <= 34'b0000000000000000000000000000000000;
//#0 DUT.dq_s_42.delay_line[1] <= 34'b0000000000000000000000000000000000;
//#0 DUT.dq_s_70.delay_line[0] <= 36'b000000000000000000000000000000000000;
//#0 DUT.dq_s_73.delay_line[0] <= 34'b0000000000000000000000000000000000;
//#0 DUT.dq_s_77.delay_line[0] <= 35'b00000000000000000000000000000000000;
//#0 DUT.dq_s_835.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_835.delay_line[1] <= 10'b0000000000;
//#0 DUT.dq_s_835.delay_line[2] <= 10'b0000000000;
//#0 DUT.dq_s_835.delay_line[3] <= 10'b0000000000;
//#0 DUT.dq_s_837.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_842.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_842.delay_line[1] <= 10'b0000000000;
//#0 DUT.dq_s_842.delay_line[2] <= 10'b0000000000;
//#0 DUT.dq_s_842.delay_line[3] <= 10'b0000000000;
//#0 DUT.dq_s_844.delay_line[0] <= 24'b000000000000000000000000;
//#0 DUT.dq_s_846.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_850.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_852.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_856.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[1] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[2] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[3] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[4] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[5] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[6] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[7] <= 1'b0;
//#0 DUT.dq_s_862.delay_line[8] <= 1'b0;
//#0 DUT.dq_s_865.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_867.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_868.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_870.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_870.delay_line[1] <= 10'b0000000000;
//#0 DUT.dq_s_870.delay_line[2] <= 10'b0000000000;
//#0 DUT.dq_s_870.delay_line[3] <= 10'b0000000000;
//#0 DUT.dq_s_870.delay_line[4] <= 10'b0000000000;
//#0 DUT.dq_s_88.delay_line[0] <= 34'b0000000000000000000000000000000000;
//#0 DUT.dq_s_884.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[1] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[2] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[3] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[4] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[5] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[6] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[7] <= 1'b0;
//#0 DUT.dq_s_884.delay_line[8] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[1] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[2] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[3] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[4] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[5] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[6] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[7] <= 1'b0;
//#0 DUT.dq_s_890.delay_line[8] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[0] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[1] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[2] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[3] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[4] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[5] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[6] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[7] <= 1'b0;
//#0 DUT.dq_s_896.delay_line[8] <= 1'b0;
//#0 DUT.dq_s_91.delay_line[0] <= 17'b00000000000000000;
//#0 DUT.dq_s_91.delay_line[1] <= 17'b00000000000000000;
//#0 DUT.dq_s_93.delay_line[0] <= 10'b0000000000;
//#0 DUT.dq_s_93.delay_line[1] <= 10'b0000000000;
//#0 DUT.dq_s_93.delay_line[2] <= 10'b0000000000;
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 1[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//1th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 2[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//2th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 3[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//3th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 4[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//4th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 5[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//5th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 6[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//6th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 7[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//7th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 8[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//8th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @ 9[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,mul_z,mul_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
end

//9th round of input
@ (negedge clk) begin 
mul_a <= 32'b10101111100001100000111000000011;
mul_b <= 32'b00000110100000011101101101111111;
#1;
$strobe("mul_z                                   @10[time:%t](%20h Vs [ref:32'b10000000000000000000000000001000]) ->%s",$time,mul_z,mul_z==32'b10000000000000000000000000001000 ?"PASS":"FAIL");
end

#100 ;
@ (posedge clk)
$finish;
end


////clock generator
always 
# 10 clk = ~clk;
////cycle counter
always@(posedge clk)begin
counter <= counter + 1;
end


////DUT instantiation
mul DUT(
.clk(clk)
,.mul_a(mul_a)
,.mul_b(mul_b)
,.mul_z(mul_z)
);
endmodule
