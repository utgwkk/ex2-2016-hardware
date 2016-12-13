* kadai2-1
.include logic.cir
.options post temp=27

v1 in 0 pwl (  0.0n 0.0
+             99.9n 0.0
+            100.0n 2.5
+            199.9n 2.5
+            200.0n 0.0
+            299.9n 0.0
+            300.0n 2.5)
vdd 1 0 2.5
x1 in out 1 inv
c1 out 0 30f

.tran 0.25n 400n
.end

* down: 1.000138e-07[413] - 9.990000e-08[407] = 1.138e-10
* up: 2.000441e-07 - 1.999000e-07[820] = 1.441e-10
