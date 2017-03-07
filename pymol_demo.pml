fetch 2qsg #read in pdb file 2qsg.pdb from PDB, require internet connection.#
center 2qsg #center the molecule in viewing window#
show cartoon, 2qsg #use cartoon representation for the whole molecule#
hide lines, 2qsg #hide line representation, default when loaded in.#

select rad4, chain A
select rad23, chain X
select dna, chain Y or chain W
select domain1, chain A and resi 123-433
select domain2, chain A and resi 434-490
select domain3, chain A and resi 491-540
select domain4, chain A and resi 541-632

set cartoon_ring_mode,1 #use cartoon rings to represent DNA ring structures.#
set cartoon_nucleic_acid_mode, 1 #trace backbone through C3' of each nt#
show sticks, dna #use stick representation for DNA#

color red, ss h and rad4 #color rad4 helix in red#
color yellow, ss s and rad4 #color rad4 beta strand in yellow#
color green, ss l+'' and rad4 #color rad4 loop in green#
util.cbaw dna #color dna  by atoms with carbon in gray#

h_add 2qsg #add H to protein. then use the find -> polar contacts in the Action menu to show hydrogen bonds#

#load interfaceResidues.py from File -> run#
foundResidues = interfaceResidues("2qsg", cA="chain A", cB="chain Y,W", cutoff=5, selName="intRes") #find residues at DNA and rad4 interface with distance cutoff at 5A.#

show sticks, intRes and rad4 #show the dna contacting aa in sticks, showing sidechains.#
util.cbam, intRes and rad4 #color the dna contacting aa by atom type with carbon in magentas.#

#to be continued#

