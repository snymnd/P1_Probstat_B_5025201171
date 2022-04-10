
lamda <- 4.5 * 1 #rata-rata kejadian 4.5/hari
nx <- 6 # harapan kejadian
#3.a
dpois(nx, lamda)

#3.b
data = data.frame(y=c(dpois(nx, lamda)), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="Probabilitas", xlab="hari", ylim=0:1)

#3.c dari hasil a dan b, dapat dilihat bahwa probabilitas kejadian untuk x kejadian per hari
#dengan rata-rata harian (lamda) yang sama akan selalu menghasilkan nilai probablitas yang sama pula
#antara kejadian di suatu hari(a) dan setiap hari dalam setahun(b).

#3.d
#rataan 
rataan <- lamda
rataan
#varian
varian <- lamda
varian