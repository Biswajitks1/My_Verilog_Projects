
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2023 11:18:50
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
        input a,
        input b,
        input c,
        output S,
        output Cout
    );
wire s1,c1,c2;
HalfAdder ha1(.Sum(s1),
              .Carry(c1),
              .A(a),
              .B(b)
              );
HalfAdder ha2(.Sum(S),
              .Carry(c2),
              .A(s1),
              .B(c)
              );
or(Cout,c2,c1);     
endmodule
