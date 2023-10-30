module wrapper (
 input logic [2:0] SW,
 output logic [2:0] LEDR,
 output logic [0:0] LEDG
);

design2 dut (
  .data (SW[2:0]),
  .f (LEDG[0])
);

assign LEDR = SW;

endmodule: wrapper
