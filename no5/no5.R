lamda = 3
#5.a
#dibutuhkan 2 nilai yaitu nilai x (peubah acak) dan nilai lamda
#dalam hal ini saya kan mengasumsikan nilai x = 3
dexp(3, lamda)

#5.b
set.seed(1)
x_rexp <- rexp(10, lamda)
hist(x_rexp, main = "10 data random")

x_rexp <- rexp(100, lamda)
hist(x_rexp, main = "100 data random")


x_rexp <- rexp(100, lamda)
hist(x_rexp, main = "1000 data random")


x_rexp <- rexp(100, lamda)
hist(x_rexp, main = "10000 data random")

#5.c
#rataan
rataan <- 1/lamda
rataan
#varians
varians <- 1/(lamda^2)
varians