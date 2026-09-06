v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {IN1: 0.3nA
IN2: 0.6nA
IN3: 1.15nA
IN4: 1.15nA
IN5: 2.21nA} -420 140 0 0 0.4 0.4 {}
N 360 210 450 210 {lab=#net1}
N 510 210 690 210 {lab=V_PAD}
N 630 210 630 250 {lab=V_PAD}
N 550 210 550 250 {lab=V_PAD}
N -160 260 -160 400 {lab=0}
N -160 400 630 400 {lab=0}
N 630 310 630 400 {lab=0}
N 550 310 550 400 {lab=0}
N 280 300 280 400 {lab=0}
N -160 80 -160 210 {lab=#net2}
N -160 80 280 80 {lab=#net2}
N 280 80 280 120 {lab=#net2}
N -90 160 -90 250 {lab=#net3}
N -90 160 200 160 {lab=#net3}
N -90 320 -90 390 {lab=0}
N -90 390 -90 400 {lab=0}
N 100 260 200 260 {lab=#net2}
N 120 240 200 240 {lab=0}
N 280 400 280 430 {lab=0}
N -90 250 -90 260 {lab=#net3}
N 160 200 200 200 {lab=#net2}
N 100 80 100 260 {lab=#net2}
N 180 180 200 180 {lab=#net2}
N 140 220 200 220 {lab=0}
N 140 220 140 400 {lab=0}
N 120 240 120 400 {lab=0}
N 160 80 160 200 {lab=#net2}
N 180 80 180 180 {lab=#net2}
C {vsource.sym} -160 230 0 0 {name=V1 value="DC 1.8 PWL(0 0 10u 1.8 100u 1.8)" savecurrent=false}
C {vsource.sym} -90 290 0 0 {name=V3 value="DC 1.8 PWL(0 0 50u 0 51u 1.8 100u 1.8)" savecurrent=false}
C {res.sym} 480 210 3 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {res.sym} 550 280 0 0 {name=R2
value=5meg
footprint=1206
device=resistor
m=1}
C {capa.sym} 630 280 0 0 {name=C3
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 690 210 0 1 {name=p27 sig_type=std_logic lab=V_PAD}
C {code_shown.sym} 0 510 0 0 {name=s1 only_toplevel=false value="
# .lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.save all
.control

  tran 100n 10m uic

# plot v_mem v_inv1 v_inv2
# plot i(vsna) i(vsk) i(vskup) i(vskdown) ylimit -10n 10n
# plot v_mem v_mem_buf v_pad

  plot v_pad


.endc
"}
C {vamp_if_neuron.sym} 340 200 0 0 {name=x1}
C {gnd.sym} 280 430 0 0 {name=l1 lab=0}
C {code.sym} -170 500 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
