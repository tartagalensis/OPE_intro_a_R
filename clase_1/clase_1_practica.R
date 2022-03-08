# Clase 1 

# Ejercicio Data Frames
# Parte 1 ####
# Ejercicio 1
distrito <- c("chubut", "neuquen", "salta", "catamarca", "buenos_aires")

#Ejercicio 2
distrito[2]

# Parte 2 ####

categoria <- c("Dip Nac", "Dip Nac", "Gobernador", "Senador", "Dip Nac")
eleccion <- c("PASO 2021", "PASO 2021", "Generales 2011", "Generales 2021","Generales 2021")

base_elecciones <- data.frame(distrito, categoria, eleccion)

# Ejercicio 2
# Dos formas de resolverlo
base_elecciones$categoria
base_elecciones[,2]


#Ejercicio 3 
# Dos formas de resolverlo
base_elecciones[3,2]
base_elecciones$categoria[3]
