# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[c(2:5)]

print(roulette_selection_vector)

# Select poker results for Monday, Tuesday and Wednesday
poker_start = poker_vector[c("Monday","Tuesday","Wednesday")]

# Calculate the average of the elements in poker_start
print(mean(poker_start))


# Which days did you make money on poker?
selection_vector <- poker_vector > 0
  
# Print out selection_vector
print(selection_vector)


# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

print(poker_winning_days)