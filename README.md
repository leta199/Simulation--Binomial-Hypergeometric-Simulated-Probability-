# Simulation--Binomial-Hypergeometric-Simulated-Probability-
Uncovering how binomial, hypergeometric and simulated probability compare when picking red balls in a sample from a large population 

## HOW IT'S MADE 
Languages used: R verion (4.5.1)    
Environement: RStudio  

## METHODS AND TECHNIQUES  
**Binomial and Hypergeometric probability**   
`pbinom()` and `phyper()` are new functions I learned how to use to calculate the left tail probability 

**Setup of simulation**     
`set.seed()`- to enire reproducibility   
Define our population sizes and number of repetitions in each experiment   
Create a length= 4 vector to store probability 

**For loop**
Defining the counter for the outer for loop     
Partitioning the balls into red and non-red for each population 
Creating our sample size and randomly selecting balls from population with `sample()`   
Assigning 1 if red balls are equal to or less than 0.02*n red balls and 0 if not   
Assing the average of 5000 repititions to overall probability 

##VISUALISATIONS 
**Dataframe**   
Created to compare the values of probabilites with each function and the simulation   

**Line graph**   
Shows how our probability changes between each method that we use to calculate probability 

 ## PROJECT STRUCTURE      
[Simulation Binomial Hypergoemetric Simulated Probability](https://github.com/leta199/Simulation--Binomial-Hypergeometric-Simulated-Probability-)/  
├── [Compiled pdf](https://github.com/leta199/Simulation--Binomial-Hypergeometric-Simulated-Probability-/blob/main/Binom-vs-Hyper-vs-Sim.pdf)/      
├──[Binom vs Hyper vs Simulation (R)](https://github.com/leta199/Simulation--Binomial-Hypergeometric-Simulated-Probability-/blob/main/Binomial%20vs%20Hypergeomtric%20vs%20Sim.r)/
└── [README](https://github.com/leta199/Simulation--Binomial-Hypergeometric-Simulated-Probability-/blob/main/README.md)/  

## AUTHORS   
[leta199](https://github.com/leta199)  

