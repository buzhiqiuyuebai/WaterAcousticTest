#!/usr/bin/env python3

fout=open('LOH1_source_50.dat', 'w')

# Note that we use a moment tensor definition that differs with the standards in Seismology (e.g. Komatitsch and Tromp, 1999).
# the moment tensor is opposite to the usual definition

# Note that strike, dip and rake allow rotating the seismic moment tensor. 
# Typically, the moment tensor does not need to be rotated and strike = dip = rake = 0.

header=\
""" seismic moment tensor
-0.10000E+19 0.10000E+00 0.00000E+00
 0.10000E+00 -0.10000E+19 0.00000E+00
 0.00000E+00 0.00000E+00 -0.10000E+19
 number of faults
                     1
 x,y,z,strike, dip, rake, area, onset time.
     0.00000     0.00000     170000.0000     0.00000    0.00000     0.00000  1.0     0.00000
 source time function: dela, total sample point
     0.00010                  20000
 samples
"""
fout.write(header)

import numpy as np

#Now write the moment rate:
fm=10;
dt=0.0001
vtime = np.arange(0, 2, dt)
momentRate = (1-2*np.pi*np.pi*fm*fm*(vtime-0.12)*(vtime-0.12))*np.exp(-fm*fm*np.pi*np.pi*(vtime-0.12)*(vtime-0.12));
#check that integral is 1
#print(np.trapz(momentRate, vtime))

np.savetxt(fout, momentRate, fmt='%.18e')
fout.close()
print('done writing LOH1_source_50.dat')


