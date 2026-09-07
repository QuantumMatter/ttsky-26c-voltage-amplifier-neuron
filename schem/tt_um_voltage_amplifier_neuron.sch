v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 1160 640 1160 {lab=ua[0]}
N 520 1250 520 1300 {lab=VGND}
N 520 1030 520 1070 {lab=VDPWR}
N 410 1110 440 1110 {lab=rst_n}
N 410 1130 440 1130 {lab=ui_in[0]}
N 410 1150 440 1150 {lab=ui_in[1]}
N 410 1170 440 1170 {lab=ui_in[2]}
N 410 1190 440 1190 {lab=ui_in[3]}
N 410 1210 440 1210 {lab=ui_in[4]}
C {vamp_if_neuron.sym} 580 1150 0 0 {name=x1}
C {iopin.sym} 520 1030 0 1 {name=p27 lab=VDPWR}
C {iopin.sym} 520 1300 0 1 {name=p49 lab=VGND}
C {ipin.sym} 410 1110 0 0 {name=p50 lab=rst_n}
C {opin.sym} 640 1160 0 0 {name=p51 lab=ua[0]}
C {ipin.sym} 410 1130 0 0 {name=p52 lab=ui_in[0]}
C {ipin.sym} 410 1150 0 0 {name=p53 lab=ui_in[1]}
C {ipin.sym} 410 1170 0 0 {name=p54 lab=ui_in[2]}
C {ipin.sym} 410 1190 0 0 {name=p55 lab=ui_in[3]}
C {ipin.sym} 410 1210 0 0 {name=p56 lab=ui_in[4]}
