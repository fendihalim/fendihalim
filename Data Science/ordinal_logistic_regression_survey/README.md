# Ordered Logistic Regression
- Supervised machine learning problem about survey results from 20036 participants with 355 columns (features), representing survey questions to answer yearly compensation.
- Since yearly compensation is an ordered information (e.g. $50,000 < $75,000, < $100,000), ordinal logistic regression algorithm can be implemented to improve the result of prediction compared to naive approach of treating target as unordered set.
- Most of survey questions are in categorical forms such as yes or no questions. Therefore, these features were converted to numerical values using **OneHotEncoder()** while ordered categorical values such as bachelor, master's, or PhD can be converted using **OrdinalEncoder**.
- To reduce the curse of dimensionality, feature selection was done by using **Linear_model.Lasso**. Good features need to have low correlation between each other because high correlation causes the model to be very sensitive to the data. 413 initial features were reduced to good 8 important features.

![alt text](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/ordinal_logistic_regression_survey/heatmap-feature-correlation.png)
