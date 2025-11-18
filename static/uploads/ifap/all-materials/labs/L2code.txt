% Lab 2
% Excerises on Newton's Method
clear all; clc;


%% 1D Function
% f(x) = x^3 - 2x - 5 = 0
fx = @(x) x.^3 - 2*x - 5;  % the . not necessary

fxprime = @(x) 3*x.^2 - 2; % derivative of f(x)
xold = 1;    % x0 initial guess
epsilon = 1e-8;    % tolerance for convergence
delta = 1e-10;   % close to zero

for iter = 1:40

    xnew = xold - fx(xold)/fxprime(xold);

    % print out iteration no, error and function value at xnew point
    fprintf('Iteration No. : %d Error : %d f(x) : %d \n', iter, norm(xnew - xold), abs(fx(xnew)))

    if norm(xnew - xold) < epsilon && abs(fx(xnew)) < delta   % norm finds euclidean distance (always non-negative)
        fprintf('Success! Iteration Converged. \n')
        break
    end

    xold = xnew;  % repeat with new value
end

% Root is xnew


%% 2D Function
fx = @(x)[x(1).^3 + x(2) - 1; -x(1) + x(2).^3 + 1];  % 2d function, x is a vector of [x(1); x(2)]
jacobfx = @(x)[3*x(1).^2, 1; -1,  3*x(2).^2];  % jacobian matrix

xold = [1; 1];  % initial value

for iter = 1:40

    xnew = xold - jacobfx(xold)\fx(xold);              % \ is for matrix inverse

    % print out iteration no, error and function value at xnew point
    fprintf('Iteration No. : %d Error : %d f(x) : %d \n', iter, norm(xnew - xold), max(fx(xnew)))

    if norm(xnew - xold) < epsilon && max(abs(fx(xnew))) < delta   % vector function so use max to check if close to zero
        fprintf('Success! Iteration Converged. \n')
        break
    end

    xold = xnew;
end

% Root is the vector xnew.


%% 3D - algorithm is same as 2d.
% function
fx = @(x)[x(1).^2 + x(2).^2 + x(3).^2 - 3;
           x(1).^2 + x(2).^2 - x(3) - 1;
           x(1) + x(2) + x(3) - 3]; 
% jacobian
jacobfx = @(x)[2*x(1), 2*x(2), 2*x(3);
                2*x(1), 2*x(2), -1;
                1, 1, 1];  

% Initial Value
xold = [1; 0; 1];  % will work
%xold = [0; 0; 0];  % problematic, matrix singular warning.

for iter = 1:40

    xnew = xold - jacobfx(xold)\fx(xold);              % \ is for matrix inverse

    % print out iteration no, error and function value at xnew point
    fprintf('Iteration No. : %d Error : %d f(x) : %d \n', iter, norm(xnew - xold), max(fx(xnew)))

    if norm(xnew - xold) < epsilon && max(abs(fx(xnew))) < delta   % vector function so use max to check if close to zero
        fprintf('Success! Iteration Converged. \n')
        break
    end

    xold = xnew;
end