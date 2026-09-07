v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 20 -330 20 {lab=VCC}
N -330 -170 -330 20 {lab=VCC}
N -410 -80 -330 -80 {lab=VCC}
N -490 -80 -450 -80 {lab=VBP_REF1N}
N -490 20 -450 20 {lab=IN1}
N -410 -170 -410 -110 {lab=VCC}
N -410 -50 -410 -10 {lab=#net1}
N -410 50 -410 130 {lab=V_STIM}
N -130 20 -50 20 {lab=VCC}
N -50 -170 -50 20 {lab=VCC}
N -130 -80 -50 -80 {lab=VCC}
N -210 -80 -170 -80 {lab=VBP_REF1N}
N -210 20 -170 20 {lab=IN2}
N -130 -170 -130 -110 {lab=VCC}
N -130 -50 -130 -10 {lab=#net2}
N -130 50 -130 130 {lab=V_STIM}
N 150 20 230 20 {lab=VCC}
N 230 -170 230 20 {lab=VCC}
N 150 -80 230 -80 {lab=VCC}
N 70 -80 110 -80 {lab=VBP_REF1N}
N 70 20 110 20 {lab=IN3}
N 150 -170 150 -110 {lab=VCC}
N 150 -50 150 -10 {lab=#net3}
N 150 50 150 130 {lab=V_STIM}
N 430 20 510 20 {lab=VCC}
N 510 -170 510 20 {lab=VCC}
N 430 -80 510 -80 {lab=VCC}
N 350 -80 390 -80 {lab=VBP_REF1N}
N 350 20 390 20 {lab=IN4}
N 430 -170 430 -110 {lab=VCC}
N 430 -50 430 -10 {lab=#net4}
N 430 50 430 130 {lab=V_STIM}
N 710 20 790 20 {lab=VCC}
N 790 -170 790 20 {lab=VCC}
N 710 -80 790 -80 {lab=VCC}
N 630 -80 670 -80 {lab=VBP_REF1N}
N 630 20 670 20 {lab=IN5}
N 710 -170 710 -110 {lab=VCC}
N 710 -50 710 -10 {lab=#net5}
N 710 50 710 130 {lab=V_STIM}
N -490 -170 790 -170 {lab=VCC}
N -490 130 710 130 {lab=V_STIM}
C {sky130_fd_pr/pfet_01v8.sym} -430 -80 0 0 {name=0.5
W=0.5
L=16
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -430 20 0 0 {name=M13
W=2
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} -490 -80 0 0 {name=p9 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} -490 20 0 0 {name=p36 sig_type=std_logic lab=IN1}
C {sky130_fd_pr/pfet_01v8.sym} -150 -80 0 0 {name=M14
W=0.5
L=8
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -150 20 0 0 {name=M15
W=2
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} -210 -80 0 0 {name=p37 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} -210 20 0 0 {name=p38 sig_type=std_logic lab=IN2}
C {sky130_fd_pr/pfet_01v8.sym} 130 -80 0 0 {name=M16
W=1
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 130 20 0 0 {name=M17
W=2
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 70 -80 0 0 {name=p39 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} 70 20 0 0 {name=p40 sig_type=std_logic lab=IN3}
C {sky130_fd_pr/pfet_01v8.sym} 410 -80 0 0 {name=M18
W=1
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 410 20 0 0 {name=M19
W=2
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 350 -80 0 0 {name=p41 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} 350 20 0 0 {name=p42 sig_type=std_logic lab=IN4}
C {sky130_fd_pr/pfet_01v8.sym} 690 -80 0 0 {name=M20
W=1
L=4
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 690 20 0 0 {name=M21
W=2
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 630 -80 0 0 {name=p43 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} 630 20 0 0 {name=p44 sig_type=std_logic lab=IN5}
C {lab_pin.sym} -490 -170 0 0 {name=p45 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -490 130 0 0 {name=p46 sig_type=std_logic lab=V_STIM}
C {iopin.sym} -800 -180 0 1 {name=p1 lab=VCC}
C {iopin.sym} -800 -160 0 1 {name=p2 lab=V_STIM}
C {ipin.sym} -800 -120 0 0 {name=p3 lab=VBP_REF1N}
C {ipin.sym} -800 -80 0 0 {name=p4 lab=IN1}
C {ipin.sym} -800 -60 0 0 {name=p5 lab=IN2}
C {ipin.sym} -800 -40 0 0 {name=p6 lab=IN3}
C {ipin.sym} -800 -20 0 0 {name=p7 lab=IN4}
C {ipin.sym} -800 0 0 0 {name=p8 lab=IN5}
