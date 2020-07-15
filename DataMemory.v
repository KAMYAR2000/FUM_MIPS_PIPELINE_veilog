module DataMemory(input [15:0] Rpoint, input [15:0] writeData, input write, load, output reg[15:0] outR);
    reg [15:0] Registers [127:0];
    
    integer i;
    initial begin
        // for (i=0; i<128; i=i+1) begin
        //     Registers[i] = i;
        // end
        Registers[0] = 16'b1111000010101010 ; 
        Registers[1] = 16'b0001000101010101 ; 
        Registers[2] = 16'b1010101111111010 ; 
        Registers[3] = 16'b1111110001111111 ; 
        Registers[4] = 16'b0111101111011111 ;
        Registers[5] = 16'b1011111101011111 ; 
        Registers[6] = 16'b1000001111101111 ; 
        Registers[7] = 16'b1000000101101001 ; 
        Registers[8] = 16'b1111111100001111 ; 
        Registers[9] = 16'b1111000010101010 ; 
        Registers[10] = 16'b0001000101010101 ; 
        Registers[11]= 16'b1010101111111010 ;
        Registers[12]= 16'b1111110001111111 ; 
        Registers[13] = 16'b0111101111011111 ; 
        Registers[14] = 16'b1011111101011111 ; 
        Registers[15] = 16'b1000001111101111  ;
        Registers[16] = 16'b1000000101101001 ; 
        Registers[17] = 16'b1111111100001111 ; 
        Registers[18] = 16'b1111111110000011 ; 
        Registers[19] = 16'b0000000011111101 ; 
        Registers[20] = 16'b1111100000011111 ; 
        Registers[21] = 16'b1111100000000000 ; 
        Registers[22] = 16'b1111101010101111 ; 
        Registers[23] = 16'b0101011111110000 ; 
    end
    always@(*) begin
        if(load)begin
            outR = Registers[Rpoint];
        end
        if (write) begin 
            Registers[Rpoint] = writeData;
        end
    end
endmodule
