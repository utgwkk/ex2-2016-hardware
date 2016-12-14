* kadai3 nand4-not
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

x4nand in1 in2 in3 in4 2 1 nand4
xnot 2 out 1 inv
c1 out 0 500f

.tran 0.0005n 20n
.end

* down: 5.013750e-09 - 4.900000e-09 = 1.1375e-10
* up: 1.003025e-08 - 9.900000e-09 = 1.3025e-10
