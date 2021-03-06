##------------------------------------------------------------------------#
## Nombre del Script: Adici�n de datos de 2019 de bases de SISMED a estudio
## de consumo de opioides -------------------------------------------------
##  
## Proposito del Script: Adicionar datos de consumo de opioides de 2019 a los
## datos de consumo de 2012 a 2018 presentes en un estudio anterior.
##  
## Autor: Daniel S. Parra Gonzalez 
## Fecha de creacion:  30 de enero de 2019
##  
## Copyright (c) Daniel S. Parra, 2020 
##  
## Email: dsparrag@unal.edu.co 
##------------------------------------------------------------------------#
# Apertura de paquetes R
require(tidyverse)
require(readxl)
# Selecci�n de directorio de trabajo
setwd(file.path('F:','Documentos','Estudio - Documentos','Trabajos','UAS-FNE',
                'Consumo'))

##########################################################################-
# Apertura de archivos de datos  ------------------------------------------
##########################################################################-
# Abrir los archivos de datos en formato MS Excel
data_trim_01 <- read_excel(file.path('DATOS', '2019',
      'Publicacion_PreciosReportados_2019-01_a_2019-03.XLS'), skip = 11)
data_trim_02 <- read_excel(file.path('DATOS', '2019',
      'Publicacion_PreciosReportados_2019-04_a_2019-06.XLS'), skip = 11)
data_trim_03 <- read_excel(file.path('DATOS', '2019',
      'Publicacion_PreciosReportados_2019-07_a_2019-09.XLS'), skip = 11)

##########################################################################-
# Modificaci�n de archivo - limpieza inicial
data_trim_01 <- data_trim_01 %>%
  select(-c("...4", "...7", "...10", "...11"))
data_trim_02 <- data_trim_02 %>%
  select(-c("...4", "...7", "...10", "...11"))
data_trim_03 <- data_trim_03 %>%
  select(-c("...4", "...7", "...10", "...11"))

names_vector <- c("Medicamento",
  "Presentaci�n",
  "Fab. Nal.",
  "C�digo ATC",
  "ATC",
  "Principio Activo",
  "Via Administraci�n",
  "POS",
  "CUM",
  "SEQ",
  "Periodo de Precios",
  "Ventas Canal Comercial|Laboratorio|$ M�nimo",
  "Ventas Canal Comercial|Laboratorio|$ M�ximo",
  "Ventas Canal Comercial|Laboratorio|Unidades",
  "Ventas Canal Comercial|Laboratorio|Precio",
  "Ventas Canal Comercial|Mayorista|$ M�nimo",
  "Ventas Canal Comercial|Mayorista|$ M�ximo",
  "Ventas Canal Comercial|Mayorista|Unidades",
  "Ventas Canal Comercial|Mayorista|Precio",
  "Ventas Canal Institucional|Laboratorio|$ M�nimo",
  "Ventas Canal Institucional|Laboratorio|$ M�ximo",
  "Ventas Canal Institucional|Laboratorio|Unidades",
  "Ventas Canal Institucional|Laboratorio|Precio",
  "Ventas Canal Institucional|Mayorista|$ M�nimo",
  "Ventas Canal Institucional|Mayorista|$ M�ximo",
  "Ventas Canal Institucional|Mayorista|Unidades",
  "Ventas Canal Institucional|Mayorista|Precio",
  "Compras|Mayorista|$ M�nimo",
  "Compras|Mayorista|$ M�ximo",
  "Compras|Mayorista|Unidades",
  "Compras|Mayorista|Precio",
  "Ventas EPS - IPS - DTS - CCF|Mayorista|$ M�nimo",
  "Ventas EPS - IPS - DTS - CCF|Mayorista|$ M�ximo",
  "Ventas EPS - IPS - DTS - CCF|Mayorista|Unidades",
  "Ventas EPS - IPS - DTS - CCF|Mayorista|Precio",
  "Recobro|Mayorista|$ M�nimo",
  "Recobro|Mayorista|$ M�ximo|",
  "Recobro|Mayorista|Unidades",
  "Recobro|Mayorista|Precio")

# Cambiar nombre de archivos
colnames(data_trim_01) <- names_vector
colnames(data_trim_02) <- names_vector
colnames(data_trim_03) <- names_vector
  
# 











