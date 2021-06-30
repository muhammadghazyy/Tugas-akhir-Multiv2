library(stats)
library(devtools)
install_github("vqv/ggbiplot")
library(ggbiplot)
library(magrittr)
library(dplyr)
library(ggpubr)

df = air_data_dki

pc <- prcomp(x = df[-1],center = TRUE, scale. = FALSE)
print(pc)
summary(pc)
plot(pc)
screeplot(pc, type = "line", main = "Scree plot")  
ggbiplot(pc)


biplot = ggbiplot(pcobj = pc,
                  choices = c(1,2),
                  obs.scale = 1, var.scale = 1,  # Scaling of axis
                  labels = row.names(df),     # Add labels as rownames
                  labels.size = 4,
                  varname.size = 5,
                  varname.abbrev = TRUE,  # Abbreviate variable names (TRUE)
                  var.axes = FALSE,      # Remove variable vectors (TRUE)
                  circle = FALSE,        # Add unit variance circle (TRUE)
                  ellipse = TRUE) # Adding ellipses
print(biplot)



