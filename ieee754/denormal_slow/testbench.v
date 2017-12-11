

////Auto-generated, don't modify


module multiplier_impl_tb;

reg[31:0] input_a;
reg[31:0] input_b;
reg[0:0] input_a_stb;
reg[0:0] input_b_stb;
reg[0:0] output_z_ack;
reg[0:0] clk;
reg[0:0] rst;
wire[31:0] output_z;
wire[0:0] output_z_stb;
wire[0:0] input_a_ack;
wire[0:0] input_b_ack;
reg [31:0] counter;
initial begin
`ifdef DUMPFSDB
$fsdbDumpfile("multiplier_impl_tb.fsdb");
$fsdbDumpvars(0,multiplier_impl_tb,"+all");
$fsdbDumpMDA(0, multiplier_impl_tb);
`else
$dumpfile("multiplier_impl_tb.vcd");
$dumpvars();
`endif
// clock signals
clk = 1;
counter = 32'h0;
// Make reset active for 3 cycles, clear up the pipe;
@ (negedge clk) begin 
input_a=0;
input_a_stb=0;
input_b=0;
input_b_stb=0;
output_z_ack=0;
rst=0;
end
@ (negedge clk) begin 
input_a=0;
input_a_stb=0;
input_b=0;
input_b_stb=0;
output_z_ack=0;
rst=0;
end
@ (negedge clk) begin 
input_a=0;
input_a_stb=0;
input_b=0;
input_b_stb=0;
output_z_ack=0;
rst=0;
end
//0th round of input
@ (negedge clk) begin 
//register initialization
#0 DUT.a <= 32'b00000000000000000000000000000000;
#0 DUT.a_e <= 10'b0000000000;
#0 DUT.a_m <= 1'b0;
#0 DUT.a_s <= 1'b0;
#0 DUT.b <= 32'b00000000000000000000000000000000;
#0 DUT.b_e <= 10'b0000000000;
#0 DUT.b_m <= 23'b00000000000000000000000;
#0 DUT.b_s <= 1'b0;
#0 DUT.guard <= 1'b0;
#0 DUT.product <= 50'b00000000000000000000000000000000000000000000000000;
#0 DUT.round_bit <= 1'b0;
#0 DUT.s_input_a_ack <= 1'b0;
#0 DUT.s_input_b_ack <= 1'b0;
#0 DUT.s_output_z <= 32'b00000000000000000000000000000000;
#0 DUT.s_output_z_stb <= 1'b0;
#0 DUT.state <= 4'b0000;
#0 DUT.sticky <= 1'b0;
#0 DUT.z <= 22'b0000000000000000000000;
#0 DUT.z_e <= 10'b0000000000;
#0 DUT.z_m <= 23'b00000000000000000000000;
#0 DUT.z_s <= 1'b0;
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b1;
#1;
$strobe("input_a_ack                             @ 1[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 1[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 1[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 1[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//1th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 2[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 2[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 2[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 2[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//2th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 3[time:%t](%20h Vs [ref:1'b1]) ->%s",$time,input_a_ack,input_a_ack==1'b1 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 3[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 3[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 3[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//3th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 4[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 4[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 4[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 4[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//4th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 5[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 5[time:%t](%20h Vs [ref:1'b1]) ->%s",$time,input_b_ack,input_b_ack==1'b1 ?"PASS":"FAIL");
$strobe("output_z                                @ 5[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 5[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//5th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 6[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 6[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 6[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 6[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//6th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 7[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 7[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 7[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 7[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//7th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 8[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 8[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 8[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 8[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//8th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @ 9[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @ 9[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @ 9[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @ 9[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//9th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @10[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @10[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @10[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @10[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//10th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b1;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @11[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @11[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @11[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @11[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//11th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @12[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @12[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @12[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @12[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//12th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @13[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @13[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @13[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @13[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//13th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @14[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @14[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @14[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @14[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//14th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b1;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @15[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @15[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @15[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @15[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//15th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @16[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @16[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @16[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @16[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//16th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @17[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @17[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @17[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @17[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//17th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @18[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @18[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @18[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @18[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//18th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @19[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @19[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @19[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @19[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//19th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @20[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @20[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @20[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @20[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//20th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @21[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @21[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @21[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @21[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//21th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @22[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @22[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @22[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @22[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//22th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @23[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @23[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @23[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @23[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//23th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b1;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @24[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @24[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @24[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @24[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//24th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @25[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @25[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @25[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @25[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
end

//25th round of input
@ (negedge clk) begin 
input_a <= 32'b00000000010111101100011100101110;
input_a_stb <= 1'b1;
input_b <= 32'b00000000000111111101110111101011;
input_b_stb <= 1'b1;
output_z_ack <= 1'b0;
rst <= 1'b0;
#1;
$strobe("input_a_ack                             @26[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_a_ack,input_a_ack==1'b0 ?"PASS":"FAIL");
$strobe("input_b_ack                             @26[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,input_b_ack,input_b_ack==1'b0 ?"PASS":"FAIL");
$strobe("output_z                                @26[time:%t](%20h Vs [ref:32'b00000000000000000000000000000000]) ->%s",$time,output_z,output_z==32'b00000000000000000000000000000000 ?"PASS":"FAIL");
$strobe("output_z_stb                            @26[time:%t](%20h Vs [ref:1'b0]) ->%s",$time,output_z_stb,output_z_stb==1'b0 ?"PASS":"FAIL");
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
multiplier DUT(
.input_a(input_a)
,.input_b(input_b)
,.input_a_stb(input_a_stb)
,.input_b_stb(input_b_stb)
,.output_z_ack(output_z_ack)
,.clk(clk)
,.rst(rst)
,.output_z(output_z)
,.output_z_stb(output_z_stb)
,.input_a_ack(input_a_ack)
,.input_b_ack(input_b_ack)
);
endmodule
