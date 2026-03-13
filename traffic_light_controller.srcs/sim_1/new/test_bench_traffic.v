`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 00:33:51
// Design Name: 
// Module Name: test_bench_traffic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Traffic_Light_Controller_TB;
reg clk,reset;
wire [2:0]a;
wire [2:0]d;
wire [2:0]b;
wire [2:0]c;
Traffic_Light_Controller dut(.clk(clk) , .reset(reset) , .a(a) , .d(d)  ,.c(c),.b(b)   );
initial
begin
    clk=1'b0;
    forever #(1000000000/2) clk=~clk;
end
//    initial
//    $stop;//to add ps
initial
begin
    reset=0;
    #1000000000;
    reset=1;
    #1000000000;
    reset=0;
    #(1000000000*200);
    $finish;
    end




endmodule