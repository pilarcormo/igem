##Background


We used glycogen as a model system to gain a better understanding of the parameters involved in carbohydrate branching and debranching. Due to the structural properties of starch and the complicated pathway to produce it in plants, it is a molecule difficult to model.  Glycogen is the starch analogue in bacteria. Both bacteria and plants, ADP-glucose is the glucosyl donor for the elongation of the alpha-1,4-glucosidic chain. Also, the main metabolic regulations occurs at the level of ADP-glucose synthesis in both organisms (1). Glycogen is characterized by a uniform and constant chemical structure and a well-described enzymatic pathway. Therefore, it is the perfect model molecule to test the effect of the  branching and debranching enzymes. 

----SOFTWARE--------

We built Glyco2D based on the mathematical model described by Meléndez-Hevia E et al (3).  This model described the structural properties of glycogen based on different parameters such as chain length, branching degree or the number of tiers. The model was able to demonstrate the optimal values of these paramenters for maximazing the glucose stored in the smallest volume and the number of non-reducing ends. These optimal values were branching degree of 2, chain length of 13 glucose units and approxiamtely 12 tiers (3). 

The software we developed uses these properties to predict the structure of the molecule. 

----HOW THE SOFTWARE WORKS--------

The software was created in C++ using openGL. The individual glucose molecules are represented by black squares and they are used as building blocks for the chains and branches.

To create the glycogen structures we made the following assumptions: 

1. The branching points on the chain are always the 5th and 9th glucose molecule on the chain.
2.  All chains are equal in length 
3. The branching degree is two on each chain, except on the final tier.


The software creates a pool of glucose units which are used to build the structure one tier at a time. Each time a new chain is about to be built, the software checks from a total of 24 possible directions and eliminates those that would grow toward the inner parts of the structure as it is not physically possible that the molecule is synthesized  toward the core of the structure.  The procedure to make this elimination is to discard the growth of any chain with a distance between its end and the centre of the molecule that is less than the distance of another chain belonging to two preceding tiers. This method generates a molecule with a more circular shape.

To make it easier to visualise, the software does not allow for chains to cross paths on the same plane, which does reduce the number of valid tiers compared to a three dimensional model. If there is more than one possible valid chain then the software will randomly select which valid chain to build.

----GLYCOGEN MODIFICATION--------

The main aim of the project was to add acyl groups (as butyrate) to digestible starch. As a proof-of-concept, we tried to modify glycogen. However, we don't know the position in the glucose molecule where the acyl group is putatively added. If the group is added to the free end available at a growing branch, it might disrupt the branch growth as suggested by Blennow A. et al for starch phosphorylation (4). If the chain elongation or the branching is disrupted, the final molecule will be smaller and, even if the molecule is viable, the glucose units that will undergo fermentation in the gut are less in number. Therefore, the growth disruption caused by the addition of acyl groups needs to be minimum. 

We plan to have a final 5-10% of modified ends in a viable glycogen molecule since that percentage of butyrylation in starch has been shown to have beneficial health effects in the colon (2). To predict the effects of the modification in the global glycogen structure, we used Glyco2D. it generates 2D structures of glycogen with and without modifications. The chance of modification can be given to the software as a parameter. 

The software creates three predictions. The first prediction on the left is the unmodified structure of the molecule. The second prediction is the structure where there is a given chance for glucose molecules to be acylated but it will not restrict the growth/branching of the molecule. The glucose molecules with an added acyl group are coloured red. The final model represents a restricted growth molecule. In this case, the addition of the acyl group disrupt the molecule growth. The glucose molecules that have the acyl group added which are restricting the growth are coloured in red. 
This restricted model can help us to identify the modification limit to get stable acylated glycogen molecules.

 
##References
1.  Wilson WA, Roach PJ, Montero M, Baroja-Fernández E, Muñoz FJ, Eydallin G, Viale AM, Pozueta-Romero J: Regulation of glycogen metabolism in yeast and bacteria. FEMS Microbiol Rev 2010, 34:952–85.
2. Bajka BH, Clarke JM, Topping DL, Cobiac L, Abeywardena MY, Patten GS: Butyrylated starch increases large bowel butyrate levels and lowers colonic smooth muscle contractility in rats. Nutr Res 2010, 30:427–34

3. Meléndez-Hevia E, Waddell TG, Shelton ED: Optimization of molecular design in the evolution of metabolism: The glycogen molecule. Biochem J 1993, 295 ( Pt 2):477–83.
4. Blennow A, Nielsen TH, Baunsgaard L, Mikkelsen R, Engelsen SB: Starch phosphorylation: A new front line in starch research. Trends Plant Sci 2002, 7:445–50.



