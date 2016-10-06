# prepare data
data = read.csv("data/Advertising.csv")
data = data[,2:5]

# separate data
Tv = data[,1]
Radio = data[,2]
Newspaper = data[,3]
Sales = data[,4]

# build model and get summary object
model = lm(Sales ~ Tv)
summary = summary(model)

# save model and summary to regression.RData
save(list = c("model", "summary"), file = "data/regression.RData")

# make scatterplots
pdf(file = "images/scatterplot-tv-sales.pdf")
plot(x = Tv, y = Sales, col = "Red", pch = 16, cex = .75)
abline(a = model$coefficients[1], b = model$coefficients[2], col = "Blue")
dev.off()

png(file = "images/scatterplot-tv-sales.png")
plot(x = Tv, y = Sales, col = "Red", pch = 16, cex = .75)
abline(a = model$coefficients[1], b = model$coefficients[2], col = "Blue")
dev.off()






