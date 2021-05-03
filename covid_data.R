library(tidyverse)
covid <- read_csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")
tail(covid)
covid1 <- covid %>% 
  filter(date == "2021-05-02")
sum(covid1$deaths)
(sum(covid1$deaths)/sum(covid1$cases))*100
print(covid1)
covid1 %>%
  group_by(state)%>%
  summarise(deaths)
