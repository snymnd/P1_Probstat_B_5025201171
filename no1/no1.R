#1. a
p = 0.20
x = 3
fail = 3 #sama saja dengan x, yaitu jumlah kegagalan yang diharapkan sebelum keberhasilan pertama
dgeom(x, prob = p);

#1 b
mean(rgeom( n = 10000, prob = p) == 3)
mean(rgeom( n = 10000, prob = p) == 3)
mean(rgeom( n = 10000, prob = p) == 3)

#1 c dapat dilihat hasil pada a dan b kurang lebih hampir sama yaitu berkisar pada 0,1, yang menunjukan nilai a menggambarkan rata-rata peluang kejadian akan dapat terjadi.

#1 d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == fail, fail, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang kegagalan X = 3 sebelum sukses pertama",
       subtitle = "Geometric(.2)",
       x = "kegagalan sebelum sukses pertama (x)",
       y = "Probabilitas") 
#1e
#rataan
rataan <- 1/p
rataan

#varians
varians <- (1-p)/(p^2)
varians

