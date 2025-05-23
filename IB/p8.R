head(iris)
kc <- kmeans(iris[, 1:4], centers = 3)
table(iris$Species, kc$cluster)
plot(iris[c("Sepal.Length", "Sepal.Width")], col = kc$cluster)
points(kc$centers[, c("Sepal.Length", "Sepal.Width")], col = 1:3, pch = 8,cex = 2)
