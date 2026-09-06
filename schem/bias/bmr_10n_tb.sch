v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 270 240 {}
N 60 -0 80 0 {lab=VBN}
N 60 -20 80 -20 {lab=VBP}
N -140 -10 -140 20 {lab=rst_n}
N -140 -10 -60 -10 {lab=rst_n}
N -240 -140 -240 20 {lab=VCC}
N -240 -140 400 -140 {lab=VCC}
N 400 -140 400 -100 {lab=VCC}
N 220 -140 220 -100 {lab=VCC}
N 220 -40 220 -0 {lab=#net1}
N 400 -40 400 -0 {lab=#net2}
N 400 60 400 100 {lab=#net3}
N 220 60 220 100 {lab=#net4}
N -240 80 -240 200 {lab=0}
N -240 200 400 200 {lab=0}
N 400 160 400 200 {lab=0}
N 220 160 220 200 {lab=0}
N 220 130 260 130 {lab=0}
N 260 130 260 190 {lab=0}
N 260 190 260 200 {lab=0}
N 400 -70 440 -70 {lab=VCC}
N 440 -140 440 -70 {lab=VCC}
N 400 -140 440 -140 {lab=VCC}
N 160 130 180 130 {lab=VBN}
N 340 -70 360 -70 {lab=VBP}
N -140 80 -140 200 {lab=0}
N -0 -140 -0 -60 {lab=VCC}
N 0 40 0 200 {lab=0}
N -160 -10 -140 -10 {lab=rst_n}
N -260 -140 -240 -140 {lab=VCC}
N -240 200 -240 220 {lab=0}
C {bmr_10n.sym} 40 0 0 0 {name=x1}
C {vsource.sym} -240 50 0 0 {name=V1 value="DC 1.8 PWL(0 0 10u 1.8 100u 1.8)" savecurrent=false}
C {vsource.sym} -140 50 0 0 {name=V2 value="DC 1.8 PWL(0 0 50u 0 51u 1.8 100u 1.8)" savecurrent=false}
C {ammeter.sym} 220 30 0 0 {name=vsn savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 30 0 0 {name=vsp savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 200 130 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 380 -70 0 0 {name=M2
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
C {vsource.sym} 220 -70 0 0 {name=VDN value=0 savecurrent=false}
C {vsource.sym} 400 130 0 0 {name=VDP value=0 savecurrent=false}
C {lab_pin.sym} 80 -20 0 1 {name=p1 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 80 0 0 1 {name=p2 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 160 130 0 0 {name=p3 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 340 -70 0 0 {name=p4 sig_type=std_logic lab=VBP}
C {code.sym} -250 300 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -80 310 0 0 {name=s1 only_toplevel=false value="
.nodeset V(VBN)=0.475 V(VBP)=0.901
.control

  save all
  tran 10n 200u
  dc VDN 0 1.8 0.005
  dc VDP 0 1.8 0.005

  plot tran1.vsn#branch tran1.vsp#branch ylimit 0 15n
  plot tran1.vcc tran1.rst_n

  plot dc1.vsn#branch dc2.vsp#branch ylimit -10n 20n

.endc
"}
C {lab_pin.sym} -160 -10 0 0 {name=p5 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} -260 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {gnd.sym} -240 220 0 0 {name=l1 lab=0}
