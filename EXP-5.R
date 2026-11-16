
# Factor using sample categories
height_group <- factor(c("Short", "Tall", "Medium",
                         "Tall", "Short"))

print(height_group)
print(levels(height_group))

# Random sample of letters
set.seed(10)
letters_sample <- sample(LETTERS[1:5], 6, replace=TRUE)
letter_factor <- factor(letters_sample)

print(letter_factor)
print(levels(letter_factor))
