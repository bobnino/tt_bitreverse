# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # Set the clock period to 10 us (100 KHz)
   # clock = Clock(dut.clk, 10, unit="us")
   # cocotb.start_soon(clock.start())

    # Reset
   # dut._log.info("Reset")
   # dut.ena.value = 1
    dut.ui_in.value = {0,1,0,0,0,0,0,0}
    #dut.ui_in[1].value = 1
    #dut.ui_in[2].value = 0
    #dut.ui_in[3].value = 0
    #dut.ui_in[4].value = 0
    #dut.ui_in[5].value = 0
    #dut.ui_in[6].value = 0
    #dut.ui_in[7].value = 0
    dut.uio_in[0].value = {0,1,0,0,0,0,0,0}
    #dut.uio_in[1].value = 1
    #dut.uio_in[2].value = 0
    #dut.uio_in[3].value = 0
    #dut.uio_in[4].value = 0
    #dut.uio_in[5].value = 0
    #dut.uio_in[6].value = 0
    #dut.uio_in[7].value = 0
   # dut.rst_n.value = 0
   # await ClockCycles(dut.clk, 10)
   # dut.rst_n.value = 1

    dut._log.info("Test project behavior")

    # Set the input values you want to test
   # dut.ui_in.value = 20
   # dut.uio_in.value = 30

    # Wait for one clock cycle to see the output values
   # await ClockCycles(dut.clk, 1)

    # The following assersion is just an example of how to check the output values.
    # Change it to match the actual expected output of your module:
    assert dut.uo_out.value == {1,0,0,0,0,0,0,0}
 #   assert dut.uo_out[1].value == 0
    # Keep testing the module by changing the input values, waiting for
    # one or more clock cycles, and asserting the expected output values.
