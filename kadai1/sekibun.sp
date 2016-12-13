* bibun.sp
.options post temp=27

* pulse
v1 in 0 pwl (  0.0n 0.0
+             99.9n 0.0
+            100.0n 5.0
+            199.9n 5.0
+            200.0n 0.0 )
r1 in out 30
c1 out 0 510.0p

.tran 0.05n 300n
.end

* time constant = 30 * 510 * 1e-12 = 1.53e-8
* measured = 1.151750e-07[2320] - 9.990057e-08[2006] = 1.527443e-08
