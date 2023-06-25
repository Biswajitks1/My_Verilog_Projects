

//PWM Generator
//Inputs : Clk, DUTY_CYCLE
//Output : PWM_OUT

//////////////////DO NOT MAKE ANY CHANGES IN MODULE//////////////////

module PWM_Generator(
 
	input clk,             // Clock input
	input [7:0]DUTY_CYCLE, // Input Duty Cycle
	output PWM_OUT         // Output PWM
);
 
////////////////////////WRITE YOUR CODE FROM HERE////////////////////
reg [7:0] count=0;

reg out=1;
always@(posedge clk) begin
		if(count==50)begin
				count=0;
				end		
      if(clk==1) begin
		    count=count+1;
			 end			
			
end
assign PWM_OUT=(count<=(DUTY_CYCLE/2))?1:0;
////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////