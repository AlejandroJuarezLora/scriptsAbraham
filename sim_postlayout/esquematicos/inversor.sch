v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 50 -430 850 -30 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 490 -560 490 -500 {lab=A}
N 450 -530 490 -530 {lab=A}
N 530 -530 620 -530 {lab=B}
N 530 -500 530 -470 {lab=0}
N 530 -590 530 -560 {lab=vdd}
C {gf180mcu_fd_pr/nfet_03v3.sym} 510 -500 0 0 {name=M1
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
C {gf180mcu_fd_pr/pfet_03v3.sym} 510 -560 0 0 {name=M2
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
C {vsource.sym} 300 -510 0 0 {name=V1 value="pwl(0 0 100u 3.3)" savecurrent=false}
C {vsource.sym} 220 -510 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 300 -480 0 0 {name=l1 lab=0}
C {gnd.sym} 220 -480 0 0 {name=l2 lab=0}
C {gnd.sym} 530 -470 0 0 {name=l3 lab=0}
C {lab_pin.sym} 450 -530 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 620 -530 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 530 -590 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 220 -540 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 300 -540 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/code.sym} 80 -570 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 670 -590 0 0 {name=spice only_toplevel=false value=".tran 0.1n 100u
.control
 save all
 run
 write inversor.raw
 plot a b
.endc"}
