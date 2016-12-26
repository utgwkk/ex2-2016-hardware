* kadai3 nand4-not
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

x4nand in_not1 in_not2 in_not3 in_not4 2 1 nand4
xnot 2 out 1 inv
c1 out 0 500f

.tran 0.0001n 10n
.end

* down: 0.795050e-09 0.834250e-09 0.872450e-09 0.908450e-09
* up: 0.906750e-09 0.920950e-09 0.931450e-09 0.940150e-09
