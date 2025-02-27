# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_DIM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POLY_DEG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "poly" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_DIM { PARAM_VALUE.DATA_DIM } {
	# Procedure called to update DATA_DIM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_DIM { PARAM_VALUE.DATA_DIM } {
	# Procedure called to validate DATA_DIM
	return true
}

proc update_PARAM_VALUE.POLY_DEG { PARAM_VALUE.POLY_DEG } {
	# Procedure called to update POLY_DEG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POLY_DEG { PARAM_VALUE.POLY_DEG } {
	# Procedure called to validate POLY_DEG
	return true
}

proc update_PARAM_VALUE.poly { PARAM_VALUE.poly } {
	# Procedure called to update poly when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.poly { PARAM_VALUE.poly } {
	# Procedure called to validate poly
	return true
}


proc update_MODELPARAM_VALUE.POLY_DEG { MODELPARAM_VALUE.POLY_DEG PARAM_VALUE.POLY_DEG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POLY_DEG}] ${MODELPARAM_VALUE.POLY_DEG}
}

proc update_MODELPARAM_VALUE.DATA_DIM { MODELPARAM_VALUE.DATA_DIM PARAM_VALUE.DATA_DIM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_DIM}] ${MODELPARAM_VALUE.DATA_DIM}
}

proc update_MODELPARAM_VALUE.poly { MODELPARAM_VALUE.poly PARAM_VALUE.poly } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.poly}] ${MODELPARAM_VALUE.poly}
}

