


library(Quandl)
library(devtools)
library(tidyverse)
Quandl.api_key("19f3cui29NAwaxVU4wEM")

unem <- Quandl("FRED/LNS14000024",start_date = "1951-01-01", end_date = "2021-03-01", collapse = "quarterly")
cpi <- Quandl("FRED/CPIAUCSL", start_date = "1950-01-01",end_date = "2021-03-01", collapse = "quarterly",transform = "rdiff")
cpi1 <- Quandl("FRED/CPIAUCSL", start_date = "1950-01-01",end_date = "2021-03-01", collapse = "quarterly")

quart_rate <- diff(cpi1$Value,lag= 4,differences = 1)*-1
head(quart_rate)
tail(quart_rate)
mean(quart_rate)
plot(unem[,2],quart_rate)
data <- tibble(UNEM = unem[,2], Inflation = quart_rate)
attach(data)
cor(UNEM,Inflation)
phillips <- lm(Inflation~UNEM)
summary(phillips)
abline(phillips)
