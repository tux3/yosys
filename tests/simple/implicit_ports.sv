// Test implicit port connection syntax
module alu (output [7:0] alu_out, output zero, input [7:0] ain, bin);
endmodule

module named_ports;
	wire [7:0] alu_out;
	wire [7:0] ain, bin;
	wire [2:0] opcode;

	alu alu (
		.alu_out(alu_out),
		.zero(),	// named empty ports are explicitely unconnected
		.ain,		// implicit connection is equivalent to .ain(ain)
		.bin(bin)
	);
endmodule

