d<-c(12,7,3,56,33,78,45)
mean(d)
mean(d,trim=0.3)
da<-(12,7,3,56,33,78,45,NA)
mean(da)
mean(da,na.rm=True)
median(d)
mode<-function(v){
vals<-unique(v)
vals[which.max(tabulate(match(v,vals)))]
}
mode(d)
-----------------------------------------------------------------------------------------------------------------------------------------
input <- mtcars[,c("am","mpg","hp")]
print(head(input))

input <- mtcars

result1 <- aov(mpg~hp*am,data = input)
print(summary(result1))

result2 <- aov(mpg~hp+am,data = input)
print(summary(result2))

print(anova(result1,result2))



