#2a menggunakan disribusi poisson
lambda <- 1.8
lambda

#2b 4 kematian
dpois(4,lambda)

#2c paling banyak 4 kematian
sum(dpois(0:4, lambda))

#2d lebih dari 4 kematian
1 - sum(dpois(0:4, lambda))

#2e harapan dan standar deviasi
harapan <- lambda
harapan
standar_deviasi <- sqrt(lambda)
standar_deviasi

#2f histogram
x <- rpois(10000, lambda)
hist(x, breaks = 10, 
     density = TRUE, 
     freq=FALSE,
     main="Distribusi Banyak Kematian Kanker Tulang",
     ylab="Probabilitas",
     xlab="Banyak Kematian",
     xlim=c(0,10),
     ylim=c(0,0.6))

#2g simulasi
simulasi <- rpois(10000,lambda)

#2h perbandingan
sum(simulasi>4) / 10000
