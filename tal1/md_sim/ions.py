#volume in cubic Angstrom
V = 388641.266 

#concentration in Molarity
#M = 0.15 Nacl conc
M = 0.005 #Mgcl_2 conc

#number of ions
N_ions = round(V*M*6.022*10**(-4))

print('Number of ions = ',N_ions)
