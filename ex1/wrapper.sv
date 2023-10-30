module wrapper (
  //input
  input logic [2:0] SW,
  //output
  output logic [0:0] LEDR
);
  design1 dut (
    .data_i (SW[2:0]),
    .f (LEDR[0])
    );
endmodule: wrapper
