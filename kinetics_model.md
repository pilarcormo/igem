##Assumptions:

We generated a deterministic model taking into consideration the following assumptions:

- All enzyme concentrations are constant and similar. We fixed the enzyme concentrations to 1x10-5 mmol/mL

- Glucose is available in excess.

- Reactions follow simple reversible or irreversible Michaelis-Menten kinetics.

- There is no additional flux of substrates after the beginning of the simulation. 

- The intracellular metabolite concentrations (ATP, AMP, ADP and PPi) are constant. They are all set to 1x10-5 mmol/mL.

- Only competitive inhibition by the product occurs. For simplicity, other external inhibitors are not considered in the model.



###Enzyme kinetic rates

Enzyme| Km (mmol/mL)| Reference
-----|-----|----:
Pgm(G1P)| 2.9x10-4| [(1)](http://www.sciencedirect.com/science/article/pii/S1096717699901453)
Pgm(G6P)|5.6x10-6| [(1)](http://www.sciencedirect.com/science/article/pii/S1096717699901453)
GlgC(ADPG)| 4x10-5|[(2)](http://www.ncbi.nlm.nih.gov/pubmed/21741429)
GlgC(ATP) |3.2x10-4|[(2)](http://www.ncbi.nlm.nih.gov/pubmed/21741429)
GlgA|3.5x10-5|[(3)](http://www.ncbi.nlm.nih.gov/pubmed/2288)
GlgB(Glucan1-4)| 1.42x10-5| [(4)](http://www.ncbi.nlm.nih.gov/pubmed/11368019)
GlgX (Glycogen)| 1x10-6| -not found-
GlgP (Glycogen)| 1x10-6| -not found-

**Pathway from (5)**
![](pathway.png) 

GlgB catalyzes 2 consecutive reactions. First, it cleaves an alpha 1,4 glycosidic linkage in a 1,4-alpha-D-glucan to form a non-reducing-end oligosaccharide chain that is transferred to a C-6 hydroxyl group of the same or another alpha-1,4-D-glucan.(Preiss, J. 2009. Glycogen Biosynthesis.)
GlgX and GlgP were considered together as the action of both enzymes is required to get debranching of glycogen. 

2 substrate irreversible reaction: Vmax*substrateA*substrateB/(KmB*substrateA + kmA*substrateB + substrateA*substrateB)

All the reactions of the pathway are highly efficient, as all the initial glucose-6-P converted to glucose-1-P and ADP-glucose is used in the production of glycogen. Part of the glucose-1-P is recovered due to the GlgX debranching activity.

We run our model for 2500 seconds and collect the data in intevals of 0.05 seconds starting with a concentration of 10 mmol/mL of Glucose-6-P (G6P). After the time course, the majority of the starting glucose has been used to produce glycogen and only a small part of the glucose stays unbranched.


![](final_model.png)



##References

1. Brautaset T, Petersen SB, Valla S: In vitro determined kinetic properties of mutant phosphoglucomutases and their effects on sugar catabolism in escherichia coli. Metab Eng 2000, 2:104–14.

2. Figueroa CM, Esper MC, Bertolo A, Demonte AM, Aleanzi M, Iglesias AA, Ballicora MA: Understanding the allosteric trigger for the fructose-1,6-bisphosphate regulation of the aDP-glucose pyrophosphorylase from escherichia coli. Biochimie 2011, 93:1816–23.

3. Fox J, Kawaguchi K, Greenberg E, Preiss J: Biosynthesis of bacterial glycogen. purification and properties of the escherichia coli b aDPglucose:1,4-alpha-d-glucan 4-alpha-glucosyltransferase. Biochemistry 1976, 15:849–57.


4. Mikkelsen R, Binderup K, Preiss J: Tyrosine residue 300 is important for activity and stability of branching enzyme from escherichia coli. Arch Biochem Biophys 2001, 385:372–7.

5. Wilson WA, Roach PJ, Montero M, Baroja-Fernández E, Muñoz FJ, Eydallin G, Viale AM, Pozueta-Romero J: Regulation of glycogen metabolism in yeast and bacteria. FEMS Microbiol Rev 2010, 34:952–85.


