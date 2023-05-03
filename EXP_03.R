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

#poisson distribution
#problem 1 
lambda = 12 #12 cars per minute 
#X denotes the no of cars crossing the bridge per minute
#P(X > = 17) = 1-P(C<=16)
Prob = 1-ppois(16,lambda)
round(Prob,4)

#problem 2
#(i)
lambda = 1.6 #10 minutes of interval

# x xdenotes the no. of customers using the ATM 
# for any 10 minutes of interval  
#(ii) P(X=3)
prob_exactly_three = dpois(3,lambda)
prob_exactly_three

#(iii) P(X<=3)
prob_three_or_fewer = ppois(3, lambda)
prob_three_or_fewer

#(iv) P(X>=3) = 1-P(X<=2)
#Here, Lambda = 2*1.6 = 3.2
#since it is for any 20 minutes of interval 
prob_atleast_three = 1 - ppois(2,3.2)
prob_atleast_three

#(v)
X = seq(0,11)
prob = r ound(dpois(X,1.6),4)
#Creating table
data.frame(X,prob)
#plotting
plot(X,prob,type = "o")



