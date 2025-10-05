#HOW WELL IS BINOMIAL APPROXIMATES HYPERGEOMETRIC ####
#LEARNING MORE ABOUT THE FUNCTIONS PBINOM AND PHYPER 

help(pbinom)
help(phyper)
help(sample)

#PART #1 - BINOMIAL AND HYPERGEOMETRIC ---------------------------------------------------------------------------------------
#COMPARING BINOMIAL TO HYPER GEOMETRIC AT n=100
#PARTITIONING INTO RED AND NOT RED BALLS 
n_pop<- c(100,1000,5000,10000)

#PROBABILITY COMPARISON 
binom_prob<- numeric(length(n_pop))
hyper_prob<- numeric(length(n_pop))

for (i in seq_along(n_pop)) {
  n<-n_pop[i]
  red<- n*0.25
  non_red<-n*0.75
  sample<-n*0.1
  threshold<- 0.02*n
  
  binom_prob[i]<-pbinom(threshold, sample, 0.25)
  hyper_prob[i]<-phyper(threshold, red, non_red,sample)
}

#PART #2 - BY SIMULATION---------------------------------------------------------------------------------------
n<- 100
red_balls <-sample(1:n, 0.25*n, replace = FALSE)
colours<- rep("non red ball",n) #repeats non red ball 100 times 
colours[red_balls]<-"red ball"  #assigns balls with index red_balls the string "red ball" 

table(colours)                  #correct proportion of red and non red balls 


reps<-5000
sample_size<-0.1*n

colour_proportion<-numeric(reps)

for(i in 1:reps) {
  balls<- sample(1:n, sample_size, replace = FALSE)
  sum_of_red_balls<- sum(colours[balls]== "red ball")
  
  if(sum_of_red_balls == 0| sum_of_red_balls == 1|sum_of_red_balls == 2) {
    colour_proportion[i]<-1
  } else {
    colour_proportion[i]<-0
  } 
}
mean(colour_proportion)



results<- data.frame(
  n= n_pop,
  Bimonial_Probaility = round(binom_prob,6),
  Hypergeomtric_prob = round(hyper_prob,6)
)


plot(1:4, binom_prob, type = "l", col = "maroon",
     xlab= "Number of trials",
     ylab= "Exact probability",
     main = "Comaprison of Binomial and Hypergoemtirc distribution proababilties")
lines(1:4, hyper_prob, type = "l", col = "turquoise")




