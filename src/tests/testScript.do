############################################################
## Full Adder Test Script for ModelSim
##     - To run, go to "Simulate->Start Simulation"
##     - At the VSIM> prompt in the Transcript window, run the command "do testScript.do"
## vsim command documentation available at
##     - https://www.microsemi.com/document-portal/doc_view/136364-modelsim-me-10-4c-command-reference-manual-for-libero-soc-v11-7
############################################################

# Select output file
transcript file FullAdderTest.txt

# Remove any leftover wave variables from previous simulations
delete wave *

# Add all your variables
add wave -position insertpoint \
sim:/FullAdder/Cin \
sim:/FullAdder/A \
sim:/FullAdder/B \
sim:/FullAdder/Cout \
sim:/FullAdder/Z

# Reset any previous simulations
restart

# Print out variable labels
echo Cin A B Z Cout

# Simulate
force -freeze sim:/FullAdder/Cin 0 0
force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/Cin 1 0
force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout

force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout

# Reset default transcript file
transcript file transcript