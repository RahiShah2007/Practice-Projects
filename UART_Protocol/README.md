UART Protocol RTL Implementation

A complete UART (Universal Asynchronous Receiver/Transmitter) implemented from scratch in Verilog RTL. The design includes an independent baud-rate generator, UART transmitter, UART receiver, and an integrated top-level UART module.

The project was designed and verified at the RTL simulation level using 9600 baud
UART is a widely used asynchronous serial communication protocol commonly found in embedded systems, microcontrollers, FPGAs, SoCs, and peripheral interfaces.

This project implements both:

UART Transmitter (TX)
UART Receiver (RX)

with a shared baud-rate generator.
For the transmitter:
Counter ≈ Clock Frequency / Baud Rate
50 MHz / 9600 ≈ 5208
For the 16× receiver sampling:
50 MHz / (9600 × 16) ≈ 325

Clock	50 MHz
Baud Rate	9600
Frame Format	8-N-1
Data Bits	8
Parity	None
Stop Bits	1
TX Order	LSB First
RX Sampling	16×
HDL	Verilog
