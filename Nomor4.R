#4a z score dan plot
mean <-45
sd <-5
data <- rnorm(100, mean, sd)
x1<- floor(mean(data))

x2<- ceiling(mean(data))

z1<-(x1-mean(data))/sd(data)
z1
z2<-(x2-mean(data))/sd(data)
z2

x <- seq(-4, 4, length=100) *sd + mean
y <- dnorm(x,mean,sd)
plot(x,y, type = "l", lwd = 2, axes = TRUE)

#4b histogram dengan break 50
hist(data, breaks = 50)

#4c varian
var(data)