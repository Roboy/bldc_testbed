=================================================================================================================================
								   Simple Sigma-Delta ADC Reference Design
=================================================================================================================================

******************************************************** IMPORTANT NOTES ********************************************************
	Unzip the SimpleSigmaDeltaADCSourceCodeyy.y.zip file using the existing folder names, where yy.y is the current version of the zip file.
	The unzipped directory structure will be as below: 
	
	Note: 	
		The Folders are denoted using "[ ]" brackets, and the Files are denoted using their extensions.

[rd1066_simple_sigma_delta_adc]
		[rd1066]
			a.	[docs]
				1.	FPGA-RD-02047-1-5-Simple-Sigma-Delta-ADC.pdf			-->  Simple Sigma-Delta ADC design document
				2.	SSD_ADC_readme.txt										-->  read me file (this file)
				
			b.	[project]
					b.1	[xo]
						b.1.1	[verilog]
							1. \rd1066\project\xo\verilog\xo_verilog.lpf      -->  Lattice Preference File for MachXO Device
							2. \rd1066\project\xo\verilog\xo_verilog.ldf      -->  Lattice Diamond Project File for MachXO Device
							3. \rd1066\project\xo\verilog\xo_verilog.sty      -->  Lattice Diamond Project Strategy File for MachXO Device           
						b.1.2   [vhdl]
							1. \rd1066\project\xo\vhdl\xo_vhdl.lpf            -->  Lattice Preference File for MachXO Device
							2. \rd1066\project\xo\vhdl\xo_vhdl.ldf            -->  Lattice Diamond Project File for MachXO Device
							3. \rd1066\project\xo\vhdl\xo_vhdl.sty            -->  Lattice Diamond Project Strategy File for MachXO Device
					b.2	[xo2]		
						b.2.1	[verilog]		
							1. \rd1066\project\xo2\verilog\xo2_verilog.lpf    -->  Lattice Preference File for MachXO2 Device
							2. \rd1066\project\xo2\verilog\xo2_verilog.ldf    -->  Lattice Diamond Project File for MachXO2 Device	
							3. \rd1066\project\xo2\verilog\xo2_verilog.sty    -->  Lattice Diamond Project Strategy File for MachXO2 Device
							
						b.2.2	[vhdl]		
							1. \rd1066\project\xo2\vhdl\xo2_vhdl.lpf          -->  Lattice Preference File for MachXO2 Device
							2. \rd1066\project\xo2\vhdl\xo2_vhdl.ldf          -->  Lattice Diamond Project File for MachXO2 Device
                            				3. \rd1066\project\xo2\vhdl\xo2_vhdl.sty          -->  Lattice Diamond Project Strategy File for MachXO2 Device	
							
					b.3	[xp2]	
						b3.1   [verilog]	
							1. \rd1066\project\xp2\verilog\xp2_verilog.lpf    -->  Lattice Preference File for XP2 Device
							2. \rd1066\project\xp2\verilog\xp2_verilog.ldf    -->  Lattice Diamond Project File for XP2 Device
							3. \rd1066\project\xp2\verilog\xp2_verilog.sty    -->  Lattice Diamond Project Strategy File for XP2 Device
						b3.2   [vhdl]	
							1. \rd1066\project\xp2\vhdl\xp2_vhdl.lpf          -->  Lattice Preference File for XP2 Device
							2. \rd1066\project\xp2\vhdl\xp2_vhdl.ldf          -->  Lattice Diamond Project File for XP2 Device
							3. \rd1066\project\xp2\vhdl\xp2_vhdl.sty          -->  Lattice Diamond Project Strategy File for XP2 Device
					
					b.4 [ice40up]
						b4.1	[verilog]
							1. \rd1066\project\ice40up\ice40up_verilog.pdc    -->  Lattice Preference File for ice40up Device
							2. \rd1066\project\ice40up\ice40up_verilog.rdf    -->  Lattice Radiant Project File for ice40up Device
							3. \rd1066\project\ice40up\ice40up_verilog.sty    -->  Lattice Radiant Project Strategy File for ice40up Device
							
			c.	[simulation]		
					c.1	[xo]		
						c.1.1	[verilog]		
							1. \rd1066\simulation\xo\verilog\rtl_verilog.do   -->  Verilog RTL Simulation Script for XO
							2. \rd1066\simulation\xo\verilog\timing_verilog.do-->  Verilog Timing Simulation Script for XO
							
						c.1.2	[vhdl]		
							1. \rd1066\simulation\xo\vhdl\rtl_vhdl.do         -->  VHDL RTL Simulation Script for XO
							2. \rd1066\simulation\xo\vhdl\timing_vhdl.do      -->  VHDL Timing Simulation Script for XO
									
					c.2	[xo2]
						c.2.1	[verilog]
							1. \rd1066\simulation\xo2\verilog\rtl_verilog.do   -->  Verilog RTL Simulation Script for XO2
							2. \rd1066\simulation\xo2\verilog\timing_verilog.do-->  Verilog Timing Simulation Script for XO2
							
						c.2.2	[vhdl]
							1. \rd1066\simulation\xo2\vhdl\rtl_vhdl.do         -->  VHDL RTL Simulation Script for XO2
							2. \rd1066\simulation\xo2\vhdl\timing_vhdl.do      -->  VHDL Timing Simulation Script for XO2
					c.3 [xp2]
						c.3.1   [verilog]
							1. \rd1066\simulation\xp2\verilog\rtl_verilog.do   -->  Verilog RTL Simulation Script for XP2
							2. \rd1066\simulation\xp2\verilog\timing_verilog.do-->  Verilog Timing Simulation Script for XP2
						c.3.2   [vhdl]
							1. \rd1066\simulation\xp2\vhdl\rtl_vhdl.do         -->  VHDL RTL Simulation Script for XP2
							2. \rd1066\simulation\xp2\vhdl\timing_vhdl.do      -->  VHDL Timing Simulation Script for XP2
					
					c.4	[ice40up]
						c.4.1	[verilog]
							1. \rd1066\simulation\ice40up\verilog\rtl_verilog.do   -->  Verilog RTL Simulation Script for ice40up
							2. \rd1066\simulation\ice40up\verilog\timing_verilog.do-->  Verilog Timing Simulation Script for ice40up
			d.	[source]
					d.1	[verilog]
						1. \rd1066\source\verilog\adc_top.v               -->  Top-level Verilog source code file for xo,xo2,xp2
						2. \rd1066\source\verilog\sigmadelta_adc.v        -->  Verilog source file for xo,xo2,xp2
						3. \rd1066\source\verilog\box_ave.v               -->  Verilog source file for xo,xo2,xp2
						[radiant]
						1. \rd1066\source\ice40up_verilog\adc_top.v               -->  Top-level Verilog source code file for ice40up
						2. \rd1066\source\ice40up_verilog\sigmadelta_adc_ice40.v  -->  Verilog source file for ice40up
						3. \rd1066\source\ice40up_verilog\box_ave.v               -->  Verilog source file for ice40up
						
					d.2	[vhdl]	
						1. \rd1066\source\vhdl\adc_top.vhd                -->  Top-level VHDL source code file for xo,xo2,xp2
						2. \rd1066\source\vhdl\sigmadelta_adc.vhd         -->  VHDL source file for xo,xo2,xp2
						3. \rd1066\source\vhdl\box_ave.vhd               -->  VHDL source file for xo,xo2,xp2
						
			e.	[testbench]
					e.1	[verilog]
							1. \rd1066\testbench\verilog\adc_tf_rtl.v            	-->  Verilog testbench for rtl simulation for xo,xo2,xp2
							2. \rd1066\testbench\verilog\adc_tf.v             	-->  Verilog testbench for timing simulation for xo,xo2,xp2
						[radiant]
							1. \rd1066\testbench\ice40up_verilog\adc_tf_rtl.v            	-->  Verilog testbench for rtl simulation for ice40up
							2. \rd1066\testbench\ice40up_verilog\adc_tf.v             	-->  Verilog testbench for timing simulation for ice40up
								
					e.2	[vhdl]
							1. \rd1066\testbench\vhdl\adc_tf_rtl.vhd          -->  VHDL testbench for rtl simulation for xo,xo2,xp2
							2. \rd1066\testbench\vhdl\adc_tf.vhd              -->  VHDL testbench for timing simulation for xo,xo2,xp2
							
===================================================================================================  

USING DIAMOND SOFTWARE - HOW TO ?
------------------------------------------------------------------------------------------------------------------------------------------- 
 
1.	CREATE A PROJECT IN DIAMOND:

		a.	Launch Diamond software, in the GUI, select File >> New Project, click Next
		b. 	In the New Project pop-up, select the Project location and provide a Project name and implementation name, click Next.
		c. 	Add the necessary source files from the rd1066/source directory, click Next
		d. 	Select the desired part and speed-grade. You may use rd1124.pdf to see which device and speed-grade can be selected to achieve 
			the published timing result.
		e. 	Click Finish. Now the project is successfully created. 
		f.	MAKE SURE to include the provided .lpf and/or .sty files in your project.
			i.	To add the existing constraint file (.lpf) into your Diamond project, please do as below;
				In the Diamond's "File List" tab on the left side of the GUI, right click on "LPF Constraint Files", select "Add", 
				then select "Exiting File", browse to the .lpf file location, then click "Add". After importing, right click on the 
				imported .lpf file and select "Set as Active".
		
			ii.	To add the existing strategy (.sty) file into your Diamond project, please do as below;
				In the Diamond's "File List" tab on the left side of the GUI, right click on "Strategies", select "Add", 
				then select "Existing File", browse to the .sty file location, then click "Open". Input a name in the Strategy ID box,
				and click "OK". After importing, right click on the imported file name and select "Set as Active Strategy".
				
-------------------------------------------------------------------------------------------------------------------------------------------  

2.	RUN PLACE AND ROUTE:

		In the Diamond's "Process" tab on the left side of the GUI, Double click on "Place and Route Design". 
		This will bring the design through Synthesis, Mapping, and Place & Route processes.
		
-------------------------------------------------------------------------------------------------------------------------------------------	

3.	GENERATE TIMING ANALYSIS REPORT:

		In the Diamond's "Process" tab on the left side of the GUI, Double click on "Place and Route Trace Report" to generate the Timing 
		Analysis report.
		
-------------------------------------------------------------------------------------------------------------------------------------------	

4.	GENERATE TIMING SIMULATION FILE (.vo or .vho, and .sdf):

		In the Diamond's "Process" tab on the left side of the GUI, Double click on either "Verilog Simulation File" (.vo), 
		or "VHDL Simulation File" (.vho) as per your preference. 
		This will generate the Timing Simulation Netlist file (either .vo or .vho), as well as the Standard Delay Format file (.sdf) in the 
		implementation folder, ../rd1124/project/<Device_Family>/<HDL_Language>/<Project_Name>/
		
-------------------------------------------------------------------------------------------------------------------------------------------

5.	RUN SIMULATION ON ACTIVE-HDL:

		a.	Open the simulation do-script file, either rtl or timing, located in "../rd1066/simulation/<Device_Family>/<HDL_Language>/*.do", 
			in a text editor, and set the simulation directory path to the variable "SIM_DIR". 
			Follow the example shown in the script file to set the simulation directory path.
		b.	Open Active-HDL, Start --> All Programs --> Lattice Diamond 3.x --> Accessories --> Active-HDL Lattice Edition.  
			In the Active-HDL window, from the "Tools" menu,  select "Execute macro...", then select the simulation script file by browsing 
			to the location ../rd1066/simulation/<Device_Family>/<HDL_Language>/*.do, and click "Open".
		
			Note: 
			Running the Timing Simulation do-script file will require timing simulation netlist file (*.vo or *.vho), 
			and the Standard Delay Format file (*.sdf).
	
		c.	The simulation should end at 2.2ms without error and the console panel of the Aldec Active-HDL simulator will display:
			1. Verilog Simulations:
				# KERNEL: Asserting Reset
				# KERNEL: Time:       0 ns ADC_Conversions Verified and Do Not match
				# KERNEL: Time:       0 ns Normalized Analog Sample Value     =   0
				# KERNEL: Time:       0 ns Digital output from ADC            =   x
				# KERNEL: De-asserting Reset
				# KERNEL: Applying 2KHz sawtooth input
				# KERNEL: Time:   16472 ns ADC_Conversions Verified and they match
				# KERNEL: Time:   16472 ns Normalized Analog Sample Value     =   0
				# KERNEL: Time:   16472 ns Digital output from ADC            =   0
				# KERNEL: Time:  147544 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  147544 ns Normalized Analog Sample Value     =  22
				# KERNEL: Time:  147544 ns Digital output from ADC            =  13
				# KERNEL: Time:  278616 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  278616 ns Normalized Analog Sample Value     =  54
				# KERNEL: Time:  278616 ns Digital output from ADC            =  53
				# KERNEL: Time:  409688 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  409688 ns Normalized Analog Sample Value     =  86
				# KERNEL: Time:  409688 ns Digital output from ADC            =  86
				# KERNEL: Time:  540760 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  540760 ns Normalized Analog Sample Value     = 118
				# KERNEL: Time:  540760 ns Digital output from ADC            = 119
				# KERNEL: Time:  671832 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  671832 ns Normalized Analog Sample Value     = 150
				# KERNEL: Time:  671832 ns Digital output from ADC            = 152
				# KERNEL: Time:  802904 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  802904 ns Normalized Analog Sample Value     = 182
				# KERNEL: Time:  802904 ns Digital output from ADC            = 185
				# KERNEL: Time:  933976 ns ADC_Conversions Verified and they match
				# KERNEL: Time:  933976 ns Normalized Analog Sample Value     = 214
				# KERNEL: Time:  933976 ns Digital output from ADC            = 218
				# KERNEL: Time: 1065048 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1065048 ns Normalized Analog Sample Value     = 246
				# KERNEL: Time: 1065048 ns Digital output from ADC            = 249
				# KERNEL: Time: 1196120 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1196120 ns Normalized Analog Sample Value     =  22
				# KERNEL: Time: 1196120 ns Digital output from ADC            =  10
				# KERNEL: Time: 1327192 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1327192 ns Normalized Analog Sample Value     =  54
				# KERNEL: Time: 1327192 ns Digital output from ADC            =  53
				# KERNEL: Time: 1458264 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1458264 ns Normalized Analog Sample Value     =  86
				# KERNEL: Time: 1458264 ns Digital output from ADC            =  86
				# KERNEL: Time: 1589336 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1589336 ns Normalized Analog Sample Value     = 118
				# KERNEL: Time: 1589336 ns Digital output from ADC            = 119
				# KERNEL: Time: 1720408 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1720408 ns Normalized Analog Sample Value     = 150
				# KERNEL: Time: 1720408 ns Digital output from ADC            = 152
				# KERNEL: Time: 1851480 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1851480 ns Normalized Analog Sample Value     = 182
				# KERNEL: Time: 1851480 ns Digital output from ADC            = 185
				# KERNEL: Time: 1982552 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 1982552 ns Normalized Analog Sample Value     = 214
				# KERNEL: Time: 1982552 ns Digital output from ADC            = 218
				# KERNEL: Time: 2113624 ns ADC_Conversions Verified and they match
				# KERNEL: Time: 2113624 ns Normalized Analog Sample Value     = 246
				# KERNEL: Time: 2113624 ns Digital output from ADC            = 249
				# KERNEL: Simulation Completed with ADC Conversions
				
			2. VHDL Simulations:
				# EXECUTION:: NOTE   : Asserting Reset
				# EXECUTION:: NOTE   : De-asserting Reset
				# EXECUTION:: NOTE   : Generating Sawtooth Ramp
				# KERNEL: Time:81950 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =0   :  Digital output from ADC =0
				# KERNEL: Time:245790 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =0   :  Digital output from ADC =0
				# KERNEL: Time:409630 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =16   :  Digital output from ADC =15
				# KERNEL: Time:573470 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =49   :  Digital output from ADC =55
				# KERNEL: Time:737310 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =81   :  Digital output from ADC =87
				# KERNEL: Time:901150 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =114   :  Digital output from ADC =120
				# KERNEL: Time:1064990 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =147   :  Digital output from ADC =151
				# KERNEL: Time:1228830 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =180   :  Digital output from ADC =183
				# KERNEL: Time:1392670 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =213   :  Digital output from ADC =215
				# KERNEL: Time:1556510 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =245   :  Digital output from ADC =246
				# KERNEL: Time:1720350 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =16   :  Digital output from ADC =12
				# KERNEL: Time:1884190 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =49   :  Digital output from ADC =56
				# KERNEL: Time:2048030 ns :  ADC_Conversions Verified and they match  :  Normalized Analog Sample Value =81   :  Digital output from ADC =88
				# EXECUTION:: NOTE   : Simulation Completed with ADC Conversions

-------------------------------------------------------------------------------------------------------------------------------------------	
				
5.	GENERATE PROGRAMMING FILE (.jed or .bit):

		In the Diamond's "Process" tab on the left side of the GUI, Double click on "JEDEC File" to generate the .jed file, or
		Double click on "Bitstream File" to generate the .bit file, to program your device.
		
-------------------------------------------------------------------------------------------------------------------------------------------