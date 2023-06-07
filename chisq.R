#for independence

#step1
#H0: Attributes are independent
#H1: Attributes are not independent

data = matrix(c(1154,475,243,1103,442,342),ncol = 3,byrow= T)
data

#step2
alpha = 0.05

r=nrow(data) #no of rows
c=ncol(data) #no of columns
n=(r-1)*(n-1) #degree of freedom
n

#step3
cv=chisq.test(data) #names(cv)
cv
chisq = cv$statistic
chisq

#step4
t_chisq = qchisq(1-alpha,n)
t_chisq

#step5
if(chisq <= t_chisq){print("Accept Ho at 5% LoS")}else{print("Reject H0 at 5% LoS")}
