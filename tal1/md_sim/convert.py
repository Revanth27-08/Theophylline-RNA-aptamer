import parmed as pmd
amber = pmd.load_file('8d5l_tal1.parm7', '8d5l_tal1.rst7')
amber.save('topol.top', format='gromacs') 
amber.save('processed.gro', format='gro') 
