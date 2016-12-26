* kadai2-2
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
x2 out out 0 1 nor2

.tran 0.0005n 2n
.end

* down: 0.56525e-09 - 0.49000e-09 = 0.07525ns
* up: 1.08225e-09 - 0.99000e-09 = 0.09225ns
