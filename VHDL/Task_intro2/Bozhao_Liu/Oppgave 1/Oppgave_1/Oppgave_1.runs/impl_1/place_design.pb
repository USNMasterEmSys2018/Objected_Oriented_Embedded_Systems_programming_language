
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2036.9302default:default2
0.0002default:default2
7152default:default2
55092default:defaultZ17-722h px� 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 11b4a5d68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2036.930 ; gain = 0.000 ; free physical = 715 ; free virtual = 55092default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2036.9302default:default2
0.0002default:default2
7152default:default2
55092default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 11b4a5d68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.52 ; elapsed = 00:00:00.46 . Memory (MB): peak = 2036.930 ; gain = 0.000 ; free physical = 714 ; free virtual = 55082default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1aeecadbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.56 ; elapsed = 00:00:00.48 . Memory (MB): peak = 2036.930 ; gain = 0.000 ; free physical = 714 ; free virtual = 55082default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1aeecadbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.49 . Memory (MB): peak = 2036.930 ; gain = 0.000 ; free physical = 714 ; free virtual = 55082default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1aeecadbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.49 . Memory (MB): peak = 2036.930 ; gain = 0.000 ; free physical = 714 ; free virtual = 55082default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 1aeecadbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.62 ; elapsed = 00:00:00.52 . Memory (MB): peak = 2036.930 ; gain = 0.000 ; free physical = 713 ; free virtual = 55072default:defaulth px� 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px� 
D
/Phase 2 Global Placement | Checksum: 1ff104c5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.78 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 705 ; free virtual = 54992default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1ff104c5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.79 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 705 ; free virtual = 54992default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 16fb81e28
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.81 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 705 ; free virtual = 54992default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1973bf289
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.84 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 705 ; free virtual = 54992default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1973bf289
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.84 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 705 ; free virtual = 54992default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
Q
<Phase 3.5 Small Shape Detail Placement | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.96 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
G
2Phase 3.6 Re-assign LUT pins | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.96 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
S
>Phase 3.7 Pipeline Register Optimization | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.97 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
C
.Phase 3 Detail Placement | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.97 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.98 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.99 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.99 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.4 Final Placement Cleanup | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: 95598f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 704 ; free virtual = 54982default:defaulth px� 
=
(Ending Placer Task | Checksum: 65dd8adc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2140.973 ; gain = 104.043 ; free physical = 708 ; free virtual = 55022default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.092default:default2
00:00:00.062default:default2
2140.9732default:default2
0.0002default:default2
7052default:default2
55012default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 1/Oppgave_1/Oppgave_1.runs/impl_1/Three_bit_adder_placed.dcp2default:defaultZ17-1381h px� 
j
%s4*runtcl2N
:Executing : report_io -file Three_bit_adder_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.25 ; elapsed = 00:00:00.32 . Memory (MB): peak = 2140.973 ; gain = 0.000 ; free physical = 696 ; free virtual = 5493
*commonh px� 
�
%s4*runtcl2�
vExecuting : report_utilization -file Three_bit_adder_utilization_placed.rpt -pb Three_bit_adder_utilization_placed.pb
2default:defaulth px� 
�
�report_utilization: Time (s): cpu = 00:00:00.16 ; elapsed = 00:00:00.21 . Memory (MB): peak = 2140.973 ; gain = 0.000 ; free physical = 705 ; free virtual = 5501
*commonh px� 
�
%s4*runtcl2k
WExecuting : report_control_sets -verbose -file Three_bit_adder_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.18 . Memory (MB): peak = 2140.973 ; gain = 0.000 ; free physical = 704 ; free virtual = 5500
*commonh px� 


End Record