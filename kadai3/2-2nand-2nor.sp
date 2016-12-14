* kadai3 2-2nand-2nor
.include logic.cir
.options post temp=27

v1 in1 0 pwl (0.0n 0.0
+             1.9n 0.0
+             2.0n 2.5
+             9.9n 2.5
+            10.0n 0.0)
v2 in2 0 pwl (0.0n 0.0
+             2.9n 0.0
+             3.0n 2.5)
v3 in3 0 pwl (0.0n 0.0
+             3.9n 0.0
+             4.0n 2.5)
v4 in4 0 pwl (0.0n 0.0
+             4.9n 0.0
+             5.0n 2.5)
vdd 1 0 2.5

x2nand1 in1 in2 2 1 nand2
x2nand2 in3 in4 3 1 nand2
x2nor 2 3 out 1 nor2
c1 out 0 500f

.tran 0.0005n 20n
.end
