#3a fungsi distirbusi chi square
x<-3
v<-10
dchisq(x,v)

#3b histogram 500 data acak
d <- rpois(500, lambda)
hist(d, breaks = 10, 
     density = TRUE, 
     freq=FALSE,
     main="Histogram Distribusi Chi-Square",
     xlab="X")

#3c Nilai rataan dan varian
mean <- v
mean
variant <- 2*v
variant