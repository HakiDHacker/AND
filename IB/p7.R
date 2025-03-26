x <- c(151,1774,138,186,128,136,179,163,152,131)
y <- c(63,81,56,91,47,57,76,72,62,48)
relation <- lm(y~x)
print(relation)
print(summary(relation))
a <- data.frame(x=170)
result <- predict(relation,a)
print(result)
png(file = "linearregression.png")
plot(x, y,col = "blue",main = "Height & width Regression",
+ abline(lm(x~y)), cex=1.3,pch=16, xlab="weight in kg",ylab="Height in cm")
dev.off()

