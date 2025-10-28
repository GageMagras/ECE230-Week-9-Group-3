module memory_system(
	input [7:0] data,
	input store,
	input [1:0] addr,
	output reg [7:0] memory
);

	assign [7:0] mem[3:0];
	
	//memory selector
	wire store0 = store && (addr == 2'b00);
    wire store1 = store && (addr == 2'b01);
    wire store2 = store && (addr == 2'b10);
    wire store3 = store && (addr == 2'b11);
	
	//four instances of byte_memory
	byte_memory b00(
		.data(data),
		.store(store0),
		.memory(mem[0])
	);
	byte_memory b01(
		.data(data),
		.store(store1),
		.memory(mem[1])
	);
	byte_memory b10(
		.data(data),
		.store(store2),
		.memory(mem[2])
	);
	byte_memory b11(
		.data(data),
		.store(store3),
		.memory(mem[3])
	);
	
	//output
	always @(*) begin
		case (addr)
			2'b00: memory = mem[0];
			2'b01: memory = mem[1];
			2'b10: memory = mem[2];
			2'b11: memory = mem[3];
		endcase
	end
	
endmodule