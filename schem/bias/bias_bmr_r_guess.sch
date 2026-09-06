v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -140 -140 -20 {lab=#net1}
N -140 -140 20 -140 {lab=#net1}
N 20 -140 20 -100 {lab=#net1}
N 20 -40 20 20 {lab=VG}
N 20 80 20 120 {lab=#net2}
N -140 40 -140 120 {lab=#net2}
N -140 120 20 120 {lab=#net2}
N -50 50 -20 50 {lab=VG}
N -50 -10 -50 50 {lab=VG}
N -50 -10 20 -10 {lab=VG}
N 20 50 50 50 {lab=#net2}
N 50 50 50 90 {lab=#net2}
N 20 90 50 90 {lab=#net2}
N 20 -10 70 -10 {lab=VG}
C {vsource.sym} -140 10 0 0 {name=V1 value=1.8 savecurrent=false}
C {isource.sym} 20 -70 0 0 {name=I0 value=100n}
C {sky130_fd_pr/nfet_01v8.sym} 0 50 0 0 {name=M1
W=\{W\}
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
C {lab_pin.sym} 70 -10 0 1 {name=p1 sig_type=std_logic lab=VG}
C {code.sym} -210 180 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -40 190 0 0 {name=s1 only_toplevel=false value="
.param W = 1
.control

  alterparam W=1
  reset
  dc V1 0.2 2.5 0.005

  alterparam W=8
  reset
  dc V1 0.2 2.5 0.005

  let r_guess = (dc1.vg - dc2.vg) / (10e-9)
  plot r_guess

.endc
"
}
