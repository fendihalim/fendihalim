# Cocktail Optimization Project
- The IBA official cocktails are the cocktails selected by the International Bartenders Association which are well-known drinks that all bartenders should know how to make.
- IBA official cocktails are divided into three categories:
  1. **The Unforgettables**. Popular drinks from this category are *Daiquiri*, *Negroni*, and *Martini*
  2. **Contemporary Classics**. Popular drinks from this category are *Cosmopolitan*, *Margarita*, and *Mimosa*
  3. **New Era Drinks**. Popular drinks from this category are *Dark 'n' Stormy*, *Paloma*, and *Espresso Martini*

- This notebook includes all of the IBA official cocktails except *Kir, Mai Tai, Zombie, Barracuda, Canchanchara, Penicilin, Spicy Fifty, and Vento* due to the use of expensive exclusive ingredients and overly complicated steps on making them.
- Gurobi solver is selected to do this project because it is fast and easy to use. To solve this cocktail optimization, Mixed-Integer Linear Programming method is being used because the decision variable can only take binary value 0 (can't make this cocktail) or 1 (cocktail can be made). Constraints such as ingredients are also binary because we either buy or don't buy.
- Price of ingredients are in USD from 2020. Further improvement is to web scrape data from liquor store and grocery store.
---
## How to Navigate File and Customize
1. Cocktail Names contain variable (can only take binary) for each cocktail
2. Ingredients Names contain variable (can only take binary) for each ingredient
3. Objective Function will be the addition of all Cocktail Names. The objective function is set to be maximized because we want the most cocktails we can make
4. Constraints:
      ![alt text](https://github.com/fendihalim/fendihalim/blob/main/cocktail-project/images/budget-constraint-cocktail.png)
    1. Budget is the addition of all the ingredients we need to buy along with the price. Number inside the blue box can be adjusted according to user's budget.
    2. Cocktail Constraints contain the ingredients to make each cocktail
    3. Selected Cocktail is an optional constraint in case the user really wants a specific drink then he/she can turn it on by uncommenting the line or even add the preferred cocktail by following the format as written