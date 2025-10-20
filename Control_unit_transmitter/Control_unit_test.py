import numpy as np

def split_bits_for_waveform(vector, selected_modulation):
    """
    Split a 32-bit vector into 6-bit mapper chunks exactly like the VHDL code.
    Returns a list of 6-bit strings according to modulation.
    """
    bits = np.binary_repr(vector, width=32)
    results = []

    if selected_modulation == "000":  # BPSK
        # BPSK: LSB first, each bit padded with 5 zeros
        for index in range(31, -1, -1):
            results.append("00000" + bits[index])

    elif selected_modulation == "001":  # QPSK
        # QPSK: 2-bit chunks, MSB-first in downto style
        for index in range(16):
            start = 32 - (index+1)*2
            end   = 32 - index*2
            chunk = bits[start:end]
            results.append("0000" + chunk)

    elif selected_modulation in ["010", "101"]:  # 16-QAM / 16-APSK
        for index in range(8):
            start = 32 - (index+1)*4
            end   = 32 - index*4
            chunk = bits[start:end]
            results.append("00" + chunk)

    elif selected_modulation in ["011", "110"]:  # 32-QAM / 32-APSK
        # First 6 chunks: 5 bits each, padded with '0'
        for index in range(6):
            start = 32 - (index+1)*5
            end   = 32 - index*5
            chunk = bits[start:end]
            results.append("0" + chunk)
        # Last chunk: top 2 MSB bits padded with 4 zeros
        results.append("0000" + bits[0:2])
        # Pad remaining lines to always have 8 chunks
        while len(results) < 8:
            results.append("000000")

    elif selected_modulation in ["100", "111"]:  # 64-QAM / 64-APSK
        # First 5 chunks: 6 bits each
        for index in range(5):
            start = 32 - (index+1)*6
            end   = 32 - index*6
            chunk = bits[start:end]
            results.append(chunk)
        # Last chunk: top 2 MSB bits padded with 4 zeros
        results.append("0000" + bits[0:2])

    else:
        results.append("000000")

    return results


if __name__ == "__main__":
    tmp_values = np.arange(0, 512, 1, dtype=np.int32)
    selected_modulation = "100"  # Example: BPSK

    output_filename = "splitted_values.txt"

    with open(output_filename, "w") as f:
        for i, val in enumerate(tmp_values):
            outputs = split_bits_for_waveform(val, selected_modulation)
            for data in outputs:
                f.write(f"{data}\n")

    print(f"Output written to '{output_filename}'")
