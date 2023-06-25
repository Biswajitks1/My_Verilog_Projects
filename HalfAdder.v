module HalfAdder(
        input A,
        input B,
        output Sum,
        output Carry
        );

xor x1(Sum,A,B);
and c1(Carry,A,B);

endmodule