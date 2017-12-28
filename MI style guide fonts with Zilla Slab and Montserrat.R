library(ggplot2)
library(showtext)

font.add.google("Zilla Slab")
font.add.google("Montserrat")

p1 <- ggplot(diamonds, aes(depth, price)) +
  geom_point() +
  theme_minimal(base_family = "Montserrat") +
  theme(plot.title = element_text(family="Zilla Slab", face="plain", colour="Black", size="14")) +
  ggtitle("Use Zilla Slab in titles and Montserrat elsewhere")

ggsave(plot = p1, "trial6.pdf")