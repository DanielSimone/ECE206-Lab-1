module Popcount(
  input [2:0] bitstring,
  output [1:0] popcount
);

wire a, b, c, d, e, f, g, h;

assign a = ~bitstring[2] && bitstring[1] && bitstring[0];
assign b = bitstring[2] && ~bitstring[1] && bitstring[0];
assign c = bitstring[2] && bitstring[1] && bitstring[0];
assign d = bitstring[2] && bitstring[1] && ~bitstring[0];
assign e = ~bitstring[2] && ~bitstring[1] && bitstring[0];
assign f = ~bitstring[2] && bitstring[1] && ~bitstring[0];
assign g = bitstring[2] && ~bitstring[1] && ~bitstring[0];
assign h = bitstring[2] && bitstring[1] && bitstring[0];

assign popcount[1] = a || b || c || d;
assign popcount[0] = e || f || g || h;

endmodule
