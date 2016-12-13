* kadai2-2
.include logic.cir
.options post temp=27

v1 in 0 pwl ( 0.0n 0.0
+             4.9n 0.0
+             5.0n 2.5
+             9.9n 2.5
+            10.0n 0.0
+            14.9n 0.0
+            15.0n 2.5)
vdd 1 0 2.5
x1 in out 1 inv
x2 out out 0 1 nor2

.tran 0.0005n 20n
.end
