# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
print(star_wars_matrix)


# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")
               
star_wars_matrix <- matrix(box_office, 
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

print(worldwide_vector)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

print(all_wars_matrix )

# star_wars_matrix and star_wars_matrix2 are available in your workspace
# star_wars_matrix  
# star_wars_matrix2 

# print(star_wars_matrix)
# print(star_wars_matrix2)

# # Combine both Star Wars trilogies in one matrix
# all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
# print(all_wars_matrix)

# # all_wars_matrix is available in your workspace
# all_wars_matrix

# # Total revenue for US and non-US
# total_revenue_vector <- colSums(all_wars_matrix)
  
# # Print out total_revenue_vector
# total_revenue_vector


# # all_wars_matrix is available in your workspace
# all_wars_matrix

# # Select the non-US revenue for all movies
# non_us_all <- all_wars_matrix[,2]
  
# # Average non-US revenue
# mean(non_us_all)
  
# # Select the non-US revenue for first two movies
# non_us_some <- non_us_all[1:2] 
  
# # Average non-US revenue for first two movies
# mean(non_us_some)

# # all_wars_matrix is available in your workspace
# all_wars_matrix

# # Select the non-US revenue for all movies
# non_us_all <- all_wars_matrix[,2]
  
# # Average non-US revenue
# mean(non_us_all)
  
# # Select the non-US revenue for first two movies
# non_us_some <- non_us_all[1:2] 
  
# # Average non-US revenue for first two movies
# mean(non_us_some)

# all_wars_matrix is available in your workspace
# all_wars_matrix

# # Estimate the visitors
# visitors <- all_wars_matrix/5
  
# # Print the estimate to the console
# print(visitors)


# all_wars_matrix
#                            US non-US
# A New Hope              461.0  314.4
# The Empire Strikes Back 290.5  247.9
# Return of the Jedi      309.3  165.8
# The Phantom Menace      474.5  552.5
# Attack of the Clones    310.7  338.7
# Revenge of the Sith     380.3  468.5

# ticket_prices_matrix
#                          US non-US
# A New Hope              5.0    5.0
# The Empire Strikes Back 6.0    6.0
# Return of the Jedi      7.0    7.0
# The Phantom Menace      4.0    4.0
# Attack of the Clones    4.5    4.5
# Revenge of the Sith     4.9    4.9