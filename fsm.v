
//Finite State Machine design
//Inputs  : I (4 bit) and CLK (clock)
//Output  : Y (Y = 1 when 102210 sequence(decimal number sequence) is detected)


module fsm(
	input CLK,			  //Clock
	input [3:0]I,       //INPUT I
	output	  Y		  //OUTPUT Y
);

reg Y1 = 0;
assign Y = Y1;


////////////////////////WRITE YOUR CODE FROM HERE//////////////////// 
parameter [5:0] S0=6'b000000;
parameter [5:0] S1=6'b000001;
parameter [5:0] S2=6'b000010;
parameter [5:0] S3=6'b000100;
parameter [5:0] S4=6'b001000;
parameter [5:0] S5=6'b010000;

reg [5:0] cst=S0;
reg [5:0] nst;

always@(posedge CLK)
	begin
				
				case(cst)
				S0:if(I==4'b0001) begin
						Y1 = 1'b0;
						cst = S1;
						
					end
					else begin
					    Y1=1'b0;
						cst=S0;
						
					end
				S1:if(I==4'b0000) begin
						Y1=1'b0;
						cst = S2;
											end
					else if (I==4'b0001) begin
					    Y1=1'b0;
						cst=S1;
						
					end	
					else begin
						Y1=1'b0;
						cst=S0;
						
					end	
				S2:if(I==4'b0010) begin
						Y1=1'b0;
						cst=S3;
						
					end
					else begin 
						Y1=1'b0;
						cst=S0;
						
					end
				S3:if(I==4'b0010) begin
						Y1=1'b0;
						cst=S4;
						
					end
					else begin 
						Y1=1'b0;
						cst=S0;
						
					end
				S4:if(I==4'b0001) begin
						Y1=1'b0;
						cst=S5;
						
					end
					else begin 
						Y1=1'b0;
						cst=S0;
						
					end
				S5:if(I==4'b0000) begin
						Y1=1'b1;
						cst=S2;
						
					end
					else begin 
						Y1=1'b0;
						cst=S0;
						
					end
				endcase
	end

	

////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////