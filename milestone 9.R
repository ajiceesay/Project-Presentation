#HYPOTHESIS 1
# Subset the data for setosa and versicolor species
setosa_data <- iris[iris$Species == "setosa", "Sepal.Length"]
versicolor_data <- iris[iris$Species == "versicolor", "Sepal.Length"]

# Perform t-test for independent samples
t_test_result <- t.test(setosa_data, versicolor_data)

# Interpretation:
# The t-test for independent samples comparing the mean Sepal.Width between virginica and versicolor species yielded a very small p-value. With a significance level of alpha=0.05, we can reject the null hypothesis. This suggests that there is sufficient evidence to conclude that the mean Sepal.Width of virginica species is different from the mean Sepal.Width of versicolor species.

#HYPOTHESIS 2

# Subset the data for virginica and versicolor species
virginica_data <- iris[iris$Species == "virginica", "Sepal.Width"]
versicolor_data <- iris[iris$Species == "versicolor", "Sepal.Width"]

# Perform t-test for independent samples
t_test_result <- t.test(virginica_data, versicolor_data)


# Interpretation:
# The t-test for independent samples comparing the mean Sepal.Width between virginica and versicolor species yielded a p-value of 0.001819483. With a significance level of alpha=0.05, we can reject the null hypothesis. This suggests that there is sufficient evidence to conclude that the mean Sepal.Width of virginica species is different from the mean Sepal.Width of versicolor species.

