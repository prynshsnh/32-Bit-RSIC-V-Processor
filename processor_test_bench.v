`timescale 1ns / 1ps

module processor_tb;

  // Inputs
  reg [31:0] instruction_code;
  reg clock;
  reg reset;
  wire zero;
  
  
  // Instantiate the processor module
  processor dut (instruction_code, clock, reset, zero);
  
  initial begin
  reset = 1;
  instruction_code = 32'b00000001010110100000010010110011;
  #50 reset = 0;
  end
  initial begin 
  clock = 0;
  forever #20 clock = ~clock;
  end
  
  initial 
  #80 $finish;
  
endmodule

