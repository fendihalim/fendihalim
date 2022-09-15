# Financial Engineering Projects
### 1. [Credit Risk Modeling of Corporate Bonds](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/credit-risk-modeling)
- The purpose of this project is to model a credit-risky portfolio of corporate bonds using several Monte Carlo Approximation models and compare the VaR and CVaR outputs. 100 counterparties and their information such as credit drivers, credit state migration probabilities, losses in credit states, etc. have been prepared to be analyzed.
- The first step is to create 100,000 out-of-sample scenarios. This will represent true distribution of portfolio losses. The next step is to generate the first in-sample scenarios (Monte Carlo Approximation 1) with 1000 systemic scenarios and 5 idiosyncratic scenarios, totaling 5000 scenarios. Next, generate Monte Carlo Approximation 2 which contains 5000 systemic scenarios and 1 idiosyncratic scenario, totaling 5000 scenarios. On the contrary from Monte Carlo Approximation 1 (MC1), MC2 will take longer to compute due generating more random number. Not only that, VaR and CVaR output should be closer to true distribution’s outputs.
- ![alt text](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/images/MC1.png)
- ![alt text](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/images/MC2.png)
- The VaR and CVaR of both graphs look similar with the true distribution of VaR and CVaR.
- In-depth analysis such as sampling error can be observed on the [notebook](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/credit-risk-modeling/credit-risk-modeling-and-simulation.ipynb)
### 2. [Portfolio Strategies Implemented on 2008 Market Crash](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/financial-optimization-simulation)
### 3. [Portfolio Strategies Simulated on 2020 COVID Crash](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/financial-optimization-simulation)
### 4. [Option Pricing with Black-Scholes and Monte Carlo Simulation](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/option-asset-pricing)
### 5. [Varities Option Pricing](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/option-pricing)
