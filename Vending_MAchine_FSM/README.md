A synthesizable finite-state-machine based vending machine implemented in Verilog HDL, supporting ₹5, ₹10, and ₹20 coins, three products, cancellation, and change indication.

Features
5-state FSM: S0, S5, S10, S15, S20
Supports:
01 = ₹5
10 = ₹10
11 = ₹20
Products:
A = ₹5
B = ₹10
C = ₹20
Supports accumulated coin combinations.
Supports ₹20 coin directly.
cncl cancels the transaction and returns the FSM to S0.
change indicates that excess money is due.
Synchronous product/change outputs with asynchronous reset.

