v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 0 -120 20 {lab=IN}
N -120 0 -60 0 {lab=IN}
N -220 -50 -220 20 {lab=VDD}
N -220 -70 0 -70 {lab=VDD}
N -220 80 -220 100 {lab=0}
N -220 100 -120 100 {lab=0}
N -120 80 -120 100 {lab=0}
N -120 100 0 100 {lab=0}
N 0 50 0 100 {lab=0}
N -120 100 -120 120 {lab=0}
N 60 0 100 0 {lab=OUT}
N 100 0 100 20 {lab=OUT}
N 100 80 100 100 {lab=0}
N 0 100 100 100 {lab=0}
N -220 -70 -220 -50 {lab=VDD}
N 0 -70 0 -50 {lab=VDD}
C {inv.sym} 80 0 0 0 {name=x1}
C {vsource.sym} -120 50 0 0 {name=VIN value=0 savecurrent=false}
C {vsource.sym} -220 50 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -120 120 0 0 {name=l1 lab=0}
C {capa.sym} 100 50 0 0 {name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {code_shown.sym} 230 0 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt

.dc VIN 0 1.8 0.002

.control

plot v(IN) v(OUT)

.endc
"}
C {lab_pin.sym} -220 -70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -120 0 0 0 {name=p2 sig_type=std_logic lab=IN}
C {lab_pin.sym} 100 0 0 1 {name=p3 sig_type=std_logic lab=OUT}
