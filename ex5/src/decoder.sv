module decoder (
  input logic [2:0] select,
  output logic [7:0] data_out
);


always_comb begin: proc_dec
  case (select)
    3'b000: data_out = 8'b11111110;
    3'b001: data_out = 8'b11111101;
    3'b010: data_out = 8'b11111011;
    3'b011: data_out = 8'b11110111;
    3'b100: data_out = 8'b11101111;
    3'b101: data_out = 8'b11011111;
    3'b110: data_out = 8'b10111111;
    3'b111: data_out = 8'b01111111;
  endcase
end

/*
always_comb begin: proc_dec
  for (int i=0; i<8; i++) begin
    data_output[]
*/

endmodule: decoder
