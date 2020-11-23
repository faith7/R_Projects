library(gapminder)
library(dplyr)

# Sort in ascending order of lifeExp
gapminder %>% arrange(lifeExp)

  
# Sort in descending order of lifeExp
gapminder %>% arrange(desc(lifeExp))

# Filter for the year 1957, then arrange in descending order of population
gapminder %>% filter(year == 1957)  %>% arrange(desc(pop))


# Use mutate to change lifeExp to be in months
gapminder %>% mutate(lifeExp=lifeExp*12)

# Use mutate to create a new column called lifeExpMonths
gapminder %>% mutate(lifeExpMonths = lifeExp*12)


# Filter, mutate, and arrange the gapminder dataset
gapminder %>% filter(year == 2007) %>% mutate(lifeExpMonths = 12 * lifeExp) %>% arrange(desc(lifeExpMonths))