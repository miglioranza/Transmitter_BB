set pack_assert_off {numeric_std std_logic_arith}

dumpsaif -scope /home/miglioranza/Mapper/Mapper.srcs/sources_1/imports/miglioranza/mapper.vhd -overwrite -output mapper_toggle
database -open waves -into waves.shm -default
catch {probe -create -shm -all -variables -depth 1 -waveform} msg

run 1000ns
dumpsaif -end
