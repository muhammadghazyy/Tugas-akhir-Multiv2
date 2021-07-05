library(devtools)
install_github("vqv/ggbiplot")

library(stats)
library(ggbiplot)
library(readxl)
library(factoextra)

#Load the Data
air_data_dki <- read_excel("D:/Ghazi/Kuliah/Semester 6/MultiV 2/UAS/Tugas-akhir-Multiv2/air_data_dki.xlsx")
df = air_data_dki

#Biplot
pc <- prcomp(x = df[-1],center = TRUE, scale. = FALSE)
print(pc)
summary(pc)
screeplot(pc, type = "line", main = "Scree plot")  
ggbiplot(pc)

#Get the variable coor
datakoor = data.frame(pc$x)
normdatakoor = data.frame(scale(datakoor))
normdatakoor