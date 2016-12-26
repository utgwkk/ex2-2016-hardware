* kadai3 2-2nand-2nor
.include logic.cir
.options post temp=27

v4 in4 0 pwl (0.0n 0.0
+             0.49n 0.0
+             0.5n 2.5
+             3.99n 2.5
+             4.0n 0.0)
v1 in1 0 pwl (0.0n 0.0)
v2 in2 0 pwl (0.0n 0.0)
v3 in3 0 pwl (0.0n 0.0)
vdd 1 0 2.5

xinnot1 in1 in_not1 1 inv
xinnot2 in2 in_not2 1 inv
xinnot3 in3 in_not3 1 inv
xinnot4 in4 in_not4 1 inv

x2nand1 in_not1 in_not2 2 1 nand2
x2nand2 in_not3 in_not4 3 1 nand2
x2nor 2 3 out 1 nor2
c1 out 0 500f

.tran 0.0001n 10n
.end

* down:
* up:
