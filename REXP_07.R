#Solution1
#f-test
#problem1
#h0=pvar1=pvar2
#h0=pvar1!=pvar2
 
 
n1=13
n2=15
pvar1=3
pvar2=2.5
alpha=0.05
 
#since,pvar1>pvar2
F=pvar1/pvar2
F
 
#since,pvar1>pvar2
Falpha=qf((1-alpha),n1-1,n2-1)
Falpha
 
if(abs(F)<Falpha){print("H0 accepted at 5% LOS")}else{print("H0 rejected at 5% LOS")}
-------------------------------------------------------------------------------------------
#question 2 
#two random samples gave the following data
#           size mean variance
#sample I   8   9.6   1.2
#sample II  11  16.5  2.5
#could both sample be from 
#solution :

#H0 : Pvar1 = Pvar2
#H1 : Pvar1 ~= Pvar2
n1 = 8
n2 = 11
s1_var = 1.2 #Sample's Variance
s2_var = 2.5 #Sample's Variance

P1_var = (n1*s1_var)/(n1-1) #Population's Variance
P2_var = (n2*s2_var)/(n2-1) #Population's Variance
P1_var
P2_var

alpha = 0.05

#Since, Pvar2 > Pvar1
F= P2_var/P1_var
F

#Since, Pvavr2 > Pvar1
Falpha = qf((1-alpha),n2-1,n1-1)
Falpha

if(F<Falpha){print("H0 accepted at 5% los")}else{print("H0 is rejected at 5% los")}
-----------------------------------------------------------------------------------------


#QUESTION 3
#The nicotine contents in two random samples of tobacco are giive below
# sample I 21 24 25 26 27
# sample II 22 27 28 30 31 36
#Solution :
n1 = 5
n2 = 6
s1 = c(21,24,25,26,27)
s2 = c(22,27,28,30,31,36)

s1_var = var(s1)
s2_var = var(s2)

P1_var = (n1*s1_var)/(n1-1) #Population's Variance
P2_var = (n2*s2_var)/(n2-1) #Population's Variance
P1_var
P2_var

alpha = 0.05

#Since, Pvar2 > Pvar1
F= P2_var/P1_var
F

#Since, Pvavr2 > Pvar1
Falpha = qf((1-alpha),n2-1,n1-1)
Falpha

if(F<Falpha){print("H0 accepted at 5% los")}else{print("H0 is rejected at 5% los")}

