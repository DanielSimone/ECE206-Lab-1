module Popcount(
  input [2:0] bitstring,
  output [1:0] popcount
);

reg [1:0] popcount;
reg a, b, c, d, e, f, g, h;

always @(*) begin
  a = ~bitstring[2] && bitstring[1] && bitstring[0];
  b = bitstring[2] && ~bitstring[1] && bitstring[0];
  c = bitstring[2] && bitstring[1] && bitstring[0];
  d = bitstring[2] && bitstring[1] && ~bitstring[0];
  e = ~bitstring[2] && ~bitstring[1] && bitstring[0];
  f = ~bitstring[2] && bitstring[1] && ~bitstring[0];
  g = bitstring[2] && ~bitstring[1] && ~bitstring[0];
  h = bitstring[2] && bitstring[1] && bitstring[0];

  popcount[1] = a || b || c || d;
  popcount[0] = e || f || g || h;
end

endmodule
