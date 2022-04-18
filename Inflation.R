install.packages("Quandl")
library(Quandl)
library(quantmod)
Quandl.api_key("19f3cui29NAwaxVU4wEM")
inflation <- Quandl('RATEINF/CPI_USA', type = "xts", collapse = "annual",transform = "rdiff" )
?Quandl()
colnames(inflation) <- "INF"
inflation <- inflation[80:109,]
re <- lm(INF~seq(1,109), data = inflation)
summary(re)
plot(inflation, col = "red", main = "Inflation Annual")
mean(inflation$INF)
length(inflation)
