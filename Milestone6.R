# Load the Iris dataset
data(iris)

# Select two quantitative columns: Sepal.Length and Sepal.Width
selected_columns <- iris[, c("Sepal.Length", "Sepal.Width")]

# Create a scatterplot
plot(selected_columns$Sepal.Length, selected_columns$Sepal.Width, 
     xlab="Sepal Length", ylab="Sepal Width",
     main="Scatterplot of Sepal Length vs Sepal Width")

# Compute the correlation
correlation <- cor(selected_columns$Sepal.Length, selected_columns$Sepal.Width)

# Interpretation:
# The scatterplot of Sepal Length vs. Sepal Width shows the relationship between these two variables. It appears that there is a moderately negative linear relationship between the two. As Sepal Length increases, Sepal Width tends to decrease. The points on the scatterplot are loosely clustered around a downward-sloping linear trend. The correlation coefficient of approximately -0.1176 further confirms this relationship. While the correlation is not extremely strong, it suggests a tendency for sepal width to decrease as sepal length increases, although there is still some variability in the data.
