# Sequential Circuits: Latches

# Group 3: Randy Bauer, Gage Magras

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

We learned how to simulate memory in Vivado using sequential logic to create loops. The issue of structural implementation of loops in Verilog that creates an "invalid" state can be circumvented by implementing behavioral Verilog. The use of the always @(*) block adds the contents of the block to a Sensitivity List. In this case, the * character assigns anything within the block to the list. We also learned how to create arrays of vectors to reference signals and bits with the [x] operator.

###  Why can we not just use structural Verilog to implement latches?

Building latches with structural Verilog produces a combinatorial logic loop that causes Vivado to not synthesize.

### What is the meaning of always @(*) in a sensitivity block?

The always @(*) allows us to create a loop for continuous assignment. It specifies the signals that our memory is sequential to and it immediately updates when any of the inputs change.

### What importance is memory to digital circuits?

The ability to store a state in digital circuits allows them to remember their output, even when the input is not present.
