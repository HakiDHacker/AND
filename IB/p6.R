view(mtcars)
ls()
data(“mtcars”)
model <- glm(formula =vs ~ wt + disp, data = mtcars,family = "binomial")
model
summary(model)
newdata <- data.frame(wt=2.1, disp = 180)
predict(model,newdata, type = "response")
head(mtcars)
