module RegisterFile(input clk, input [2:0] R1point, R2point, writeRpoint, input [15:0] writeData, input writeEnable, output reg[15:0] R1, R2);
    reg [15:0] Registers [0:15];

    integer i;
    initial begin
        // for (i=0; i<15; i=i+1) begin
        //     Registers[i] = 0;
        // end
        // Registers[0] = 3;
        // Registers[1] = 5;
        // // Registers[1] = 1;
        Registers[0] = 16'b0010101001010101 ; 
        Registers[1] = 16'b1100011011101011 ; 
        Registers[2] = 16'b0101011000001010 ; 
        Registers[3] = 16'b1111000000111010 ; 
        Registers[4] = 16'b0000011111000010 ; 
        Registers[5] = 16'b0001111110001111 ; 
        Registers[6] = 16'b1110101011110001 ; 
        Registers[7] = 16'b1101010001010101 ; 
    end

    always @(*) begin
        Registers[0] = 0;
        R1 = Registers[R1point];
		R2 = Registers[R2point];
    end

    always @(negedge clk)
		if (writeEnable) Registers[writeRpoint] = writeData;

endmodule

///////////////////////////////////&
