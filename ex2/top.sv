module top (
  input logic clk_i,
  input logic [2:0] data_i,
  output logic [0:0] result_o
);

design2 dut (
  .data (data_i),
  .f (result_o)
);

always @(posedge clk_i) begin: proc_assertions
  case (data_i)
    3'b010: assert (result_o == '0);
    3'b101: assert (result_o == '0);
    3'b110: assert (result_o == '0);
    default: assert (result_o == '1);
  endcase
end

endmodule: top
