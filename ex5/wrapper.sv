module wrapper (
  input logic [2:0] SW,
  output logic [2:0] LEDR,
  output logic [0:0] LEDG
);

design5 dut (
  .sel (SW[2:0]),
  .result (LEDG[0])
);

assign LEDR = SW;

endmodule: wrapper
