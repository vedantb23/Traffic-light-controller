`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 00:11:33
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_controller(
    input clk,
    input reset,
    output reg [2:0]a,
    output reg [2:0]b,
    output reg [2:0]c,
    output reg [2:0]d
    );
    
    parameter s1=0,s2=1,s3=2,s4=3,s5=4,s6=5;
    reg[3:0] count;
    reg[2:0] ps;
    parameter sec7=7,sec2=2,sec5=5,sec3=3;
    
    always@(posedge clk or posedge reset)
    begin
    if(reset==1)
    begin
    ps<=s1;
    count<=0;
    end 
    else 
    
    
    case(ps)
    s1:if(count<sec7)
    begin
    ps<=s1;
    count<=count+1;
    end
    else 
    begin
    ps<=s2;
    count<=0;
    end
    
    s2: if(count<sec2)
    begin
    ps<=s2;
   count<=count+1;
   end
   else 
   begin
   ps<=s3;
   count<=0;
   end
   
   s3: if(count<sec5)
   begin
   ps<=s3;
   count<=count+1;
   end
   else
   begin
   ps<=s4;
   count<=0;
   end
   
   s4: if(count<sec2)
    begin
    ps<=s4;
   count<=count+1;
   end
   else 
   begin
   ps<=s5;
   count<=0;
   end
   
   s5: if(count<sec3)
    begin
    ps<=s5;
   count<=count+1;
   end
   else 
   begin
   ps<=s6;
   count<=0;
   end
   
   s6: if(count<sec2)
    begin
    ps<=s6;
   count<=count+1;
   end
   else 
   begin
   ps<=s1;
   count<=0;
   end
    
    default: ps<=s1;
    endcase
    end
    
    
    always@(ps)
    begin
    case(ps)
    s1:
    begin
    a<=3'b001;
    b<=3'b100;
    c<=3'b001;
    d<=3'b100;
    end
    
    s2:
    begin
    a<=3'b001;
    b<=3'b100;
    c<=3'b010;
    d<=3'b100;
    end
    
     s3:
    begin
    a<=3'b001;
    b<=3'b001;
    c<=3'b100;
    d<=3'b100;
    end
    
    s4:
    begin
    a<=3'b010;
    b<=3'b010;
    c<=3'b100;
    d<=3'b100;
    end
    
     s5:
    begin
    a<=3'b100;
    b<=3'b100;
    c<=3'b100;
    d<=3'b001;
    end
    
     s6:
    begin
    a<=3'b100;
    b<=3'b100;
    c<=3'b100;
    d<=3'b010;
    end
    
    default:
    begin
    a<=3'b000;
    b<=3'b000;
    c<=3'b000;
    d<=3'b000;
    end
    
    endcase
    end
    
    
endmodule
