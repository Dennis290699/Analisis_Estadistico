#Tenemos el Segundo indicador
#Este indicador es "Educación Secundaria "

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
respositorio_datos <- "RUTA DEL ARCHIVO EN SU PC .XLSX"
setwd(respositorio_datos)
Informacion1 <- read_xlsx("Secundaria.xlsx",sheet="Sheet1",range = "B1:B221")

#Este comando "summary"
#este comando muestra un resumen general sobre las variables del data frame 
#(mínimo, máximo, media, mediana, primer y tercer cuartil). 
summary(Informacion1)
#Diagrama de cajas
boxplot(Informacion1,main="boxplot, Estudiantes de Secundaria", col = "red", horizontal=TRUE )
#(el método jitter evitará dibujar sobre los datos atípicos)
stripchart(Informacion1,main="boxplot, Estudiantes de Secundaria",method = "jitter", add = TRUE,col = "red", horizontal=TRUE )
#Histograma
hist(x = Informacion1$secundaria_total, xlab="Num_Estudiantes", ylab="Frecuencias",
     main="Total de Estudiantes", col = "blue")
#Tallo y hoja
#La función stem.leaf del paquete aplpack es una alternativa 
#a la función stem de base R, que permite configuraciones adicionales. 
stem.leaf(Informacion1$secundaria_total, m=4)
