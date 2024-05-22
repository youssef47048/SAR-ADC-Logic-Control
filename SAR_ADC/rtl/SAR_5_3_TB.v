`timescale 1ns / 100ps

module SAR_5_3_tb;

parameter NOB = 10;  // Number of bits (10-bit)

// Inputs
reg clk;
reg rst;
//reg start;
reg comp_out;

// Outputs
wire [NOB-1:0] digital_out;
wire EOC;  // End of Conversion signal

// Instantiate the Unit Under Test (UUT)
SAR_ADC_5_3 uut (
    .clk(clk),
    .rst(rst),
    .comp_out(comp_out),
    .digital_out(digital_out),
    .EOC(EOC)
);

// Clock generation
always #5 clk = ~clk;  // Clock period of 10ns

initial begin
    // Initialize Inputs
    clk = 0;
    rst = 1; // Assert reset initially
    //start = 1;
    comp_out = 0;

    // Reset deassertion and start signal management
    #10 rst = 0;  // Deassert reset
    //#5 start = 1; #5; // Pulse start signal
    //start = 0;

    // Simulate ADC behavior
    repeat (10) begin  // Simulate for 10 cycles as example
        @(posedge clk);
        comp_out = (uut.sar_reg > 512) ? 0 : 1;  // Change comparator output based on sar_reg
    end

    // Check results after conversion
    @(posedge uut.EOC );
    if (uut.EOC && digital_out == 512) begin
        $display("Test SUCCESS: Output = %d and EOC = %b", digital_out,EOC);
    end else begin
        $display("Test FAILURE: Output = %d, Expected = 512", digital_out);
    end
	rst = 1;

    $finish; // End of testing
end

endmodule

