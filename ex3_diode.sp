* ex3_diode.sp
.options post temp=27
.MODEL Default D

v1 in 0 dc 10v
d1 in out Default
r1 out 0 27

.control
dc v1 -10 10 0.2m
.endc

.tran 1n 400n
.end
