v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 810 -410 1610 -10 {flags=graph
y1=-7.8e-13
y2=0.017
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=bpex
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
C {vsource.sym} 300 -510 0 0 {name=V1 value="pwl(0 0 100u 3.3)" savecurrent=false}
C {vsource.sym} 220 -510 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 300 -480 0 0 {name=l1 lab=0}
C {gnd.sym} 220 -480 0 0 {name=l2 lab=0}
C {gnd.sym} 530 -490 0 0 {name=l3 lab=0}
C {lab_pin.sym} 480 -530 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 610 -530 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 530 -570 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 220 -540 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 300 -540 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/code.sym} 80 -570 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 670 -590 0 0 {name=spice only_toplevel=false value=".include /foss/designs/curso/LayOut/layout_inversor/inversor_pex.spice
.tran 0.1n 100u
.control
 save all
 run
 write inversor_tb_pex.raw
 plot a b
.endc"}
C {/foss/designs/curso/sch/inversor_simbolo.sym} 400 -380 0 0 {name=x1}
C {gnd.sym} 530 -320 0 0 {name=l4 lab=0}
C {lab_pin.sym} 610 -360 0 1 {name=p7 sig_type=std_logic lab=Bpex}
C {lab_pin.sym} 530 -400 1 0 {name=p8 sig_type=std_logic lab=vdd}
C {/foss/designs/curso/sch/inversor_simbolo_pex.sym} 400 -210 0 0 {name=x2}
C {lab_pin.sym} 480 -360 0 0 {name=p6 sig_type=std_logic lab=A}
