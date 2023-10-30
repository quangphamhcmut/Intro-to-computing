module top (
  input logic clk_i,
  input logic [0:0] enable,
  input logic [2:0] data_i,
  output logic [0:0] result_o
);

design4 dut (
  .enable (enable),
  .data_in (data_i),
  .data_out (result_o)
);

always @(posedge clk_i) begin: proc_assertions
  if (enable == '0)
    case (data_i)
      3'b001: assert (result_o == '1);
      3'b010: assert (result_o == '1);
      3'b100: assert (result_o == '1);
      3'b111: assert (result_o == '1);
      default: assert (result_o == '0);
    endcase
end

endmodule: top
