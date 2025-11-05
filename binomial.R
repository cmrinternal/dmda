#dbinom
x <- seq(0,50,by=1)
y <- dbinom(x, size = 10, prob = 0.5)
plot(x, y, type = "p", lwd = 3, col = "blue", main = "Binomial Distribution (PMF)", xlab = "x", ylab = "P(X = x)")

#pbinom
x<-pbinom(26,51,0.5)
print(x)

#qbinom
x<-qbinom(0.25,51,0.5)
print(x)

#rbinom
x<-rbinom(8,150,0.4)
print(x)
