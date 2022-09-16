# Cocktail Optimization Project
- The IBA official cocktails are the cocktails selected by the International Bartenders Association which are well-known drinks that all bartenders should know how to make
- IBA official cocktails are divided into three categories:
  1. **The Unforgettables**. Popular drinks from this category are *Daiquiri*, *Negroni*, and *Martini*
  2. **Contemporary Classics**. Popular drinks from this category are *Cosmopolitan*, *Margarita*, and *Mimosa*
  3. **New Era Drinks**. Popular drinks from this category are *Dark 'n' Stormy*, *Paloma*, and *Espresso Martini*

- This notebook includes all of the IBA official cocktails except *Kir, Mai Tai, Zombie, Barracuda, Canchanchara, Penicillin, Spicy Fifty, and Vento* due to the use of expensive exclusive ingredients and overly complicated steps in making them.
- Gurobi solver is selected to do this project because it is fast and easy to use. To solve this cocktail optimization, the Mixed-Integer Linear Programming method is being used because the decision variable can only take binary value 0 (can't make this cocktail) or 1 (cocktail can be made). Constraints such as ingredients are also binary because we either buy or don't buy.
-The price of ingredients is in USD from 2020. Further improvement is to web scrape data from a liquor store and grocery store.
---
## How to Navigate File and Customize
1. Cocktail Names contain variables (can only take binary) for each cocktail
2. Ingredients Names contain variables (can only take binary) for each ingredient
3. The Objective Function will be the addition of all Cocktail Names. The objective function is set to be maximized because we want the most cocktails we can make
4. Constraints:
      ![alt text](https://github.com/fendihalim/fendihalim/blob/main/cocktail-project/images/budget-constraint-cocktail.png)
    1. The Budget is the addition of all the ingredients we need to buy along with the price. The number inside the blue box can be adjusted according to the user's budget.
      ![alt text](https://github.com/fendihalim/fendihalim/blob/main/cocktail-project/images/cocktail-constraint.png)
    2. Cocktail Constraints contain the ingredients to make each cocktail (above is just a sample of all the cocktails)
      ![alt text](https://github.com/fendihalim/fendihalim/blob/main/cocktail-project/images/selected-cocktail-constraint-.png)
    3. Selected Cocktail is an **OPTIONAL** constraint in case the user really wants a specific drink then he/she can turn it on by adding the preferred cocktail by following the format as written. For example the user wants a gin_fizz, then he/she will type *gin_fiz_s = milp_model.addConstr(gin_fizz == 1, "gin_fizz_s").* Commented lines are examples of the format in the constraints should be written.
      ![alt text](https://github.com/fendihalim/fendihalim/blob/main/cocktail-project/images/selected-ingredients-constraint.png)
    4. Selected Ingredients is an **OPTIONAL** constraint in case the user really wants to buy a specific ingredient(s). The format of this constraint is similar to the Selected Cocktail constraint.
    5. Once the constraints have been adjusted, run the file from the top to the bottom.
    6. The line `milp_model.optimize()` is solve our cocktail problem 
    
       ![alt text](https://github.com/fendihalim/fendihalim/blob/main/cocktail-project/images/cocktail-result.png)
       
    6. Result such as number of cocktails, which cocktails, and ingredients to buy
   
---
Note: This is the first version of a cocktail optimizer. The next version will be to web scrape from an online liquor store and grocery store to get ingredient prices and implement solver on a cloud platform such as heroku.com.
