import numpy as np 


#Generate I/Q input 
tmp_values = np.arange(0,20000,10, dtype=np.int16)
input_I = tmp_values 
input_Q = - tmp_values


#FIR coefficients 
coeff = [ 
0x6AAA, 0x5555, 0x2666, 0x2000, 0x1999, 0x1333, 0x0CCD, 0x4000,
0x4000, 0x0CCD, 0x1333, 0x1999, 0x2000, 0x2666, 0x5555, 0x6AAA
]

int_coeff = np.array(coeff,dtype=np.int16)
#Upsampling + FIR filter 

# y[n] = ∑ x[i] * h[n - L*i]

#Polyphase Upsampling 
L = 4 

#Creation of the re-sized array after zeros insertion 
x_up_I = np.zeros(len(input_I) * L ,dtype=np.int32)
x_up_Q = np.zeros(len(input_Q) * L ,dtype=np.int32)
x_up_I[::L] = input_I
x_up_Q[::L] = input_Q

#FIR filter convolution
y_I = np.convolve(x_up_I,coeff)
y_Q = np.convolve(x_up_Q,coeff)

# Write to Output file for Vivado testbench
with open("input_vectors","w") as f: 
    for orig_i,orig_q in zip(input_I,input_Q):    
        f.write(f"{orig_i} {orig_q}\n")
print("File 'vivado_input.txt' generated successfully")
with open("output_vectors","w") as f: 
    for i,q in zip(y_I,y_Q):
        # Truncate to 16-bit signed (keep lower 16 bits)
        i_trunc=np.int16(i)
        q_trunc=np.int16(q)
        i_hex = format(i_trunc & 0xFFFF, '04X')
        q_hex = format(q_trunc & 0xFFFF, '04X')
        f.write(f"{i_hex} {q_hex}\n")
print("File 'vivado_output.txt' generated successfully")