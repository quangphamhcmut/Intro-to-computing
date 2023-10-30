module design1 (
  //input
  input logic [2:0] data_i,
  //output
  output logic [0:0] f
);

  logic [0:0] case1;
  logic [0:0] case2;

  always_comb begin : proc_idk
    case1 = (~(data_i[2] & data_i[1]) & data_i[0]);
    case2 = (data_i[2] & data_i[1]);
    f = (case1 | case2);
  end

endmodule: design1
