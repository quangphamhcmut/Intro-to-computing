module top (
  input logic clk_i,
  input logic [2:0] data_i,
  output logic [0:0] result_o
);

design5 dut (
  .sel (data_i),
  .result (result_o)
);

always @(posedge clk_i) begin: proc_assertions
  case (data_i)
    3'b000: assert (result_o == '1);
    3'b010: assert (result_o == '1);
    3'b101: assert (result_o == '1);
    3'b111: assert (result_o == '1);
    default: assert (result_o == '0);
  endcase
end

endmodule: top
