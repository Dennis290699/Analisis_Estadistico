#Tenemos el Segundo indicador
#Este indicador es "Presos totales"

#En esta parte estamos instalando el paquete
install.packages("ggplot2")
install.packages("readxl")
install.packages("aplpack")

#Llamamos a la libreria 
library(ggplot2)
library (readxl)
library(aplpack)
#Esta siguiente linea de codigo, nos sirve para enlazar,
#el excel a R
respositorio_datos <- "C:\\Users\\chimuelo\\Desktop\\deber_proba"
setwd(respositorio_datos)
Informacion <- read_xlsx("TotalPresos.xlsx",sheet= "Presos",range = "B1:B221")

#Este comando "summary"
#este comando muestra un resumen general sobre las variables del data frame 
#(mínimo, máximo, media, mediana, primer y tercer cuartil). 
summary(Informacion)
#Diagrama de cajas
boxplot(Informacion,main="boxplot-Presos Total", col = "blue", horizontal=TRUE )
#(el método jitter evitará dibujar sobre los datos atípicos)
stripchart(Informacion,main="boxplot-Presos Total",method = "jitter", add = TRUE,col = "blue", horizontal=TRUE )
#Histograma
hist(x = Informacion$Presos_tot, xlab="Presos", ylab="Frecuencias",
main="Total de Presos", col = "red")
#Tallo y hoja
#La función stem.leaf del paquete aplpack es una alternativa 
#a la función stem de base R, que permite configuraciones adicionales. 
stem.leaf(Informacion$Presos_tot, m=4)


