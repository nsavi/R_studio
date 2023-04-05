#Exp.1: Computation of tables and graphs - summary statistics

empid = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
empid #or print(empid)

age=c(30,37,45,32,50,60,35,32,34,43,32,30,42,50,60)
age
gender=c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
gender
status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
status

empinfo = data.frame(empid, age, gender, status)
empinfo

nrow(empinfo) #no of rows
ncol(empinfo) #no of columns

#empinfo[row, column]
empinfo[ ,1] #displays the first column
empinfo[ ,2] #displays the second column
empinfo[1, ] #displays the first row
empinfo[2, ] #displays the second row
empinfo[5,1] #displays the value of the fifth row and first column
empinfo[5,2] #displays the value of the fifth row and the second column
empinfo["5","age"] #displays the value of the 5th row and "age" column
#or
empinfo[5,2] #displays the value of the 5th row and 2nd column
empinfo[1:5,2:3] #displays the values of 1 to 5th row and 2 to 3rd column

gender=c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
gender

empinfo_gender=factor(empinfo$gender,labels=c("male","female"))
empinfo_gender

status = c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
status

empinfo_status = factor(empinfo$status,labels=c("staff","faculty"))
empinfo_status

empinfo = data.frame(empid, age, empinfo_gender, empinfo_status)
empinfo

genderm = subset(empinfo, empinfo_gender=='male')
genderm
genderf = subset(empinfo, empinfo_gender=='female')
genderf

summary(empinfo)
summary(genderm)
summary(genderf)

Table1 = table(empinfo_gender)
Table1
Table2 = table(empinfo_status)
Table2
Table3 = table(empinfo_gender, empinfo_status)
Table3

#plotting
plot(age,type="o", main="Age of subjects", xlab="Employee order",
     ylab="Age in years",col="blue")

#pie plot
Table1 = table(empinfo_gender)
Table1
pie(Table1)

#Barplot
Table3 = table(empinfo_gender, empinfo_status)
Table3
barplot(Table3, beside =T, xlim=c(1,15),ylim=c(0,5),col=c('blue','red'))
legend("topright",legend=rownames(Table3),fill=c('blue','red'))

#importing data
#the following command takes you to the file path
data = read.csv(file.choose())
data
data[1,2]
data[ ,2]
data[3, ]
data[2:4,4:5]
data[-2:-4,-4:-5]
