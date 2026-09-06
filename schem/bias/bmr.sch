v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -20 180 -20 {lab=VBP_REF10N}
N 260 10 260 60 {lab=#net1}
N 260 120 260 170 {lab=VBN_REF1N}
N 260 230 260 280 {lab=VSS}
N 260 280 420 280 {lab=VSS}
N 480 230 480 280 {lab=VSS}
N 480 120 480 170 {lab=#net2}
N 480 10 480 60 {lab=VBP_REF1N}
N 480 -100 480 -50 {lab=VCC}
N 260 -100 420 -100 {lab=VCC}
N 260 -100 260 -50 {lab=VCC}
N 300 200 380 200 {lab=VBN_REF1N}
N 340 150 340 200 {lab=VBN_REF1N}
N 260 150 340 150 {lab=VBN_REF1N}
N -0 -100 -0 -60 {lab=VCC}
N -0 -100 220 -100 {lab=VCC}
N -0 40 -0 280 {lab=VSS}
N -0 280 220 280 {lab=VSS}
N 520 -20 540 -20 {lab=VBP_REF1N}
N 540 -20 540 30 {lab=VBP_REF1N}
N 480 30 540 30 {lab=VBP_REF1N}
N 450 -20 480 -20 {lab=VCC}
N 450 -60 450 -20 {lab=VCC}
N 450 -60 480 -60 {lab=VCC}
N 260 -20 300 -20 {lab=VCC}
N 300 -60 300 -20 {lab=VCC}
N 260 -60 300 -60 {lab=VCC}
N 230 200 260 200 {lab=VSS}
N 230 200 230 240 {lab=VSS}
N 230 240 260 240 {lab=VSS}
N 480 200 510 200 {lab=VSS}
N 510 200 510 240 {lab=VSS}
N 480 240 510 240 {lab=VSS}
N -80 -10 -60 -10 {lab=rst_n}
N -80 -100 -0 -100 {lab=VCC}
N -80 280 -0 280 {lab=VSS}
N 220 -100 260 -100 {lab=VCC}
N 180 -20 220 -20 {lab=VBP_REF10N}
N 220 280 260 280 {lab=VSS}
N 80 -60 100 -60 {lab=VBP_REF10N}
N 80 -60 80 -20 {lab=VBP_REF10N}
N 60 0 100 0 {lab=VBN_REF10N}
N 540 30 570 30 {lab=VBP_REF1N}
N 380 200 440 200 {lab=VBN_REF1N}
N 420 280 480 280 {lab=VSS}
N 420 -100 480 -100 {lab=VCC}
N 340 150 350 150 {lab=VBN_REF1N}
C {bias/bmr_10n.sym} 40 0 0 0 {name=x1}
C {sky130_fd_pr/pfet_01v8.sym} 240 -20 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 280 200 0 1 {name=M2
W=1
L=4
nf=1 
mult=10
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 460 200 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 500 -20 0 1 {name=M4
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
C {ammeter.sym} 260 90 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 480 90 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {iopin.sym} -360 -40 0 1 {name=p1 lab=VCC}
C {iopin.sym} -360 -20 0 1 {name=p2 lab=VSS}
C {ipin.sym} -360 20 0 0 {name=p3 lab=rst_n}
C {opin.sym} -320 -40 0 0 {name=p4 lab=VBP_REF10N}
C {opin.sym} -320 -20 0 0 {name=p5 lab=VBP_REF1N}
C {opin.sym} -320 0 0 0 {name=p6 lab=VBN_REF10N}
C {opin.sym} -320 20 0 0 {name=p7 lab=VBN_REF1N}
C {lab_pin.sym} -80 -10 0 0 {name=p8 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} -80 -100 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -80 280 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 -60 0 1 {name=p11 sig_type=std_logic lab=VBP_REF10N}
C {lab_pin.sym} 100 0 0 1 {name=p12 sig_type=std_logic lab=VBN_REF10N}
C {lab_pin.sym} 570 30 0 1 {name=p13 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} 350 150 0 1 {name=p14 sig_type=std_logic lab=VBN_REF1N}
