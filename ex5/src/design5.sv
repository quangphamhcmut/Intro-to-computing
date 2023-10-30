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

`ifdef VERILATOR
/* verilator lint_off UNUSEDSIGNAL */
always_comb begin: proc_idk
  assign unusedgate[0] = data_out[1];
  assign unusedgate[1] = data_out[3];
  assign unusedgate[2] = data_out[4];
  assign unusedgate[3] = data_out[6];
  assign result = ~((data_out[0] & data_out[2]) & (data_out[5] & data_out[7]));
end
/* verilator lint_on UNUSEDSIGNAL */
`endif

endmodule: design5
