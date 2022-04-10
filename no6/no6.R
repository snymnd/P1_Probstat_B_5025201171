n <- 100
mean <- 50
sd <- 8
data <- rnorm(n, mean, sd)

#6a
avg <- mean(data) 
x1 <- floor(avg)
x2 <- ceiling(avg)
#plot data random distribusi normal
pdf <- dnorm(data, mean, sd)
plot(data, pdf)

#menemukan comulative distriibution function (cdf) untuk nilai x, (X1 < x <X2)
x1_pnorm <- pnorm(x1, mean, sd)
x2_pnorm <- pnorm(x2, mean, sd)
x_pnorm <- x2_pnorm - x1_pnorm
#nilai CDF X
x_pnorm

#z_score dari x
Zx <- (x - mean)/sd
Zx
#plot dari Z_socre dari x
plot(Zx, dnorm(Zx, 0, 1), type = "l")

#6b
hist(data,breaks = 50, main = '5025201171_Muhammad Yunus_Probstat_B_DNhistogram')

#6c
#rataan
rataan <- mean
rataan
#varians
varians <- sd^2
varians
