module design2 (
  //input
  input logic [2:0] data,
  //output
  output logic [0:0] f
);

always_comb begin : proc_idk
  case (data)
    3'b010: f = '0;
    3'b101: f = '0;
    3'b110: f = '0;
    default: f = '1;
  endcase
end

endmodule : design2
