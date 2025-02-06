# VHDL Asynchronous Input Glitch Issue

This repository demonstrates a common issue in VHDL code: incorrect handling of asynchronous inputs which can lead to glitches. The issue is that the asynchronous input is not properly synchronized with the clock, and this can lead to race conditions and false outputs.

## The Bug

The provided VHDL code samples an asynchronous input (`data_in`) directly within a clocked process. If `data_in` changes concurrently with the rising edge of the clock, the sampled value might be unstable or incorrect. 

The bug is in the assignment of the `data_out` signal within the clocked process. The signal `data_in` may change before the rising edge of the clock is detected. This change is not properly handled in the current design. 

## Solution

The solution is to synchronize the asynchronous input with the clock using a synchronizer. This ensures that the asynchronous input value is properly sampled and glitches are avoided.

## How to Reproduce

1.  Simulate the provided VHDL code using a VHDL simulator.
2.  Apply a rapidly changing `data_in` signal to observe unexpected behavior in `data_out`.
3.  Simulate the solution code and note that the output is now synchronized.