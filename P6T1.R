
(set.seed(10))
# Águila =1   Sol=0      (Sólo el número de águilas que se obtiene)
moneda= c(1,0)

# Vector para guardar la cantidad de águilas
sample(moneda, 10, replace = T)
muestra = sample(moneda, 10, replace = T)       
sum(muestra)

#Repetir 10^4

aguila = c()
for(i in 1:10^4){
   
a= sum(sample(moneda, 10, replace = T))
  
aguila=c(aguila, a)

}
       
#Primeros 3 lanzamientos
print (aguila[1:3])

#Grafica de frecuencias
hist(aguila, main = "FRECUENCIAS", xlab= "x")

#Grafica de las proporciones
hist(aguila/10, main="PROPORCIONES")





#GRAFICA DE FUNCIÓN DE MASA DE UNA DISTRIBUCIÓN B (10, 0.5)
x=0:10
plot(x,dbinom(x,10, 0.5),type ="h",xlab = "Águilas obtenidas", ylab ="Proporción", main = "DISTRIBUCIÓN")




#REPETICIÓN CON MONEDA DESEQUILIBRADA p=0.3

(set.seed(10))
# Águila =1   Sol=0      (Sólo el número de águilas que se obtiene)
moneda= c(1,0)

# Vector para guardar la cantidad de águilas
sample(moneda, 10, replace = T, prob = c(0.3,0.7))
muestra = sample(moneda, 10, replace = T, prob = c(0.3,0.7))       
sum(muestra)

#Repetir 10^4

aguila = c()
for(i in 1:10^4){
  
  a= sum(sample(moneda, 10, replace = T, prob = c(0.3,0.7)))
  
  aguila=c(aguila, a)
  
}
#Primeros 3 lanzamientos
print (aguila[1:3])

#Grafica de frecuencias
hist(aguila, main = "FRECUENCIAS", xlab= "x")

#Grafica de las proporciones
hist(aguila/10, main="PROPORCIONES")

#GRAFICA DE FUNCIÓN DE MASA DE UNA DISTRIBUCIÓN B (10, 0.5)
x=0:10
plot(x,dbinom(x,10, 0.3),type ="h",xlab = "Águilas obtenidas", ylab ="Proporción", main = "DISTRIBUCIÓN")


#Se observa que a mayor número de repeticiones del experimento, más se aproxima a la distribución teórica.
