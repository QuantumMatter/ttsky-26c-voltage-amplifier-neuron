v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 1350 220 {}
N 100 -40 140 -40 {lab=VBP_REF10N}
N 100 -20 140 -20 {lab=VBP_REF1N}
N 100 0 140 0 {lab=VBN_REF10N}
N 100 20 140 20 {lab=VBN_REF1N}
N 580 -160 580 -120 {lab=VCC}
N 1300 -160 1300 -120 {lab=VCC}
N 1300 -60 1300 -20 {lab=#net1}
N 580 -60 580 -20 {lab=#net2}
N 580 40 580 80 {lab=#net3}
N 1300 40 1300 80 {lab=#net4}
N 580 140 580 180 {lab=0}
N 1300 140 1300 180 {lab=0}
N 1300 110 1340 110 {lab=0}
N 1340 110 1340 170 {lab=0}
N 1340 170 1340 180 {lab=0}
N 580 -90 620 -90 {lab=VCC}
N 620 -160 620 -90 {lab=VCC}
N 580 -160 620 -160 {lab=VCC}
N 1240 110 1260 110 {lab=VBN_REF1N}
N 520 -90 540 -90 {lab=VBP_REF10N}
N 1060 -160 1060 -120 {lab=VCC}
N 1060 -60 1060 -20 {lab=#net5}
N 1060 40 1060 80 {lab=#net6}
N 1060 140 1060 180 {lab=0}
N 1060 110 1100 110 {lab=0}
N 1100 110 1100 170 {lab=0}
N 1100 170 1100 180 {lab=0}
N 1000 110 1020 110 {lab=VBN_REF10N}
N 820 -160 820 -120 {lab=VCC}
N 820 -60 820 -20 {lab=#net7}
N 820 40 820 80 {lab=#net8}
N 820 140 820 180 {lab=0}
N 820 -90 860 -90 {lab=VCC}
N 860 -160 860 -90 {lab=VCC}
N 820 -160 860 -160 {lab=VCC}
N 760 -90 780 -90 {lab=VBP_REF1N}
N -0 -160 -0 -80 {lab=VCC}
N -0 -160 580 -160 {lab=VCC}
N 620 -160 820 -160 {lab=VCC}
N 860 -160 1060 -160 {lab=VCC}
N 1060 -160 1300 -160 {lab=VCC}
N -0 180 1340 180 {lab=0}
N -0 60 -0 180 {lab=0}
N -380 140 -380 180 {lab=0}
N -380 180 -0 180 {lab=0}
N -260 100 -260 180 {lab=0}
N -260 -10 -260 40 {lab=rst_n}
N -260 -10 -70 -10 {lab=rst_n}
N -380 -160 -380 80 {lab=VCC}
N -380 -160 -0 -160 {lab=VCC}
N 0 180 0 200 {lab=0}
N -280 -10 -260 -10 {lab=rst_n}
N -400 -160 -380 -160 {lab=VCC}
C {bmr.sym} 80 0 0 0 {name=x1}
C {lab_pin.sym} 140 -40 0 1 {name=p1 sig_type=std_logic lab=VBP_REF10N}
C {lab_pin.sym} 140 -20 0 1 {name=p2 sig_type=std_logic lab=VBP_REF1N}
C {lab_pin.sym} 140 0 0 1 {name=p3 sig_type=std_logic lab=VBN_REF10N}
C {lab_pin.sym} 140 20 0 1 {name=p4 sig_type=std_logic lab=VBN_REF1N}
C {ammeter.sym} 1300 10 0 0 {name=vsn1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 580 10 0 0 {name=vsp10 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 1280 110 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 560 -90 0 0 {name=M2
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
C {vsource.sym} 1300 -90 0 0 {name=VDN1 value=0 savecurrent=false}
C {vsource.sym} 580 110 0 0 {name=VDP10 value=0 savecurrent=false}
C {lab_pin.sym} 1240 110 0 0 {name=p5 sig_type=std_logic lab=VBN_REF1N}
C {lab_pin.sym} 520 -90 0 0 {name=p6 sig_type=std_logic lab=VBP_REF10N}
C {ammeter.sym} 1060 10 0 0 {name=vsn10 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 1040 110 0 0 {name=M3
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
C {vsource.sym} 1060 -90 0 0 {name=VDN10 value=0 savecurrent=false}
C {lab_pin.sym} 1000 110 0 0 {name=p7 sig_type=std_logic lab=VBN_REF10N}
C {ammeter.sym} 820 10 0 0 {name=vsp1 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/pfet_01v8.sym} 800 -90 0 0 {name=M4
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
C {vsource.sym} 820 110 0 0 {name=VDP1 value=0 savecurrent=false}
C {lab_pin.sym} 760 -90 0 0 {name=p8 sig_type=std_logic lab=VBP_REF1N}
C {vsource.sym} -380 110 0 0 {name=V1 value="DC 1.8 PWL(0 0 10u 1.8 100u 1.8)" savecurrent=false}
C {vsource.sym} -260 70 0 0 {name=V2 value="DC 1.8 PWL(0 0 50u 0 51u 1.8 100u 1.8)" savecurrent=false}
C {gnd.sym} 0 200 0 0 {name=l1 lab=0}
C {lab_pin.sym} -280 -10 0 0 {name=p9 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} -400 -160 0 0 {name=p10 sig_type=std_logic lab=VCC}
C {code.sym} -390 300 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -220 310 0 0 {name=s1 only_toplevel=false value="
.nodeset V(VBN_REF10N)=0.475 V(VBP_REF10N)=0.901
.control

  save all
  tran 10n 200u
  dc VDN1  0 1.8 0.005
  dc VDN10 0 1.8 0.005
  dc VDP1  0 1.8 0.005
  dc VDP10 0 1.8 0.005

  plot tran1.vsn10#branch tran1.vsp10#branch ylimit 0 15n
  plot tran1.vsn1#branch tran1.vsp1#branch ylimit 0 2n
  plot tran1.vcc tran1.rst_n

  plot dc1.vsn1#branch dc3.vsp1#branch ylimit -1n 2n
  plot dc2.vsn10#branch dc4.vsp10#branch ylimit -10n 20n

  let nratio = dc2.vsn10#branch / dc1.vsn1#branch
  let pratio = dc4.vsp10#branch / dc3.vsn1#branch

  plot nratio pratio


.endc
"}
