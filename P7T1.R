set.seed()

#Valor de bola gris= 1,  bola blanca=0
bolas<-c(rep(1,46),rep(0,49))

#Vector para contar las bolas grises
sample(bolas, 20, replace = F)
muestra = sample(bolas, 20, replace = F)       
sum(muestra)

#Repetir 10^4

BG = c()
for(i in 1:10^4){
  
  b= sum(sample(bolas, 20, replace = T))
  
  BG =c(BG, b)
  
}


#Grafica de frecuencias y comparaciones.

plot(table(BG), xlab = "Cantidad de bolas grises", ylab = "frecuencia", main="Gráfico de frecuencias")

x<-c(0:20)
plot((prop.table(table(BG))),type="h",col="gray", xlab = "", ylab="", main = "Comparación entre simulación y distribución teórica" )
par(new=TRUE)
plot((x+0.1),dhyper(x,46,49,20),type="h", axes= F, col="blue",xlab = "Bolas grises", ylab="Proporción")
legend("topleft", inset=.01, title="",
       c("Simulacion","Hipergeometrica(95,20,46)"), fill=c("blue","red"), horiz=F)
  