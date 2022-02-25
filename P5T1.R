x=seq (1,10)
y= rep(0.1,10)
plot(x,y,main = "PMF Uniforme Discreta" ,ylab = "f(x)",ylim = c(0,.5))



z=cumsum(y)
plot(x,z,main = "CDF Uniforme Discreta" , ylab = "F(x)",type="s")


(set.seed(13))
muestra <- sample(1:10,1000000, replace = T, prob= NULL)
mean(muestra)
sd(muestra)^2
w= table(muestra)
hist(muestra, main = "FRECUENCIAS", xlab= "x",)
