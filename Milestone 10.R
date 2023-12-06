# Load the Iris dataset
data(iris)

# Create a boxplot for Sepal.Length across different species
boxplot(Sepal.Length ~ Species, data = iris, 
        main = "Boxplot of Sepal Length by Species",
        xlab = "Species", ylab = "Sepal Length")

# Interpretation:
# The boxplot visually compares the distribution of Sepal.Length across the three species in the Iris dataset. We observe that the setosa species tends to have a shorter sepal length, while versicolor and virginica species exhibit a wider range with longer sepal lengths. The medians (line inside the boxes) indicate the central tendency of each species. This plot provides a clear overview of the distributional differences in Sepal.Length among the three Iris species.
