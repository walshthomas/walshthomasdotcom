%% NEWTON:
% Solves for optimal K2 given stochastic productivity
clear; clc;

%% graph settings
set(0, 'DefaultLineLineWidth', 1, 'DefaultLineMarkerSize', 6, 'DefaultAxesFontSize', 18, ...
    'DefaultAxesTickLabelInterpreter', 'latex', 'DefaultFigurePaperOrientation', 'portrait',...
    'DefaultFigurePaperUnits', 'inches',...
    'DefaultFigurePaperSize', [6, 4.5],...
    'DefaultFigurePaperPosition', [0,0,6,4.5],...
    'DefaultLegendInterpreter', 'latex', ... 
    'DefaultLineLineWidth', 2, ...
    'DefaultTextInterpreter', 'latex', 'DefaultFigureRenderer', 'painters')

%% Parameters from Q2
K1      = 5;         % Initial capital
beta    = 0.96;      % Discount factor (NOT capital share!)
alpha   = 0.33;      % Capital elasticity in production
delta   = 0.025;     % Depreciation rate

% Productivity states
theta_L = 0.7;
theta_M = 1.0;
theta_H = 1.3;
theta = [theta_L, theta_M, theta_H];

% Transition matrix P(θ_{t+1} | θ_t)
% Firm starts in LOW productivity state (row 1)
P = [0.60, 0.25, 0.15;
     0.10, 0.80, 0.10;
     0.00, 0.30, 0.70];

initial_state = 1;  % Start in low productivity state

 % Check your answer against theoretical benchmark
        % For state 1 (low), expected theta
        theta_bar = P(1,:) * theta' 
        theoretical = (alpha * beta * theta_bar / (1 - beta*(1-delta)))^(1/(1-alpha))


fprintf('=== Set Parameters ===\n');

%% Define FOC and its derivative

% Expected marginal product of K2
E_MPK = @(K2, z1) sum(P(z1,:) .* alpha .* theta .* K2.^(alpha-1));

% F(x) = 0
fx = @(K2, z1) -1 + beta * (E_MPK(K2, z1) + (1-delta));

% F'(x) for updates 
fxprime = @(K2, z1) beta * sum(P(z1,:) .* ...
                          alpha .* (alpha-1) .* theta .* K2.^(alpha-2));
fprintf('=== Set functions ===\n');


%% Newton's Method
xold = K1;          % Initial guess: K2 = K1 (no net investment)
epsilon = 1e-10;    % Tolerance for convergence
max_iter = 1000;

clc 

fprintf('=== Newton Method Iterations ===\n');
fprintf('Iter\tK2\t\tError\t\tStep\n');
fprintf('--------------------------------------------------------\n');

for iter = 1:max_iter
    % Newton step
    f_val = fx(xold, 1);
    fp_val = fxprime(xold, 1);
    xnew = xold - f_val/fp_val;
    
    % Print iteration info
    fprintf('%d\t%.8f\t%.4e\t%.4e\n', iter, xold, abs(f_val), abs(xnew - xold));
    
    % Check convergence
    if abs(xnew - xold) < epsilon
        fprintf('\n*** Converged after %d iterations ***\n', iter);
        break
    end
    
    xold = xnew;
end

%% Results
K2opt = xnew;
Iopt = K2opt - (1-delta)*K1;
clc;
fprintf('\n=== OPTIMAL SOLUTION ===\n');
fprintf('Initial capital K1:        %.4f\n', K1);
fprintf('Optimal K2:                %.4f\n', K2opt);
fprintf('Optimal Investment I1:     %.4f\n', Iopt);
fprintf('Net Investment:            %.4f\n', Iopt - delta*K1);
fprintf('Investment Rate (pct):     %.4f\n', 100*Iopt/K1);
fprintf('\nFOC value at optimum:    %.4e (should be ≈ 0)\n', fx(K2opt, 1));
fprintf('SOC value at optimum:      %.4f (should be < 0)\n', fxprime(K2opt, 1));
fprintf('theoretical value:      %.4f (should be < 0)\n', theoretical);



%% Policy function over capital grid
Nz = 3; Nk=33;
K1_grid   = linspace(3, 12, Nk);
K2_policy = zeros(Nk, Nz);
I1_policy = zeros(Nk, Nz);

fprintf('\nComputing policy function over capital grid...\n');

for iz =1:3
    for ik = 1:length(K1_grid)
        % Start with K2 = K1 as initial guess
        K2_temp = K1_grid(ik);

        % Newton's method for this K1
        for iter = 1:max_iter
            step = fx(K2_temp, iz) / fxprime(K2_temp, iz);
            K2_temp = K2_temp - step;
            if abs(step) < epsilon
                break;
            end
        end

        K2_policy(ik,iz) = K2_temp;
        I1_policy(ik,iz) = K2_temp - (1-delta)*K1_grid(ik);
    end
end

% Plotting
close all

subplot(1,2,1);
plot(K1_grid, K2_policy, 'LineWidth', 2);
hold on;
plot(K1_grid, K1_grid, 'k--', 'LineWidth', 1.5);
plot(K1, K2opt, 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
xlabel('Initial Capital $K_1$');
ylabel('Optimal $K_2$');
title('Capital Policy Function');
grid on;

subplot(1,2,2);
plot(K1_grid, I1_policy, 'LineWidth', 2);
hold on;
plot(K1_grid, delta*ones(size(K1_grid)), 'k--');
plot(K1, Iopt, 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
xlabel('Initial Capital, $K_1$');
ylabel('Optimal Investment $\mathcal{I}_1 = K_2 - (1-\delta)K_1$');
title('Investment Policy Function');
grid on;

x0=10;
y0=10;
width=800;
height=500;
tightfig
set(gcf,'position',[x0,y0,width,height])
saveas(gcf,'newton_assignment1.pdf')

%%

fprintf('Newton K2 (high precision): %.20f\n', K2opt);
fprintf('Theory K2 (high precision): %.20f\n', theoretical);
