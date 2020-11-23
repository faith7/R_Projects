# Use count to find the number of counties in each region
counties_selected %>%
  count(region, sort = TRUE)

# Use count to find the number of counties in each region
counties_selected %>%
  count(region, sort = TRUE)


# Find number of counties per state, weighted by citizens
counties_selected %>%
  count(state,wt=citizens, sort=TRUE)

counties_selected %>%
  # Add population_walk containing the total number of people who walk to work 
  mutate(population_walk = population * walk / 100) %>%
  # Count weighted by the new column
  count(state, wt = population_walk, sort = TRUE)


# Summarize to find minimum population, maximum unemployment, and average income
counties_selected %>%
  summarize(min_population = min(population),
            max_unemployment = max(unemployment),
            average_income = mean(income))


# Group by state and find the total area and population
counties_selected %>%
  group_by(state) %>%
  summarize(total_area = sum(land_area),
            total_population = sum(population))


# Summarize to find the total population
counties_selected %>%
  group_by(region, state) %>%
  summarize(total_pop = sum(population))


# Calculate the average_pop and median_pop columns 
counties_selected %>%
  group_by(region, state) %>%
  summarize(total_pop = sum(population)) %>%
  summarize(average_pop = mean(total_pop),
            median_pop = median(total_pop))


# Group by region and find the greatest number of citizens who walk to work
counties_selected %>%
  group_by(region) %>%
  top_n(1, walk)

counties_selected %>%
  group_by(region, state) %>%
  # Calculate average income
  summarize(average_income = mean(income)) %>%
  # Find the highest income state in each region
  top_n(1, average_income)


# Count the states with more people in Metro or Nonmetro areas
counties_selected %>%
  group_by(state, metro) %>%
  summarize(total_pop = sum(population)) %>%
  top_n(1, total_pop) %>%
  ungroup() %>% 
  count(metro)

