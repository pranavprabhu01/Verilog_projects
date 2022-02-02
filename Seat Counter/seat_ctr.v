//Author:Pranav Prabhu
//Title:Seat Counter
//About:This is a design code of a seat counter. For simulation the total seats is 5.
module seat_ctr(output reg[4:0]o_led,input [4:0]i_seat);
	reg [2:0]led;
	integer i;
	
	always@(*)
		begin
		 led=3'b0;
		  i=0;
		  for(i=0;i<5;i=i+1)
			begin
				if(i_seat[i]==1)
					led=led+1;
			end
			
			case(led)
			3'b000:o_led=5'b0;
			3'b001:o_led=5'b00001;
			3'b010:o_led=5'b00011;
			3'b011:o_led=5'b00111;
			3'b100:o_led=5'b01111;
			3'b101:o_led=5'b11111;
			default:o_led=5'b0;
			endcase
			end
			endmodule
			