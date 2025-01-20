# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COEFF_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FILTER_TAPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.COEFF_WIDTH { PARAM_VALUE.COEFF_WIDTH } {
	# Procedure called to update COEFF_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COEFF_WIDTH { PARAM_VALUE.COEFF_WIDTH } {
	# Procedure called to validate COEFF_WIDTH
	return true
}

proc update_PARAM_VALUE.FILTER_TAPS { PARAM_VALUE.FILTER_TAPS } {
	# Procedure called to update FILTER_TAPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FILTER_TAPS { PARAM_VALUE.FILTER_TAPS } {
	# Procedure called to validate FILTER_TAPS
	return true
}

proc update_PARAM_VALUE.INPUT_WIDTH { PARAM_VALUE.INPUT_WIDTH } {
	# Procedure called to update INPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_WIDTH { PARAM_VALUE.INPUT_WIDTH } {
	# Procedure called to validate INPUT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.FILTER_TAPS { MODELPARAM_VALUE.FILTER_TAPS PARAM_VALUE.FILTER_TAPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FILTER_TAPS}] ${MODELPARAM_VALUE.FILTER_TAPS}
}

proc update_MODELPARAM_VALUE.INPUT_WIDTH { MODELPARAM_VALUE.INPUT_WIDTH PARAM_VALUE.INPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_WIDTH}] ${MODELPARAM_VALUE.INPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.COEFF_WIDTH { MODELPARAM_VALUE.COEFF_WIDTH PARAM_VALUE.COEFF_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COEFF_WIDTH}] ${MODELPARAM_VALUE.COEFF_WIDTH}
}

