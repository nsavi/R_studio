#A  B  C  D  E
#36 46 35 45 41
#37 39 42 36 39
#42 35 37 39 37
#38 37 43 35 35
#47 43 38 32 38

A=c(36,37,42,38,47)
B=c(46,39,35,37,43)
C=c(35,42,37,43,38)
D=c(45,36,39,35,32)
E=c(41,39,37,35,38)

group = data.frame(cbind(A,B,C,D,E))
group
stgr=stack(group)
stgr
#completely Randommized Design
crd = aov(values~ind,data=stgr)
#ANOVA Table
summary(crd)
