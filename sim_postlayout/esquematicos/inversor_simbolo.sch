v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -190 280 -130 {lab=A}
N 240 -160 280 -160 {lab=A}
N 320 -160 410 -160 {lab=B}
N 320 -130 320 -100 {lab=gnd}
N 320 -220 320 -190 {lab=vdd}
C {gf180mcu_fd_pr/nfet_03v3.sym} 300 -130 0 0 {name=M1
L=0.28u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet_03v3.sym} 300 -190 0 0 {name=M2
L=0.28u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 240 -160 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 410 -160 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 320 -220 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 140 -180 2 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 140 -140 0 1 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} 140 -100 0 1 {name=p6 sig_type=std_logic lab=B}
C {lab_pin.sym} 140 -220 2 0 {name=p7 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 320 -100 3 0 {name=p8 sig_type=std_logic lab=gnd}
C {ipin.sym} 140 -140 0 0 {name=p9 lab=A}
C {opin.sym} 140 -100 0 1 {name=p10 lab=B}
C {iopin.sym} 140 -220 0 1 {name=p11 lab=gnd}
C {iopin.sym} 140 -180 0 1 {name=p12 lab=vdd}
