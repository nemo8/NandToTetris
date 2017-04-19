
//http://www.referencedesigner.com/tutorials/verilog/verilog_04.php

// defines the timescale. It tells that the simulation will run in steps of 1ns and has a precision value of 1ps.
//`timescale 1ns / 1ps


module tbAnd;
	// input
	reg x;
	reg y;

	// output
	wire z;
	
	// Instantiate the Unit Under Test (UUT)
	And uut(.a(x), .b(y), .out(z));
	
	initial begin
		$dumpfile("test.vcd");
        $dumpvars(0,tbAnd);
		
		// Initialize Inputs
		x = 0;
		y = 0;
	 
		#10 x = 1; $display("t=%3d,x=%d,y=%d,z=%d \n",$time,x,y,z);
		#10 y = 1; $display("t=%3d,x=%d,y=%d,z=%d \n",$time,x,y,z);
		#10 y = 0; $display("t=%3d,x=%d,y=%d,z=%d \n",$time,x,y,z);
		#10 x = 1; $display("t=%3d,x=%d,y=%d,z=%d \n",$time,x,y,z);  
		#50;
		end  
		
	initial begin
		//$monitor("t=%3d,x=%d,y=%d,z=%d \n",$time,x,y,z);
		end	
				
endmodule