# prepare data
data = read.csv("data/Advertising.csv")
data = data[,2:5]

# separate data
Tv = data[,1]
Radio = data[,2]
Newspaper = data[,3]
Sales = data[,4]

# build plots and save
pdf(file = "images/histogram-tv.pdf")
hist(Tv)
dev.off()

png(file = "images/histogram-tv.png")
hist(Tv)
dev.off()

pdf(file = "images/histogram-sales.pdf")
hist(Sales)
dev.off()

png(file = "images/histogram-sales.png")
hist(Sales)
dev.off()

# make eda-output.txt
sink("data/eda-output.txt")
"Tv"
summary(Tv)

"Sales"
summary(Sales)
#code for what goes in the file
sink()







