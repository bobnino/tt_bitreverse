/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_TT_bit_reversal (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in ,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  //assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe[0]  = 0;
  assign uio_oe[1]  = 0;
  assign uio_oe[2]  = 0;
  assign uio_oe[3]  = 0;
  assign uio_oe[4]  = 0;
  assign uio_oe[5]  = 0;
  assign uio_oe[6]  = 0;
  assign uio_oe[7]  = 0;
  assign uio_in[4] = 0;
  assign uio_in[5] = 0;
  assign uio_in[6] = 0;
  assign uio_in[7] = 0;
  // uio_in[0]= first bit equivlant to 0 0r 1
  // uio_in[1]= first bit equivlant to 0 0r 2
  // uio_in[2]= first bit equivlant to 0 0r 4
  // // uio_in[3]= first bit equivlant to 0 0r 8
  
  assign uo_out[7] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1) ?   ui_in[0] :
                
                      0;
                      

 assign uo_out[6] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[0] :
                      0;
                      
                      
assign uo_out[5] = ( uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1) ?   ui_in[2] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]!==1 ) ?   ui_in[0] :
                      0;
                      
assign uo_out[4] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[3] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[2] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]!==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]==1 ) ?   ui_in[0] :
                      0;                   
  
assign uo_out[3] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[4] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[3] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]!==1) ?   ui_in[2] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[0] :
                      0;  
                      
assign uo_out[2] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[5] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1) ?   ui_in[4] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]!==1) ?   ui_in[3] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]==1) ?   ui_in[2] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]!==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[0] :
                      0; 
                      
assign uo_out[1] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1) ?   ui_in[6] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[5] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]!==1 ) ?   ui_in[4] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]==1 ) ?   ui_in[3] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[2] :
                    (uio_in[3]!==1 & uio_in[2]!==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]!==1 & uio_in[1]==1 & uio_in[0]!==1 ) ?   ui_in[0] :
                      0;
 assign uo_out[0] = (uio_in[3]==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[7] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]==1) ?   ui_in[6] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]==1 & uio_in[0]!==1 ) ?   ui_in[5] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]==1 ) ?   ui_in[4] :
                    (uio_in[3]!==1 & uio_in[2]==1 & uio_in[1]!==1 & uio_in[0]!==1 ) ?   ui_in[3] :
                    (uio_in[3]!==1 & uio_in[2]!==1 & uio_in[1]==1 & uio_in[0]==1 ) ?   ui_in[2] :
                    (uio_in[3]!==1 & uio_in[2]!==1 & uio_in[1]==1 & uio_in[0]!==1 ) ?   ui_in[1] :
                    (uio_in[3]!==1 & uio_in[2]!==1 & uio_in[1]!==1 & uio_in[0]==1 ) ?   ui_in[0] :
                      0;
  // List all unused inputs to prevent warnings
   wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
