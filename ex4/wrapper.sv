module wrapper (
  input logic [3:0] SW,
  output logic [2:0] LEDR,
  output logic [0:0] LEDG
);

design4 dut (
  .enable (SW[3]),
  .data_in (SW[2:0]),
  .data_out (LEDG[0])
  );

assign LEDR = SW;

endmodule: wrapper
