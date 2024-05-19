library(tidyverse)
library(datasauRus)
library(dplyr)
library(ggplot2)


### Mostramos la estadistica descriptiva,  media , desviacion estandar y correlacion de X e Y
datasaurus_dozen %>%
  group_by(dataset) %>%
  summarize(
    mean_x = mean(x),
    mean_y = mean(y),
    std_dev_x = sd(x),
    std_dev_y = sd(y),
    corr_x_y = cor(x, y)
)

#Mostramos los conjuntos de datos del dataframe
ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset))+
  geom_point()+
  theme_void()+
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol = 3)

