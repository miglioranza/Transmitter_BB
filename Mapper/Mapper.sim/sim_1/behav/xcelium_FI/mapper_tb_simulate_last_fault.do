set pack_assert_off {numeric_std std_logic_arith}

database -open waves -into waves.shm -default
catch {probe -create -shm -all -variables -depth 1 -waveform} msg

xfr -fault_work fault_db -fault_report  fault_report_test
xfr -fault_strobe_info -fault_work fault_db
exit
