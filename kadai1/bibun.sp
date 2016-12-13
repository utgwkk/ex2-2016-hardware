* bibun.sp
.options post temp=27

* pulse
v1 in 0 pwl (  0.0n 0.0
+             99.9n 0.0
+            100.0n 5.0
+            199.9n 5.0
+            200.0n 0.0 )
c1 in out 510.0p
r1 out 0 30

.tran 0.1n 300n
.end

* time constant = 30 * 510 * 1e-12 = 1.53e-8
* measured = 1.152369e-07[1167] - 9.990115e-08[1007] = 1.533575e-08
