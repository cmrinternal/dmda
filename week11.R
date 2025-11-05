#dnorm
x <- seq(-10, 10, by = 0.1)
y <- dnorm(x, mean = 2.5, sd = 0.5)
plot(x, y, main = "Normal Distribution", xlab = "X", ylab = "Density", col = "blue", type = "l", lwd = 2)

#pnorm
x <- seq(-5, 10, by = 0.1)
y <- pnorm(x, mean = 2.5, sd = 2)
plot(x, y, type = "l", col = "blue", main = "pnorm - Cumulative Distribution", xlab = "x", ylab = "P(X ≤ x)")

#qnorm
p <- seq(0.01, 0.99, by = 0.02)
y <- qnorm(p, mean = 1, sd = 1)
plot(p, y, type = "l", col = "red", main = "qnorm - Quantile Function", xlab = "Probability", ylab = "Quantile")

#rnorm
y <- rnorm(50)
hist(y, col = "green", main = "rnorm - Random Normal Samples", xlab = "Value", ylab = "Frequency")
