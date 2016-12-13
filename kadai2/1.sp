* kadai2-1
.include logic.cir
.options post temp=27

v1 in 0 pwl ( 0.0n 0.0
+             9.9n 0.0
+            10.0n 2.5
+            19.9n 2.5
+            20.0n 0.0
+            29.9n 0.0
+            30.0n 2.5)
vdd 1 0 2.5
x1 in out 1 inv
c1 out 0 30f

.tran 0.001n 40n
.end

* down: 1.000138e-07[413] - 9.990000e-08[407] = 1.138e-10
* komakakushitayo
* up: 2.000325e-07 - 1.999000e-07 = 1.325e-10
