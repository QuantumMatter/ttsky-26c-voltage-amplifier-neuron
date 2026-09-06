v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 1210 210 1250 {lab=0}
N 210 1250 350 1250 {lab=0}
N 350 1210 350 1250 {lab=0}
N 350 1110 350 1150 {lab=VBIASP_1N}
N 210 1110 210 1150 {lab=VBIASN_1N}
N 250 1180 310 1180 {lab=VBIASN_1N}
N 390 1080 430 1080 {lab=VBIASP_1N}
N 350 1020 350 1050 {lab=VCC}
N 210 990 210 1050 {lab=VCC}
N 350 990 350 1020 {lab=VCC}
N 210 990 350 990 {lab=VCC}
N 190 990 210 990 {lab=VCC}
N 280 1250 280 1270 {lab=0}
N 350 1180 410 1180 {lab=0}
N 410 1180 410 1250 {lab=0}
N 350 1250 410 1250 {lab=0}
N 150 1180 210 1180 {lab=0}
N 150 1180 150 1250 {lab=0}
N 150 1250 210 1250 {lab=0}
N 310 1080 350 1080 {lab=VCC}
N 310 1020 310 1080 {lab=VCC}
N 310 1020 350 1020 {lab=VCC}
N 280 1130 280 1180 {lab=VBIASN_1N}
N 210 1130 280 1130 {lab=VBIASN_1N}
N 430 1080 470 1080 {lab=VBIASP_1N}
N 410 1080 410 1130 {lab=VBIASP_1N}
N 350 1130 410 1130 {lab=VBIASP_1N}
N 160 1130 210 1130 {lab=VBIASN_1N}
N 740 1230 740 1260 {lab=0}
N 660 1200 700 1200 {lab=VBIASN_1N}
N 740 1200 780 1200 {lab=0}
N 780 1200 780 1240 {lab=0}
N 740 1240 780 1240 {lab=0}
N 740 1140 740 1170 {lab=#net1}
N 740 1060 740 1080 {lab=#net2}
N 740 960 740 1000 {lab=VCC}
N 720 960 740 960 {lab=VCC}
N 940 1020 980 1020 {lab=VBIASP_1N}
N 1020 960 1020 990 {lab=VCC}
N 740 960 1020 960 {lab=VCC}
N 1020 1220 1020 1260 {lab=0}
N 1020 1140 1020 1160 {lab=#net3}
N 1020 1050 1020 1080 {lab=#net4}
N 1020 1020 1060 1020 {lab=VCC}
N 1060 980 1060 1020 {lab=VCC}
N 1020 980 1060 980 {lab=VCC}
N 0 1180 0 1270 {lab=0}
N -0 990 -0 1120 {lab=VCC}
N -50 990 -0 990 {lab=VCC}
C {isource.sym} 210 1080 0 0 {name=I0 value=1n}
C {sky130_fd_pr/nfet_01v8.sym} 230 1180 0 1 {name=M9
W=1
L=\{L\}
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
C {sky130_fd_pr/nfet_01v8.sym} 330 1180 0 0 {name=M10
W=1
L=\{L\}
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
C {lab_pin.sym} 190 990 0 0 {name=p23 sig_type=std_logic lab=VCC}
C {gnd.sym} 280 1270 0 0 {name=l2 lab=0}
C {lab_pin.sym} 470 1080 0 1 {name=p24 sig_type=std_logic lab=VBIASP_1N}
C {lab_pin.sym} 160 1130 0 0 {name=p25 sig_type=std_logic lab=VBIASN_1N}
C {code.sym} 130 1340 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {sky130_fd_pr/nfet_01v8.sym} 720 1200 0 0 {name=M1
W=1
L=\{L\}
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
C {gnd.sym} 740 1260 0 0 {name=l1 lab=0}
C {lab_pin.sym} 660 1200 0 0 {name=p1 sig_type=std_logic lab=VBIASN_1N}
C {ammeter.sym} 740 1110 0 0 {name=VSN savecurrent=true spice_ignore=0}
C {vsource.sym} 740 1030 0 0 {name=V1 value=0 savecurrent=false}
C {lab_pin.sym} 720 960 0 0 {name=p2 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 1020 0 0 {name=p3 sig_type=std_logic lab=VBIASP_1N}
C {ammeter.sym} 1020 1110 0 0 {name=VSP savecurrent=true spice_ignore=0}
C {vsource.sym} 1020 1190 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 1020 1260 0 0 {name=l3 lab=0}
C {code_shown.sym} 320 1350 0 0 {name=s1 only_toplevel=false value="
.param L=1
.control

  save all

  dc V1 0 1.8 0.005
  dc V2 0 1.8 0.005

  alterparam L=2
  reset
  dc V1 0 1.8 0.005
  dc V2 0 1.8 0.005

  alterparam L=4
  reset
  dc V1 0 1.8 0.005
  dc V2 0 1.8 0.005

  alterparam L=8
  reset
  dc V1 0 1.8 0.005
  dc V2 0 1.8 0.005

  plot dc1.vsn#branch dc3.vsn#branch dc5.vsn#branch dc7.vsn#branch
  plot dc2.vsp#branch dc4.vsp#branch dc6.vsp#branch dc8.vsp#branch

.endc
"}
C {gnd.sym} 0 1270 0 0 {name=l4 lab=0}
C {lab_pin.sym} -50 990 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {vsource.sym} 0 1150 0 0 {name=V3 value=1.8 savecurrent=false}
C {sky130_fd_pr/pfet_01v8.sym} 1000 1020 0 0 {name=M2
W=1
L=\{L\}
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
C {sky130_fd_pr/pfet_01v8.sym} 370 1080 0 1 {name=M3
W=1
L=\{L\}
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
