transcript file FullAdderTest.txt
delete wave *
add wave -position insertpoint sim:/FullAdder/Cin sim:/FullAdder/A sim:/FullAdder/B sim:/FullAdder/Z sim:/FullAdder/Cout
restart
echo Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 0 0
force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 0 0
force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 0 0
force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 0 0
force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 1 0
force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 1 0
force -freeze sim:/FullAdder/A 0 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 1 0
force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 0 0
run
examine Cin A B Z Cout
force -freeze sim:/FullAdder/Cin 1 0
force -freeze sim:/FullAdder/A 1 0
force -freeze sim:/FullAdder/B 1 0
run
examine Cin A B Z Cout
transcript file transcript