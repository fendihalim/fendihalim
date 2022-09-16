# Data Science Projects
### 1. [[NLP] Am*zon Rating Predictor](https://github.com/fendihalim/fendihalim/tree/main/Data%20Science/A_music_rating_prediction)
![alt text](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/A_music_rating_prediction/a-word-cloud.png)
- Built a recommender system model to make predictions related to Am*zon Music Reviews. Given a user and review data, predict the review's star rating (1 to 5) as accurately as possible. Notebook outlines the process of building this system including data exploration and preparation, model interpretation, and insights of the resulting model and analysis. 
- Raw dataset contains 150,000 music reviews which some information that can be informative while others are unnecessary and noisy. Therefore data exploration, data cleaning, feature engineering, and feature selection were implemented to ensure the highest data quality. 
- Predictors used for machine learning were *Logistic Regression*, *Linear SVC*, *Linear Regression*, *Decision Tree*, *XGBoost*, and *Random Forest.*
![alt text](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/A_music_rating_prediction/model-implementation.png)
### 2. [Covid Hierarichal Clustering](https://github.com/fendihalim/fendihalim/tree/main/Data%20Science/COVID_Clustering)
- Data set over 400,000 scholarly articles, including over 150,000 with full text, about COVID-19 were being analyzed to gain useful insights about COVID-19 and how we might be able to tackle the outbreak, contain the spread, flatten the curve, and improve vaccination efforts. 
- Hypothesis: What do abstracts from COVID-19 journals say about **PPE, medicine, disinfect, exercise, and diet**?
- Word2Vec is selected as the model selection for this topic because Word2Vec can detect synonymous words based on distance between vectors. For example, eat has a word similarity with consume. This model will be utilized with selected keywords from hypothesis.
- Using this dendrogram / hierarchical clustering, anyone can identify which keyword belongs to which cluster. This is useful for researchers as they can collaborate to further research and investigate on similar covid topics (same cluster). 
![alt text](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/COVID_Clustering/dendrogram-hierarchichal-clustering.png)
### 3. [Ordered Logistic Regression](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/ordinal_logistic_regression_survey/ordinal-logistic-regression-survey.ipynb)
- Supervised machine learning problem about survey results from 20036 participants with 355 columns (features), representing survey questions to answer yearly compensation.
- Since yearly compensation is an ordered information (e.g. $50,000 < $75,000, < $100,000), ordinal logistic regression algorithm can be implemented to improve the result of prediction compared to naive approach of treating target as unordered set.
- Most of survey questions are in categorical forms such as yes or no questions. Therefore, these features were converted to numerical values using **OneHotEncoder()** while ordered categorical values such as bachelor, master's, or PhD can be converted using **OrdinalEncoder**.
- To reduce the curse of dimensionality, feature selection was done by using **Linear_model.Lasso**. Good features need to have low correlation between each other because high correlation causes the model to be very sensitive to the data. 413 initial features were reduced to good 8 important features.

![alt text](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/ordinal_logistic_regression_survey/heatmap-feature-correlation.png)
### 4. [[NLP] Twitter Sentiment Analysis](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/twitter_sentiment_election/twitter-sentiment-election.ipynb)
- Compute the sentiment of text information from tweets posted on Canadian Elections. The goal is to use sentiment analysis on Twitter data to get insight into the Canadian Elections.
- Two datasets were analyzed:
  1. General tweets that have had their sentiments already analyzed and recorded as binary values 0 (negative) and 1 (positive).
  2. Canadian Election tweets containing tweets regarding the 2019 Candian PM elections
- Technique used:
  1. Data Cleaning having All html tags and attributes, All URLs, and stopwords removed. Tokenized words were converted into its root word to reduce number of unique features using stemming or lemmatizing methods.
  ![alt text](https://github.com/fendihalim/fendihalim/blob/main/Data%20Science/twitter_sentiment_election/text-cleaning.png)
  2. Tokenized words were converted into Bag of Words (BoW) and TF-IDF in order for our machine to recognize words in a *number* form.
  3. Seven classification algorithms(logistic regression, KNN, Naive Bayes, SVM, Decision Tree, Random Forest, and XGBoost) were tested in order to get the best model in predicting sentiment analysis data. **GridSearchCV()** was used to cross-validate the model and to get the best parameter for our model.
