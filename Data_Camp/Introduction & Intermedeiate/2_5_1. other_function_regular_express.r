# seq(): Generate sequences, by specifying the from, to, and by arguments.
# rep(): Replicate elements of vectors and lists.
# sort(): Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.
# rev(): Reverse the elements in a data structures for which reversal is defined.
# str(): Display the structure of any R object.
# append(): Merge vectors or lists.
# is.*(): Check for the class of an R object.
# as.*(): Convert an R object from one class to another.
# unlist(): Flatten (possibly embedded) lists to produce a vector.

# @, because a valid email must contain an at-sign.
# .*, which matches any character (.) zero or more times (*). 
# Both the dot and the asterisk are metacharacters. You can use them to match any character 
# between the at-sign and the ".edu" portion of an email address.
# \\.edu$, to match the ".edu" part of the email at the end of the string. 
# The \\ part escapes the dot: it tells R that you want to use the . as an actual character.


# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for .edu addresses more robustly
grepl("@.*\\.edu$", emails)

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep("@.*\\.edu$", emails)

# Subset emails using hits
emails[hits]


# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use sub() to convert the email domains to datacamp.edu
sub("@.*\\.edu$", "@datacamp.edu", emails)


# .*: A usual suspect! It can be read as "any character that is matched zero or more times".
# \\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a metacharacter.
# [0-9]+: Match the numbers 0 to 9, at least once (+).
# ([0-9]+): The parentheses are used to make parts of the matching string available to define the replacement. 
# The \\1 in the replacement argument of sub() gets set to the string that is captured by the regular expression [0-9]+.
awards <- c("Won 1 Oscar.",
  "Won 1 Oscar. Another 9 wins & 24 nominations.",
  "1 win and 2 nominations.",
  "2 wins & 3 nominations.",
  "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
  "4 wins & 1 nomination.")

sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)

