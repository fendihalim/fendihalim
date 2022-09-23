### Covid Hierarichal Clustering
- Data set over 400,000 scholarly articles, including over 150,000 with full text, about COVID-19 were being analyzed to gain useful insights about COVID-19 and how we might be able to tackle the outbreak, contain the spread, flatten the curve, and improve vaccination efforts. 
- Hypothesis: What do abstracts from COVID-19 journals say about **PPE, medicine, disinfect, exercise, and diet**?
- Word2Vec is selected as the model selection for this topic because Word2Vec can detect synonymous words based on distance between vectors. For example, eat has a word similarity with consume. This model will be utilized with selected keywords from hypothesis.
- Using this dendrogram / hierarchical clustering, anyone can identify which keyword belongs to which cluster. This is useful for researchers as they can collaborate to further research and investigate on similar covid topics (same cluster). 
