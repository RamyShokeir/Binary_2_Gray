module Binary_2_Gray #(parameter IN_DATA_WIDTH=4)
(
    input wire [IN_DATA_WIDTH-1:0] binary_in,
    output reg [IN_DATA_WIDTH-1:0] gray_out
);

always @(*)
begin
    gray_out = Binary_2_Gray(binary_in);
end

function [IN_DATA_WIDTH-1:0] Binary_2_Gray;
input [IN_DATA_WIDTH-1:0] binary_in;
integer i;
begin
    Binary_2_Gray[IN_DATA_WIDTH-1]= binary_in[IN_DATA_WIDTH-1];
    for(i=2; i<=IN_DATA_WIDTH; i++)
    begin
        Binary_2_Gray[IN_DATA_WIDTH-i]= binary_in[IN_DATA_WIDTH-i] ^ binary_in[IN_DATA_WIDTH-i+1];
    end
end
endfunction
endmodule