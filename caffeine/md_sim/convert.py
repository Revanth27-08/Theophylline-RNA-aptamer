import parmed as pmd
amber = pmd.load_file('8d28_caff.parm7', '8d28_caff.rst7')
amber.save('topol.top', format='gromacs') 
amber.save('processed.gro', format='gro') 
