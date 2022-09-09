clear
clc
% data of covariance matrix is calcualted from python file
cov_matrix_raw = readmatrix('risk_parity_cov.xlsx'); % import cov matrix
Q = cov_matrix_raw(2:end,:); % covariance matrix
x = optimvar('x',length(Q)); % optimization variable (x_1 to x_20)
theta = optimvar('theta'); % dummy variable theta 
obj = sum((x.*(Q*x)-theta).^2); % cost function
prob = optimproblem("Objective",obj); % optimization problem

% constraints
cons1 = sum(x) == 1; % sum of all the weights have to be equal to 1
cons2 = x >= 0; % long only
cons3 = x.*(Q*x) == theta; % at optimality, x_i*(Q*x)_i = theta for all i
prob.Constraints.cons1 = cons1; % attach constraint 1 to prob
prob.Constraints.cons2 = cons2; % attach constraint 2 to prob
prob.Constraints.cons3 = cons3; % attach constraint 3 to prob

%initial point
x0.x = zeros(1,length(Q))';
x0.theta = 0;

fprintf('ERC Optimization\n')
show(prob) % display optimization problem along with constraints

% solving optimization problem using SOLVE function
% given prob and x0, SOLVE function will choose fmincon to solve
[sol,fval] = solve(prob,x0);

% result
fprintf('Weights of each asset from x1 to x20 respectively:\n')
disp((sol.x)') % Weight of each asset
fprintf('Risk of each asset from x1 to x20 respectively:\n')
disp((sol.x.*(Q*sol.x))') % Risk vector