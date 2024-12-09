The Seven-Segment Display Circuit project involves designing a hardware system to display a 4-digit decimal or hexadecimal number on the seven-segment displays of a Basys3 FPGA board.
Inputs are taken via onboard switches, processed through a custom combinational logic decoder, and displayed using a flicker-free mechanism enabled by a timing circuit. 
The design includes a 4:1 multiplexer and utilizes a minimized truth table approach to simplify the logic. 
Implemented in VHDL, the project efficiently manages resource usage (flip-flops and LUTs) and leverages the FPGA's 100 MHz clock for precise timing control. 
Simulation tools were used to verify the design before hardware deployment, ensuring optimal functionality.
