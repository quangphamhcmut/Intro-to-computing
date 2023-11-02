module design5  (
  input logic [2:0] sel,
  output logic [0:0] result
);

logic [3:0] unusedgate;
logic [7:0] data_out;

decoder decoder0 (
  .select (sel),
  .data_out (data_out)
);

/* verilator lint_off UNUSEDSIGNAL */
assign result = ~((data_out[0] & data_out[2]) & (data_out[5] & data_out[7]));
/* verilator lint_on UNUSEDSIGNAL */
  
endmodule: design5
