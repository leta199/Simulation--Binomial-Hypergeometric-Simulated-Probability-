# Simulation--Binomial-Hypergeometric-Simulated-Probability-
Uncovering how binomial, hypergeometric and simulated probability compare when picking red balls in a sample from a large population. 

## HOW IT'S MADE 
Languages used: R verion (4.5.1)    
Environement: RStudio  

## METHODS AND TECHNIQUES  
**Setup of simulation**   


**Simulation loop**  
**While loop** 
**If statement**


## FUNCTION EXPLANATION

In order to create the function `conditional_sum_prob`, I carried out the following tasks:

- Initiated the function creation process with the `function()` function to encapsulate my code block from the simulation.
- Optimised counter selection using a similar process to my Law of Large Numbers simulation to investigate the convergence to the analytical solution with different sample sizes.
- Visualised each of the three trail functions to pick best simulated proababilty comapred to known analytical solution.
- Final beta function defined.

## FUNCTION TESTS 
For the final tests of the functions I carried out the following tests:   
1) **Edge cases**- using the `testthat` package I made sure the known porobabilities such as 2 given a sum of 7 are within a tolernace of 0.01. 

2) **Extreme values**- function would continue to run when values where outside of reasonable bounds.   

3) **If statement revision**- limited values that could be entered ustilisng if statements.   

4) **Error messages with if statements**- changed the output of format messages utilising `$` to call only specific error messages.

 ## PROJECT STRUCTURE      
[Simulation- Conditional Probability](https://github.com/leta199/Simulation-Conditional-Probability)/  
├── [Conditional probability](https://github.com/leta199/Simulation-Conditional-Probability/blob/main/Conditional%20probability.r)/   
├── [Beforetest_conditional_function](https://github.com/leta199/Simulation-Conditional-Probability/blob/main/Beforetests_conditional_function.r)/  
├── [README.md](https://github.com/leta199/Simulation-Conditional-Probability/blob/main/README.md)/    
├── [Tests_conditional_prob](https://github.com/leta199/Simulation-Conditional-Probability/blob/main/Tests_conditional_prob.r)/  
├── [conditional_sum_analytical_tex](https://github.com/leta199/Simulation-Conditional-Probability/blob/main/conditional_sum.tex)/  
└──[conditonal_sum_pdf_analytical](https://github.com/leta199/Simulation-Conditional-Probability/blob/main/conditional_sum_analytical_pdf.pdf)/
  
## WHAT DOES THE FUTURE HOLD?  

## AUTHORS   
[leta199](https://github.com/leta199)  

