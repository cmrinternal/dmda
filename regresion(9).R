# Linear Regression
x <- c(141, 134, 178, 156, 108, 120)
y <- c(62, 85, 56, 47, 17, 76)
model <- lm(y ~ x)
summary(model)
plot(x, y, main = "Linear Regression", xlab = "X values", ylab = "Y values")
abline(model, col = "red")
--------------------------------------------------------------------------------------------------------------------------------------
#multiple regression
input <- mtcars[, c("mpg", "wt", "disp", "hp")]
print(head(input))
model <- lm(mpg ~ wt + disp + hp, data = input)
print(summary(model))
predicted_mpg <- predict(model, input)
plot(input$mpg, predicted_mpg, main = "Actual vs Predicted MPG", xlab = "Actual MPG", ylab = "Predicted MPG", col = "blue", pch = 19)
abline(a = 0, b = 1, col = "red")
--------------------------------------------------------------------------------------------------------------------------------------- 
#logistic regression
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(0,0,0,0,0,1,1,1,1,1)
data <- data.frame(x = x, y = y)
log_model <- glm(y ~ x, data = data, family = "binomial")
summary(log_model)
x.values <- seq(min(x), max(x), length.out = 100)
predicted_prob <- predict(log_model, newdata = data.frame(x = x.values), type = "response")
plot(x, y, main = "Logistic Regression", xlab = "X", ylab = "Probability", col = "blue", pch = 19)
lines(x.values, predicted_prob, col = "red")
--------------------------------------------------------------------------------------------------------------------------------------- 
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(2,3,4,6,8,11,13,18,20,24)
data <- data.frame(x = x, y = y)
pois_model <- glm(y ~ x, data = data, family = "poisson")
summary(pois_model)
x.values <- seq(min(x), max(x), length.out = 100)
predicted_counts <- predict(pois_model, newdata = data.frame(x = x.values), type = "response")
plot(x, y, main = "Poisson Regression", xlab = "X", ylab = "Count", col = "blue", pch = 19)
lines(x.values, predicted_counts, col = "red")


