* kadai2-2 nand2
.include logic.cir
.options post temp=27

v1 in 0 pwl ( 0.0n 0.0
+             0.49n 0.0
+             0.5n 2.5
+             0.99n 2.5
+             1.0n 0.0
+             1.49n 0.0
+             1.5n 2.5)
vdd 1 0 2.5
x1 in out 1 inv
x2 out out 0 1 nand2

.tran 0.0004n 2n
.end

* down: 0.0790 ns
* up: 0.0946 ns
