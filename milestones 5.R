# Load the Iris dataset
data(iris)

# Selecting two quantitative columns: Sepal.Length and Sepal.Width
selected_columns <- iris[, c("Sepal.Length", "Sepal.Width")]

# Calculate mean, median, variance, and standard deviation for Sepal.Length
mean_sepal_length <- mean(selected_columns$Sepal.Length)
median_sepal_length <- median(selected_columns$Sepal.Length)
variance_sepal_length <- var(selected_columns$Sepal.Length)
std_deviation_sepal_length <- sd(selected_columns$Sepal.Length)

# Calculate mean, median, variance, and standard deviation for Sepal.Width
mean_sepal_width <- mean(selected_columns$Sepal.Width)
median_sepal_width <- median(selected_columns$Sepal.Width)
variance_sepal_width <- var(selected_columns$Sepal.Width)
std_deviation_sepal_width <- sd(selected_columns$Sepal.Width)

# Add the computed statistics to your webpage
# Display the means, medians, variances, and standard deviations for both columns.

# Write a few sentences comparing the corresponding means and medians:
# In the Sepal.Length column, the mean (mean_sepal_length) is slightly greater than the median (median_sepal_length). This indicates a slightly right-skewed distribution with a tail on the right side. 
# For the Sepal.Width column, the mean (mean_sepal_width) is close to the median (median_sepal_width), suggesting a relatively symmetric distribution.

# If you computed any trimmed means, you can explain why you chose the trimmed mean over the mean for that data column. In this case, you don't need to use trimmed means, as the data does not exhibit significant outliers.

# Add a few sentences on your webpage giving your interpretation of the standard deviations:
# The standard deviation for Sepal.Length (std_deviation_sepal_length) is relatively small, indicating that the data points are close to the mean. 
# The standard deviation for Sepal.Width (std_deviation_sepal_width) is also relatively small, suggesting that the data points are clustered around the mean.

# Update your webpage or document to include this analysis.
