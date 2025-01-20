# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CONVERSION_FACTOR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DECIMATION_FILTER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FILTER_TAPS" -parent ${Page_0}


}

proc update_PARAM_VALUE.CONVERSION_FACTOR { PARAM_VALUE.CONVERSION_FACTOR } {
	# Procedure called to update CONVERSION_FACTOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONVERSION_FACTOR { PARAM_VALUE.CONVERSION_FACTOR } {
	# Procedure called to validate CONVERSION_FACTOR
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DECIMATION_FILTER { PARAM_VALUE.DECIMATION_FILTER } {
	# Procedure called to update DECIMATION_FILTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECIMATION_FILTER { PARAM_VALUE.DECIMATION_FILTER } {
	# Procedure called to validate DECIMATION_FILTER
	return true
}

proc update_PARAM_VALUE.FILTER_TAPS { PARAM_VALUE.FILTER_TAPS } {
	# Procedure called to update FILTER_TAPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FILTER_TAPS { PARAM_VALUE.FILTER_TAPS } {
	# Procedure called to validate FILTER_TAPS
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.CONVERSION_FACTOR { MODELPARAM_VALUE.CONVERSION_FACTOR PARAM_VALUE.CONVERSION_FACTOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONVERSION_FACTOR}] ${MODELPARAM_VALUE.CONVERSION_FACTOR}
}

proc update_MODELPARAM_VALUE.FILTER_TAPS { MODELPARAM_VALUE.FILTER_TAPS PARAM_VALUE.FILTER_TAPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FILTER_TAPS}] ${MODELPARAM_VALUE.FILTER_TAPS}
}

proc update_MODELPARAM_VALUE.DECIMATION_FILTER { MODELPARAM_VALUE.DECIMATION_FILTER PARAM_VALUE.DECIMATION_FILTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECIMATION_FILTER}] ${MODELPARAM_VALUE.DECIMATION_FILTER}
}

