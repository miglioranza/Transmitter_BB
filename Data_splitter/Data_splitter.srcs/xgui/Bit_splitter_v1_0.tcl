# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "INPUT_BW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_BW" -parent ${Page_0}


}

proc update_PARAM_VALUE.INPUT_BW { PARAM_VALUE.INPUT_BW } {
	# Procedure called to update INPUT_BW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_BW { PARAM_VALUE.INPUT_BW } {
	# Procedure called to validate INPUT_BW
	return true
}

proc update_PARAM_VALUE.OUTPUT_BW { PARAM_VALUE.OUTPUT_BW } {
	# Procedure called to update OUTPUT_BW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_BW { PARAM_VALUE.OUTPUT_BW } {
	# Procedure called to validate OUTPUT_BW
	return true
}


proc update_MODELPARAM_VALUE.INPUT_BW { MODELPARAM_VALUE.INPUT_BW PARAM_VALUE.INPUT_BW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_BW}] ${MODELPARAM_VALUE.INPUT_BW}
}

proc update_MODELPARAM_VALUE.OUTPUT_BW { MODELPARAM_VALUE.OUTPUT_BW PARAM_VALUE.OUTPUT_BW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_BW}] ${MODELPARAM_VALUE.OUTPUT_BW}
}

