library(wooldridge)
attach(hprice1)
names(hprice1)
h_price <- lm(price~lotsize+sqrft+bdrms)
summary(h_price)
res <- resid(h_price)
sq <- res**2
homosk <- lm(sq~lotsize+sqrft+bdrms)
summary(homosk)
pf(5.34,3,84,lower.tail=F)
pchisq(14.09,3,lower.tail=F)
<h1>Hello</h1>
  