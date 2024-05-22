module pit_top (
    input wire clk,            // Clock input
    input wire rst,            // Reset input
   // input wire start,          // Start conversion
    input wire comp_out,       // Comparator output
    output reg [9:0] digital_out, // 10-bit Digital output of ADC
    output reg EOC             // End of conversion signal
);

reg [9:0] sar_reg;              // SAR register
reg [3:0] state;                // State control
integer i;

// State definitions
localparam IDLE = 0,
           INIT = 1,
           COMPARE = 2,
           UPDATE = 3,
           FINISH = 4;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        sar_reg <= 10'b0;
        digital_out <= 10'b0;
        state <= IDLE;
        EOC <= 0;
        i <= 9;  // Start with MSB
    end else begin
        case (state)
            IDLE: begin
                //if (start) begin
                    sar_reg <= 10'b0;
                    state <= INIT;
                    i <= 9;  // Start with MSB
               // end
            end
            INIT: begin
                sar_reg[i] <= 1;  // Set the current bit to 1
                state <= COMPARE;
            end
            COMPARE: begin
                state <= UPDATE;
            end
            UPDATE: begin
                if (comp_out == 0) 
                    sar_reg[i] <= 0;  // Set current bit to 0 if comparator is low
                i <= i - 1;          // Move to next bit
                if (i < 0)
                    state <= FINISH;
                else
                    state <= INIT;
            end
            FINISH: begin
                digital_out <= sar_reg;  // Output the final value
                EOC <= 1;
                state <= IDLE;
            end
        endcase
    end
    // Debugging output
    //$display("Time: %t, State: %d, sar_reg: %b, comp_out: %b, digital_out: %d, EOC: %b", $time, state, sar_reg, comp_out, digital_out, EOC);
end

endmodule

