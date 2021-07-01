library(stats)
library(devtools)
install_github("vqv/ggbiplot")
library(ggbiplot)
library(readxl)
library(factoextra)

air_data_dki <- read_excel("D:/Ghazi/Kuliah/Semester 6/MultiV 2/UAS/Tugas-akhir-Multiv2/air_data_dki.xlsx")
df = air_data_dki

#Biplot
pc <- prcomp(x = df[-1],center = TRUE, scale. = FALSE)
print(pc)
summary(pc)
plot(pc)
screeplot(pc, type = "line", main = "Scree plot")  
ggbiplot(pc)


# Get the variable coor
eig.val = get_eigenvalue(pc)
eig.val

res.var = get_pca_var(pc)
res.var$coord

res.ind = get_pca_ind(pc)
res.ind$coord

datakoor = data.frame(pc$x)
normdatakoor = data.frame(scale(datakoor))
normdatakoor
plot(
  normdatakoor$PC1,
  normdatakoor$PC2
)
write.csv(normdatakoor,'D:\\Ghazi\\Kuliah\\Semester 6\\MultiV 2\\UAS\\Tugas-akhir-Multiv2\\normkoor.csv')

