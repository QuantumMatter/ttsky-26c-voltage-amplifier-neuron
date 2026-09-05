v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -120 0 -80 {lab=VDD}
N 0 -20 0 20 {lab=OUT}
N 0 80 0 140 {lab=VSS}
N -140 0 -40 0 {lab=IN}
N -40 -50 -40 0 {lab=IN}
N -140 0 -40 0 {lab=IN}
N -40 0 -40 50 {lab=IN}
N 0 50 0 80 {lab=VSS}
N 0 -80 0 -50 {lab=VDD}
N 0 -20 0 0 {lab=OUT}
N 0 0 100 0 {lab=OUT}
N 0 -140 0 -120 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=M1
W=1
L=0.5
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
C {ipin.sym} -140 0 0 0 {name=p1 lab=IN}
C {iopin.sym} 0 -140 2 0 {name=p2 lab=VDD}
C {iopin.sym} 0 140 2 0 {name=p3 lab=VSS}
C {opin.sym} 100 0 0 0 {name=p4 lab=OUT}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -50 0 0 {name=M2
W=2
L=0.5
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
