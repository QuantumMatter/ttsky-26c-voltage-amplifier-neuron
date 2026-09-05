v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 1060 180 1140 {lab=#net1}
N 180 1060 640 1060 {lab=#net1}
N 640 1060 640 1100 {lab=#net1}
N 180 1200 180 1320 {lab=0}
N 180 1320 640 1320 {lab=0}
N 640 1260 640 1320 {lab=0}
N 520 1280 520 1320 {lab=0}
N 440 1280 440 1320 {lab=0}
N 360 1280 360 1320 {lab=0}
N 520 1200 520 1220 {lab=#net2}
N 520 1200 580 1200 {lab=#net2}
N 440 1180 580 1180 {lab=#net3}
N 440 1180 440 1220 {lab=#net3}
N 360 1160 360 1220 {lab=#net4}
N 360 1160 580 1160 {lab=#net4}
N 440 1320 440 1360 {lab=0}
N 720 1180 780 1180 {lab=VOUT}
C {vsource.sym} 180 1170 0 0 {name=VSS value=1.8 savecurrent=false}
C {vsource.sym} 520 1250 0 0 {name=VBIAS value=0.7 savecurrent=false}
C {vsource.sym} 440 1250 0 0 {name=VMINUS value=0.9 savecurrent=false}
C {vsource.sym} 360 1250 0 0 {name=VPLUS value=0.9 savecurrent=false}
C {gnd.sym} 440 1360 0 0 {name=l1 lab=0}
C {ota.sym} 700 1120 0 0 {name=x1}
C {lab_pin.sym} 780 1180 0 1 {name=p1 sig_type=std_logic lab=VOUT}
C {code.sym} 890 1060 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} 900 1230 0 0 {name=s1 only_toplevel=false value="
.control
save all

op
print x1.vbot

.endc
"}
