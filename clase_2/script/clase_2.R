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

# 2) Importar archivos ####

## Desde mi compu ####

#Funcion de RBase
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









