module design3 (
  input logic [2:0] data,
  output logic [0:0] f
);

always_comb begin: proc_idk
  case (data)
    3'b100: f = '1;
    3'b101: f = '1;
    default: f = '0;
  endcase
end

endmodule: design3
