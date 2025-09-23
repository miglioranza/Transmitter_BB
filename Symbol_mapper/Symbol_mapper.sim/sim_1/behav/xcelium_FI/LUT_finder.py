def extract_faultid_after_lut_until_o(file_path):
    fault_ids = []
    
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    i = 0
    while i < len(lines):
        line = lines[i]
        if 'LUT' in line:
            # Search forward for the first line with "O"
            j = i + 1
            while j < len(lines):
                next_line = lines[j]
                if 'O' in next_line:
                    parts = next_line.strip().split('faultid=')
                    if len(parts) == 2:
                        try:
                            fault_id = int(parts[1])
                            fault_ids.append(fault_id)
                        except ValueError:
                            pass
                    break  # Stop after finding the first "O" after "LUT"
                j += 1
        i += 1
    
    return fault_ids


# Example usage
file_path = '/home/miglioranza/Mapper/Mapper.sim/sim_1/behav/xcelium_FI/flt_target_dbg.list'  # Replace with your actual file path
result = extract_faultid_after_lut_until_o(file_path)

# Print results
print("Fault IDs found after LUT until 'O':")
for fid in result:
    print(fid)

