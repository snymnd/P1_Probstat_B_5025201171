x <- 2 
v <- 10 #drajat kebebasan
#4a
dchisq(nx, v)

set.seed(333)     
data <- rchisq(100, 10)
data
#4b
hist(data, breaks = 10, main = "Histogram chi square, v=10")                                          # Plot of randomly drawn chisq density

#4c
#rataan
rataan <- v
rataan
#varians
varians <- 2 * v
varians