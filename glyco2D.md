Glycogen consists of chains of glucose residues connected by alpha-1,4-glycosidiclinkages with alpha-1,6-glycosidic linkages forming branch points. The main aim of the project was to add acyl groups (as butyrate) to digestible starch. As a proof-of-concept, we expressed 5 putative acyltransferases into E. coli to see if we could get modified glycogen. However, the activity on these enzymes is still unknown. We don't know the position in the glucose molecule where the acyl group is putatively added. If the group is added to the free end available at a growing branch, it will disrupt the branch growth.

Even though glycogen acylation has not been described yet, phosphorylation of glycogen has been studied previously in both muscle and bacterial glycogen. Tagliabracci V. S. et al showed that the phosphate in glycogen is present as C2 and C3 phosphomonoesters (1). Phosphorylation of starch has been also characterized (2). According to Blennow A. et al, the phosphate groups bind at the free C6 and C3 hydroxyl groups of the glucose units. Both groups are located at the hydrophilic surface of the double helix, which might affect the stability of the molecule (2).

Therefore, we wanted to model the putative changes in glycogen structure depending on the location of the modification. We plan to have a final 5-10% of modified residues in a viable glycogen molecule (3) and the growth disruption caused by this addition needs to be minimum. 


##Assumptions

1. C1 doesn't get modified as it's forming a bond in all the residues expect the 1st one. C2, C3, C4, C5 and C6 might get modified.
2. The branching occurs in a one-by-one glucose addition, even though the branching enzyme (GlgB) would cut an oligosaccharide from the linear molecule and add it at a branching point (4). 


##Glyco2D does work!

- When we increase the initial percentage of random acylation, the total number of modified glucoses increased. We showed a great linear correlation between both. 

![](linear-regression.png)


##If the acylation always restricts growth/branching

As we're using putative acyltransferases in E. coli, we don't know the carbon in the glucose molecule that gest acylated. If it binds to C4, the acylation will restrict further growth of the glycogen molecule. 

![](glyco2d-C4-smooth.png)

As we can see, by having a chance of acylation of 1% at C4, the glucose lost is around 50%. By 'glucose lost' we mean all the glucose molecules that could haven been added to the umodified molecule. 

Therefore, if the acyl group binds to C4, we won't have a viable glycogen molecule and the modification will not have the effect we expect. 


##If the acylation might restrict growth/branching

Another hypothesis is that the acyltransferase can add the group to any carbon on the glucose molecule. We assume a random chance of a group being added on the 5 carbons available in the molecule. If it is added to C4, it will restrict growth. If it is added to C6, it might restrict branching if it binds to the glucose molecule in the 5th or 10th position in the chain (branching points). The normal growth will not be altered if it binds C2, C3 or C5. 

![](glyco2d-final.png)

We ran the simulation 300 times for each % of acylation and calculated the average for all the possible randomly generated molecules. We observed a good correlation between the final % of acylated glucoses and the % of glucose molecules that are lost in comparison to the unmodified molecule. We need to define the optimal value so that we get the minimum glucose lost with the maximum level of acylation.  



(1) - Moreno-Bruna B, Baroja-Fernández E, Muñoz FJ, Bastarrica-Berasategui A, Zandueta-Criado A, Rodriguez-López M, Lasa I, Akazawa T, Pozueta-Romero J: Adenosine diphosphate sugar pyrophosphatase prevents glycogen biosynthesis in escherichia coli. Proc Natl Acad Sci U S A 2001, 98:8128–32.

(2) - Blennow A, Nielsen TH, Baunsgaard L, Mikkelsen R, Engelsen SB: Starch phosphorylation: A new front line in starch research. Trends Plant Sci 2002, 7:445–50
(3) - Bajka BH, Clarke JM, Topping DL, Cobiac L, Abeywardena MY, Patten GS: Butyrylated starch increases large bowel butyrate levels and lowers colonic smooth muscle contractility in rats. Nutr Res 2010, 30:427–34.
(4) - Wilson WA, Roach PJ, Montero M, Baroja-Fernández E, Muñoz FJ, Eydallin G, Viale AM, Pozueta-Romero J: Regulation of glycogen metabolism in yeast and bacteria. FEMS Microbiol Rev 2010, 34:952–85.