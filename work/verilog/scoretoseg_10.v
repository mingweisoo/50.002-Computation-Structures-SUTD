/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module scoretoseg_10 (
    input [15:0] score,
    output reg [15:0] values
  );
  
  
  
  reg [15:0] a;
  
  reg [15:0] arem;
  
  reg [15:0] b;
  
  reg [15:0] brem;
  
  reg [15:0] c;
  
  reg [15:0] d;
  
  always @* begin
    a = score / 10'h3e8;
    arem = score - (10'h3e8 * a);
    b = arem / 7'h64;
    brem = arem - (7'h64 * b);
    c = brem / 4'ha;
    d = brem - (4'ha * c);
    values = {a[0+3-:4], b[0+3-:4], c[0+3-:4], d[0+3-:4]};
  end
endmodule