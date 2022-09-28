# Credit Risk Modeling of Corporate Bonds
- The purpose of this project is to model a credit-risky portfolio of corporate bonds using several Monte Carlo Approximation models and compare the VaR and CVaR outputs. 100 counterparties and their information such as credit drivers, credit state migration probabilities, losses in credit states, etc. have been prepared to be analyzed.
- The first step is to create 100,000 out-of-sample scenarios. This will represent true distribution of portfolio losses. The next step is to generate the first in-sample scenarios (Monte Carlo Approximation 1) with 1000 systemic scenarios and 5 idiosyncratic scenarios, totaling 5000 scenarios. Next, generate Monte Carlo Approximation 2 which contains 5000 systemic scenarios and 1 idiosyncratic scenario, totaling 5000 scenarios. On the contrary from Monte Carlo Approximation 1 (MC1), MC2 will take longer to compute due generating more random number. Not only that, VaR and CVaR output should be closer to true distribution’s outputs.
![alt text](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/images/MC1.png)
![alt text](https://github.com/fendihalim/fendihalim/blob/main/Financial%20Engineering/images/MC2.png)
- The VaR and CVaR of both graphs look similar with the true distribution of VaR and CVaR.
- To minimize impacts of sampling error, increase the samples / scenarios so that it is closer to the true distribution. In addition to that, Monte Carlo Approximation 2 with extra steps in having more samples is preferred as y (systemic risk random number) is newly generated for every scenario so that approximation is closer to the true distribution. To minimize impacts of model errors, the correct distribution (non-normal) must be used. Normal distribution cannot be used because the result is underestimated compared to the real value.