module design4 (
  input logic [0:0] enable,
  input logic [2:0] data_in,
  output logic [0:0] data_out
);

logic [7:0] data_input;
assign data_input = 8'b10010110;

mux_1_8 mux_1_8_0 (
  .strobe (enable),
  .sel (data_in),
  .data_input (data_input),
  .data_output (data_out)
);

endmodule: design4
