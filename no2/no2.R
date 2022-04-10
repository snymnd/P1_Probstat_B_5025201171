#2. a
nx <- 4 #diharapakan sembuh
ns <- 20 #total pasien
p <- 0.2 #peluang sembuh
q <- 1 - 0.2
dbinom(nx, ns, prob = p)

#2 b
data.frame(x = 0:10, prob = dbinom(x = 0:10, ns, prob = p)) %>%
  mutate(Success = ifelse(x == nx, nx, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Success)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang x = 4 pasien sembuh",
       subtitle = "Binomial(.2)",
       x = "pasien (x)",
       y = "Probabilitas") 
#2. c
#rataan
rataan <- ns * p
rataan
#varians
varians <- ns * p * q
varians
