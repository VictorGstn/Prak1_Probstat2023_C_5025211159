#1a parameter
n <- 10
p <- 0.488
#menggunakan distribusi binomial

#1b probabilitas tepat 3 bayi berjenis kelamin laki-laki
dbinom(3,n,p)

#1c probabilitas kurang dari 3 bayi berjenis kelamin laki-laki
sum(dbinom(0:2,n,p))

#1d probabilitas 3 atau lebih bayi berjenis kelamin laki-laki
1 - (sum(dbinom(0:2,n,p)))

#1e nilai harapan dan simpangan baku
harapan <- n*p
harapan
simpangan_baku <- sqrt(n*p*(1.0-p))
simpangan_baku

#1f histogram
x <- rbinom(1000, n, p)
hist(x, breaks = 10, 
     density = TRUE, 
     freq=FALSE, 
     xlab="Banyak bayi laki-laki", 
     ylab="Probabilitas", 
     main="Distribusi kelahiran bayi laki-laki", 
     ylim=c(0,0.5), xlim=c(0,10))

