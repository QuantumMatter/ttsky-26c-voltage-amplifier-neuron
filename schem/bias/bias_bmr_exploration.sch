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
N -230 -300 -50 -300 {lab=VCC}
N 140 50 140 80 {lab=#net1}
N -220 20 -220 180 {lab=0}
N 140 140 140 180 {lab=0}
N -50 50 -50 180 {lab=0}
N -50 180 -50 200 {lab=0}
N -70 20 -50 20 {lab=0}
N -70 20 -70 60 {lab=0}
N -70 60 -50 60 {lab=0}
N 140 20 200 20 {lab=0}
N 200 20 200 180 {lab=0}
N 130 180 190 180 {lab=0}
N 140 -240 170 -240 {lab=VCC}
N 170 -300 170 -240 {lab=VCC}
N 140 -300 170 -300 {lab=VCC}
N -80 -240 -50 -240 {lab=VCC}
N -80 -300 -80 -240 {lab=VCC}
N -50 -40 -50 -10 {lab=VBN}
N 140 -40 140 -10 {lab=#net2}
N -260 -300 -230 -300 {lab=VCC}
N 40 -300 140 -300 {lab=VCC}
N -10 -240 90 -240 {lab=VBP}
N 50 -240 50 -180 {lab=VBP}
N 50 -180 140 -180 {lab=VBP}
N 90 -240 100 -240 {lab=VBP}
N 30 -300 40 -300 {lab=VCC}
N 140 -210 140 -100 {lab=VBP}
N -50 -210 -50 -100 {lab=#net3}
N -10 20 100 20 {lab=VBN}
N 190 180 200 180 {lab=0}
N -220 180 130 180 {lab=0}
N -220 -300 -220 -40 {lab=VCC}
N 50 20 50 50 {lab=VBN}
N 50 -270 50 -250 {lab=VBP}
N 50 -250 50 -240 {lab=VBP}
N 100 110 120 110 {lab=0}
N 100 110 100 180 {lab=0}
N 340 -300 340 -250 {lab=VCC}
N 170 -300 340 -300 {lab=VCC}
N 340 -190 340 -140 {lab=VBN}
N 380 -220 460 -220 {lab=rst_n}
N 460 -220 460 -130 {lab=rst_n}
N 460 -70 460 180 {lab=0}
N 200 180 460 180 {lab=0}
N 460 -220 480 -220 {lab=rst_n}
N 50 -20 50 20 {lab=VBN}
N -50 -20 50 -20 {lab=VBN}
N 300 -220 340 -220 {lab=VCC}
N 300 -230 300 -220 {lab=VCC}
N 300 -260 300 -230 {lab=VCC}
N 300 -260 340 -260 {lab=VCC}
C {vsource.sym} -220 -10 0 0 {name=V1 value="PWL(0 0 10u 1.8 100u 1.8)" savecurrent=false}
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
L=1084
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {gnd.sym} -50 200 0 0 {name=l1 lab=0}
C {ammeter.sym} 140 -70 0 0 {name=VSRIGHT savecurrent=true spice_ignore=0}
C {ammeter.sym} -50 -70 0 0 {name=VSLEFT savecurrent=true spice_ignore=0}
C {code.sym} -230 280 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -80 290 0 0 {name=s1 only_toplevel=false value="
.control

  save all
  tran 1n 1m

  plot vsleft#branch vsright#branch

  plot vcc rst_n

.endc
"}
C {lab_pin.sym} -260 -300 0 0 {name=p1 sig_type=std_logic lab=VCC}
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
C {vsource.sym} 460 -100 0 0 {name=V2 value="PWL(0 0 50u 0 51u 1.8 100u 1.8)" savecurrent=false}
C {lab_pin.sym} 480 -220 2 0 {name=p4 sig_type=std_logic lab=rst_n}
