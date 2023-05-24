#Critical Values

alpha=0.05 #5% LoS
zalpha1=qnorm(1-alpha)
zalpha1
zalpha2=qnorm(1-alpha/2)
zalpha2
#alpha can be any number

#Solution1:
n1=1000
n2=200
x1bar=67.5
x2bar=68
sigma1=2.5
sigma2=2.5

#Step1:
#H0:sigma1=sigma2=2.5
#H1:sigma not= sigma2(Two tailed test)

#Step2:
alpha=0.05 #los

#Step3:
z=(x1bar-x2bar)/sqrt((sigma1^2/n1)+(sigma2^2/n2))
abs(z)

#Step4:
#Critical Values for Two tailed test
zalpha=qnorm(1-alpha/2)
zalpha

#Step5:Conclusion
if(abs(z)<zalpha){print("H0 is accepted at 5% LoS")}else{print("H0 is rejected at 5% LoS")}


#Solution2:

#Critical Values

alpha=0.05 #5% LoS
zalpha=qnorm(1-alpha)
zalpha
#alpha can be any number

n=50
xbar=9900
mu=10000
sigma=120

#Step1:
#H0:xbar <= mu
#H1:xbar > mu(One tailed test)

#Step2:
alpha=0.05 #los

#Step3:
z=(xbar-mu)/sqrt((sigma^2/n))
abs(z)

#Step4:
#Critical Values for One tailed test
zalpha=qnorm(1-alpha)
zalpha

#Step5:Conclusion
if(abs(z)<zalpha){print("H0 is accepted at 5% LoS")}else{print("H0 is rejected at 5% LoS")}
