library(ggplot2)

ggplot(dataset, aes(x = ocean_proximity, y = households, 
                    fill = ocean_proximity)) +
  geom_bar(width = 0.85, stat = "identity")
