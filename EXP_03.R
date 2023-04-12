#problem 1
#Here x denotes the no. of wells with impurity
#X = {0,1,2,3,4,5,6,7,8,9,10}

n = 10
p = 0.30
q = 1-p

#(i) P(x =3)
prob_3=dbinom(x=3,n,p)
round(prob_3,2)

#(ii) P(x>3) = 1-P(x<=3)
prob_morethan3=1-pbinom(3,n,p)
round(prob_morethan3,2)

#(iii) Creating table
x = seq(0,10)
px = round(dbinom(x,n,p),2)
data.frame(x,px)

#(iv) Plotting
plot(x, px, type="o",xlab="values of x",ylab="Probability distribution of x",main = "binomial distribution")
