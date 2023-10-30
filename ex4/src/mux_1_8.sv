module mux_1_8 (
  input logic [0:0] strobe,
  input logic [2:0] sel,
  input logic [7:0] data_input,
  output logic [0:0] data_output
);


/* verilator lint_off NOLATCH */
always_latch begin: proc_mux
  if (strobe == '1)
    data_output = '0;
  if (strobe == '0)
    case (sel)
      3'b000: data_output = data_input[0];
      3'b001: data_output = data_input[1];
      3'b010: data_output = data_input[2];
      3'b011: data_output = data_input[3];
      3'b100: data_output = data_input[4];
      3'b101: data_output = data_input[5];
      3'b110: data_output = data_input[6];
      3'b111: data_output = data_input[7];
    endcase
end
/* verilator lint_on NOLATCH */

endmodule: mux_1_8 
