v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -300 -50 -270 {lab=VCC}
N -50 -300 30 -300 {lab=VCC}
N 140 -300 140 -270 {lab=VCC}
N 140 50 140 80 {lab=#net1}
N -50 50 -50 180 {lab=VSS}
N -70 20 -50 20 {lab=VSS}
N -70 20 -70 60 {lab=VSS}
N -70 60 -50 60 {lab=VSS}
N 140 20 200 20 {lab=VSS}
N 140 -240 170 -240 {lab=VCC}
N 170 -300 170 -240 {lab=VCC}
N 140 -300 170 -300 {lab=VCC}
N -80 -240 -50 -240 {lab=VCC}
N -80 -300 -80 -240 {lab=VCC}
N -50 -40 -50 -10 {lab=VBN}
N 140 -40 140 -10 {lab=#net2}
N -110 -300 -80 -300 {lab=VCC}
N 40 -300 140 -300 {lab=VCC}
N -10 -240 90 -240 {lab=VBP}
N 50 -240 50 -180 {lab=VBP}
N 50 -180 140 -180 {lab=VBP}
N 90 -240 100 -240 {lab=VBP}
N 30 -300 40 -300 {lab=VCC}
N 140 -210 140 -100 {lab=VBP}
N -50 -210 -50 -100 {lab=#net3}
N -10 20 100 20 {lab=VBN}
N 50 20 50 50 {lab=VBN}
N 50 -270 50 -250 {lab=VBP}
N 50 -250 50 -240 {lab=VBP}
N 100 110 120 110 {lab=VSS}
N 100 110 100 180 {lab=VSS}
N 340 -300 340 -250 {lab=VCC}
N 170 -300 340 -300 {lab=VCC}
N 340 -190 340 -140 {lab=VBN}
N 380 -220 460 -220 {lab=rst_n}
N 460 -220 480 -220 {lab=rst_n}
N 50 -20 50 20 {lab=VBN}
N -50 -20 50 -20 {lab=VBN}
N 300 -220 340 -220 {lab=VCC}
N 300 -230 300 -220 {lab=VCC}
N 300 -260 300 -230 {lab=VCC}
N 300 -260 340 -260 {lab=VCC}
N -80 -300 -50 -300 {lab=VCC}
N 140 140 140 160 {lab=#net4}
N 140 220 140 230 {lab=#net5}
N 140 230 140 240 {lab=#net5}
N 140 300 140 320 {lab=#net6}
N 140 380 140 400 {lab=#net7}
N 140 460 140 480 {lab=#net8}
N 140 540 140 560 {lab=#net9}
N 140 620 140 640 {lab=#net10}
N 100 180 100 670 {lab=VSS}
N 100 670 120 670 {lab=VSS}
N 100 590 120 590 {lab=VSS}
N 100 510 120 510 {lab=VSS}
N 100 430 120 430 {lab=VSS}
N 100 350 120 350 {lab=VSS}
N 100 270 120 270 {lab=VSS}
N 100 190 120 190 {lab=VSS}
N 140 700 140 720 {lab=VSS}
N 0 720 140 720 {lab=VSS}
N 0 180 0 720 {lab=VSS}
N 140 720 350 720 {lab=VSS}
N 350 100 350 720 {lab=VSS}
N 350 20 350 100 {lab=VSS}
N 200 20 350 20 {lab=VSS}
N -100 180 -0 180 {lab=VSS}
N -110 180 -100 180 {lab=VSS}
N 100 670 100 720 {lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 120 -240 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -240 0 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 120 20 0 0 {name=M3
W=8
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
C {sky130_fd_pr/nfet_01v8.sym} -30 20 0 1 {name=M4
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 110 0 0 {name=R1
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {ammeter.sym} 140 -70 0 0 {name=VSRIGHT savecurrent=true spice_ignore=0}
C {ammeter.sym} -50 -70 0 0 {name=VSLEFT savecurrent=true spice_ignore=0}
C {lab_pin.sym} -110 -300 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 50 50 2 1 {name=p5 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 50 -270 2 1 {name=p7 sig_type=std_logic lab=VBP}
C {sky130_fd_pr/pfet_01v8.sym} 360 -220 0 1 {name=M5
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
C {lab_pin.sym} 340 -140 2 1 {name=p2 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 480 -220 2 0 {name=p4 sig_type=std_logic lab=rst_n}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 190 0 0 {name=R2
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 270 0 0 {name=R3
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 350 0 0 {name=R4
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 430 0 0 {name=R5
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 510 0 0 {name=R6
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 590 0 0 {name=R7
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 140 670 0 0 {name=R8
L=135.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} -110 180 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {iopin.sym} -400 -300 0 1 {name=p6 lab=VCC}
C {iopin.sym} -400 -280 0 1 {name=p8 lab=VSS}
C {ipin.sym} -400 -240 0 0 {name=p9 lab=rst_n}
C {opin.sym} -360 -300 0 0 {name=p10 lab=VBP}
C {opin.sym} -360 -280 0 0 {name=p11 lab=VBN}
