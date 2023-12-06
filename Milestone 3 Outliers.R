# Load the Iris dataset
data(iris)

# Selecting four columns: Sepal.Length, Sepal.Width, Petal.Length, and Species
selected_columns <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Species")]

# Plot 1: Sepal Length (Histogram)
hist(selected_columns$Sepal.Length, main="Sepal Length Distribution", xlab="Sepal Length", ylab="Frequency")

# Analysis for Sepal Length
# The Sepal Length distribution appears to be bimodal, with two distinct peaks. The distribution for each species might be different.

# Plot 2: Sepal Width (Histogram)
hist(selected_columns$Sepal.Width, main="Sepal Width Distribution", xlab="Sepal Width", ylab="Frequency")

# Analysis for Sepal Width
# The Sepal Width distribution shows a roughly normal distribution with a slight skew to the right.

# Plot 3: Petal Length (Histogram)
hist(selected_columns$Petal.Length, main="Petal Length Distribution", xlab="Petal Length", ylab="Frequency")

# Analysis for Petal Length
# The Petal Length distribution appears to have two distinct peaks, suggesting the possibility of two different groups or species.

# Plot 4: Species (Bar Chart)
barplot(table(selected_columns$Species), main="Species Distribution", xlab="Species", ylab="Frequency")

# Analysis for Species
# The Species distribution shows the count of each iris species in the dataset, indicating that there are 50 samples for each species.

# Handling Outliers (Removing outliers from Sepal Length column using IQR method)
Q1 <- quantile(selected_columns$Sepal.Length, 0.25)
Q3 <- quantile(selected_columns$Sepal.Length, 0.75)
IQR <- Q3 - Q1
lower_bound <- Q1 - 1.5 * IQR
upper_bound <- Q3 + 1.5 * IQR
selected_columns <- selected_columns[selected_columns$Sepal.Length >= lower_bound & selected_columns$Sepal.Length <= upper_bound, ]

# Handling Missing Data (Introducing missing values in Petal Length and replacing with median)
# Simulating missing data for demonstration purposes
selected_columns$Petal.Length[c(3, 7, 15)] <- NA
median_petal_length <- median(selected_columns$Petal.Length, na.rm = TRUE)
selected_columns$Petal.Length[is.na(selected_columns$Petal.Length)] <- median_petal_length

# Redo Plot 1: Sepal Length (Histogram) - After Handling Outliers
hist(selected_columns$Sepal.Length, main="Sepal Length Distribution (Outliers Removed)", xlab="Sepal Length", ylab="Frequency")

# Analysis for Sepal Length (After Handling Outliers)
# After removing outliers, the Sepal Length distribution appears less skewed, with a more normal distribution.

# Redo Plot 3: Petal Length (Histogram) - After Handling Missing Data
hist(selected_columns$Petal.Length, main="Petal Length Distribution (Missing Data Replaced)", xlab="Petal Length", ylab="Frequency")

# Analysis for Petal Length (After Handling Missing Data)
# Missing values in the Petal Length column were replaced with the median value. The distribution remains similar to the original, but missing data is now handled.

