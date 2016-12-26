* kadai2-1
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
c1 out 0 30f

.tran 0.0005n 2n
.end

* down: 0.0275
* up: 0.0728
