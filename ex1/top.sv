module top (
  //input
  input logic clk_i,
  input logic [2:0] data_i,
  //output
  output logic [0:0] result_o
);

  design1 dut (
    .data_i (data_i),
    .f (result_o)
  );
  
  always @(posedge clk_i) begin: proc_assertions
    if (data_i == 3'b001)
      assert (result_o == '1);
    if (data_i == 3'b011)
      assert (result_o == '1);
    if (data_i == 3'b101)
      assert (result_o == '1);
    if (data_i == 3'b110)
      assert (result_o == '1);
    if (data_i == 3'b111)
      assert (result_o == '1);
  end

endmodule: top
