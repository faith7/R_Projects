glimpse(counties)
# Select the columns 
counties %>%
  select(state, county, population, poverty)


counties_selected <- counties %>%
  select(state, county, population, public_work)

# Add a new column public_workers with the number of people employed in public work
counties_selected %>%
  mutate(public_workers = public_work * population / 100)


counties_selected <- counties %>%
  select(state, county, population, private_work, public_work, self_employed)

# Add a verb to sort in descending order of public_work
counties_selected %>%
  arrange(desc(public_work))

# Filter for Texas and more than 10000 people; sort in descending order of private_work
counties_selected %>%
  filter(state == "Texas",
         population > 10000) %>%
  arrange(desc(private_work))

# Sort in descending order of the public_workers column
counties_selected %>%
  mutate(public_workers = public_work * population / 100) %>%

counties %>%
  # Select the five columns 
  select(state, county, population, men, women) %>%
  # Add the proportion_men variable
  mutate(proportion_men = men / population) %>%
  # Filter for population of at least 10,000
  filter(population >= 10000) %>% 
  # Arrange proportion of men in descending order 
  arrange(desc(proportion_men))