library(ggplot2)


set.seed(42)

X <- seq(1, 100, by=1)

error <- rnorm(100, mean = 0, sd = x/5)

Y <- 2 + 0.5*X + error

data <- data.frame(X, Y)


ggplot(data, aes(x = X, y = Y))+
  geom_point(color = "yellow", alpha = 1)+
  geom_smooth(method = "lm", color = "red", se = TRUE)+
  labs(title = "Heteroskedacity Exemple: Increasing the error Variance",
       x = "X(e.g. INCOME)",
       y = "Y(e.g. GDP growth)",
       subtile = "Mere ko naa pata",
       caption = "from: Aditya kartikey") +
  theme_minimal()