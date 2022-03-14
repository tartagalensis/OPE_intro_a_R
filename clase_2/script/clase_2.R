# SCRIPT CLASE 2
# INTRO A R PARA LA CIENCIA DE DATOS - OPE

# 1) Paquetes ####

## Instalar paquete ####
# Pueden consultar paquetes disponibles en CRAN:
# https://cran.r-project.org/web/packages/available_packages_by_name.html
#Debemos utilizar 
# install.packages("nombre_paquete")

# por ejemplo:

install.packages("readr")


## Activar paquete ####
#library(nombre_paquete)

library(readr)
library(tidyverse)

# IMPORTANTE, REVISAR HABER CREADO UN PROYECTO 
# Y QUE CUENTE CON LAS DIRECCIONES CORRESPONDIENTES
# SINO CUANDO INTENTEN IMPORTAR LAS BASES DE DATOS 
# OBTENDRAN ERROR

#Saber donde estamos
getwd()


# 2) Importar archivos ####

## Desde mi compu ####

#Funcion de RBase

read.csv("escrutinio_generales_Salta2021.csv")

elec_salta21_rbase <- read.csv("clase_2/data/escrutinio_generales_Salta2021.csv")

#Funcion de readr
elec_salta21_readr <- read_csv("clase_2/data/escrutinio_generales_Salta2021.csv")

## Online ####

# Ahora vamos a descargar la misma base de datos que cargamos, pero
# desde su sitio web

temp <-  tempfile(fileext = ".xlsx")
dataURL <- "https://www.electoralsalta.gob.ar/elecciones/escrutinio/escrutinio-definitivo-generales-2021.xlsx"

download.file(dataURL, destfile=temp, mode='wb')

elec_salta21_online <- readxl::read_excel(temp, sheet =1)

elec_salta21_online %>% head()




summary(elec_salta21_readr)

dim(elec_salta21_readr)

head(elec_salta21_readr, n = 10)

tail(elec_salta21_readr, n = 10)

table(elec_salta21_readr$Departamento, elec_salta21_readr$Categoría)


View(elec_salta21_readr)


names(elec_salta21_readr)


elec_salta21_readr[c(550:560),c("Municipio", "Categoría")]


library(writexl)

writexl::write_xlsx(elec_salta21_readr,"clase_2/data/eleccion_salta.xlsx")


write.csv(elec_salta21_readr, "clase_2/data/eleccion_salta.csv")



# EJERCICIOS PARTE 2 ####

library(readr)

#1. Leemos la base de datos
elecciones_salta <- read_csv("clase_2/data/escrutinio_generales_Salta2021.csv")

#2. Utilizamos algunas de las funciones exploratorias propuestas
head(elecciones_salta, n = 10)

dim(elecciones_salta)

str(elecciones_salta)

#3. Describimos brevemente la base de datos (tip tiene NAs? podemos describir estadisticamente alguna columna?)
summary(elecciones_salta)

#4. Extraemos todos los registros de las columnas 1,3,5,6,9 y 10. Guardarlo en un nuevo dataframe.
elecciones_salta_subset <- elecciones_salta[,c(1,3,5,6,9,10)]

elecciones_salta[,c("Departamento", "Subcircuito", "Mesa", "Categoría", "Lista", "Votos")]

#5. Exportaremos ese dataFrame como un archivo .csv
write.csv(elecciones_salta_subset, "data/elecciones_salta_subset.csv")




