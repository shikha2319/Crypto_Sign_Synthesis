set moduleName pqcrystals_dilithium_22
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pqcrystals_dilithium.22}
set C_modelType { void 0 }
set C_modelArgList {
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
	{ seed int 8 regular {array 208 { 1 1 } 1 1 }  }
	{ nonce uint 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "seed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "nonce", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 0 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_s_we0 sc_out sc_logic 1 signal 0 } 
	{ state_s_d0 sc_out sc_lv 64 signal 0 } 
	{ state_s_q0 sc_in sc_lv 64 signal 0 } 
	{ state_s_address1 sc_out sc_lv 5 signal 0 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ state_s_we1 sc_out sc_logic 1 signal 0 } 
	{ state_s_d1 sc_out sc_lv 64 signal 0 } 
	{ state_s_q1 sc_in sc_lv 64 signal 0 } 
	{ seed_address0 sc_out sc_lv 8 signal 1 } 
	{ seed_ce0 sc_out sc_logic 1 signal 1 } 
	{ seed_q0 sc_in sc_lv 8 signal 1 } 
	{ seed_address1 sc_out sc_lv 8 signal 1 } 
	{ seed_ce1 sc_out sc_logic 1 signal 1 } 
	{ seed_q1 sc_in sc_lv 8 signal 1 } 
	{ nonce sc_in sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }} , 
 	{ "name": "seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed", "role": "address0" }} , 
 	{ "name": "seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed", "role": "ce0" }} , 
 	{ "name": "seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed", "role": "q0" }} , 
 	{ "name": "seed_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed", "role": "address1" }} , 
 	{ "name": "seed_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed", "role": "ce1" }} , 
 	{ "name": "seed_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed", "role": "q1" }} , 
 	{ "name": "nonce", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "nonce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pqcrystals_dilithium_22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pqcrystals_dilithium_22 {
		state_s {Type IO LastRead 9 FirstWrite 1}
		seed {Type I LastRead 6 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "81"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
	seed { ap_memory {  { seed_address0 mem_address 1 8 }  { seed_ce0 mem_ce 1 1 }  { seed_q0 mem_dout 0 8 }  { seed_address1 MemPortADDR2 1 8 }  { seed_ce1 MemPortCE2 1 1 }  { seed_q1 MemPortDOUT2 0 8 } } }
	nonce { ap_none {  { nonce in_data 0 16 } } }
}
