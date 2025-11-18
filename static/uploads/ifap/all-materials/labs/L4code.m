%% Value Function Iteration - CAKE EATING

clear; clc;
set(0, 'DefaultLineLineWidth', 1, 'DefaultLineMarkerSize', 6, 'DefaultAxesFontSize', 12, ...
    'DefaultAxesTickLabelInterpreter', 'latex', 'DefaultFigurePaperOrientation', 'portrait',...
    'DefaultFigurePaperUnits', 'inches',...
    'DefaultFigurePaperSize', [6, 4.5],...
    'DefaultFigurePaperPosition', [0,0,6,4.5],...
    'DefaultLegendInterpreter', 'latex', ...
    'DefaultLineLineWidth', 2, ...
    'DefaultTextInterpreter', 'latex', 'DefaultFigureRenderer', 'painters')

%% Parameters
maxiter = 100;
beta = 0.95;
Nk=1000;

% nonlinear grid puts a lot of points near zero, where V is very curved
kgrid = exp(linspace(log(0.0001), log(1), Nk));

V = zeros(Nk, maxiter);      % value function at each iteration
gk = zeros(Nk, maxiter);     % optimal k' at each iteration
gc = zeros(Nk, maxiter);     % optimal consumption at each iteration

for iter = 1:maxiter % iteration of the Bellman equation
    iter % displays iteration number
    aux = zeros(Nk, Nk) + NaN; % matrix of all possible values
    
    for ik = 1:Nk % loop over all size of cake at beginning of period
        for ikp = 1:ik-1 % loop over all size of cake at end of period
            aux(ik, ikp) = (kgrid(ik) - kgrid(ikp)).^0.5 + beta*V(ikp, iter);
        end
    end
    
    [V(:, iter+1), Ind] = max(aux', [], 1); % get value and index
    
    % Store policies for this iteration
    gk(:, iter) = kgrid(Ind)';              % optimal k'
    gc(:, iter) = kgrid' - gk(:, iter);     % optimal consumption
end

%% Final iteration policies (after convergence)
[Val, Ind] = max(aux');
optK = kgrid(Ind);
optC = kgrid' - optK';

close all 

% Value Function
figure(1)
plot(kgrid,V, 'r', 'LineWidth', .1);
xlabel('Size of Cake, W');
ylabel('Value Function');
title('Value Function at $n$ iterations, $V_n(W)$');


% Consumption Policy
figure(2)
plot(kgrid,[optC kgrid'],'LineWidth',2) % plot graph
xlabel('Size of Cake');
ylabel('Optimal Consumption: $C(W)$');
text(0.4,0.65,'45 deg. line','FontSize',18) % add text to the graph
text(0.4,0.13,'Optimal Consumption','FontSize',18)

%% Theoretical VF

close all

% for log
A = (log(1-beta) + beta/(1-beta)*log(beta))/(1-beta);
B = (1/(1-beta));

% for sqrt find A,B
A=0;
B=1/sqrt(1-beta^2);


subplot(2,2,1)
plot(kgrid, V(:,2),'LineWidth', 3); hold on;
plot(kgrid, A+B*sqrt(kgrid), ':k'); grid; title('$T=1$'); xlim([-0.01, 1]);
text(.2, 2.5,'Fixed Point: $V^*$', FontSize=14);
text(.4, 1,'$V_{n=1}=V^{T=1}$', FontSize=14)

subplot(2,2,2)
plot(kgrid, V(:,10),'LineWidth', 3); hold on;
plot(kgrid, A+B*sqrt(kgrid), ':k'); grid; title('$T=10$'); xlim([-0.01, 1])

subplot(2,2,3)
plot(kgrid, V(:,20),'LineWidth', 3); hold on;
plot(kgrid, A+B*sqrt(kgrid), ':k'); grid; title('$T=20$'); xlim([-0.01, 1])

subplot(2,2,4)
plot(kgrid, V(:,50),'LineWidth', 3); hold on;
plot(kgrid, A+B*sqrt(kgrid), ':k'); grid; title('$T=50$'); xlim([-0.01, 1])

%% VFI Convergence GIF

close all
filename = 'vfi_convergence.gif';
f = figure('Position', [100 100 800 600]);

% Initial frame
plot(kgrid, A+B*sqrt(kgrid), '--k', 'LineWidth', 2);
hold on;
plot(kgrid, V(:,2), 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
text(0,3.00,'Utility: $u(C) = \sqrt{C}$','FontSize', 16)
text(0,2.75,'Fixed Point: $V^*(W) = A+B\sqrt{W}$','FontSize', 16)
title('VFI Iteration: $n=1$', 'Interpreter', 'latex', 'FontSize', 16);
xlabel('Wealth (W)', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('Value Function', 'Interpreter', 'latex', 'FontSize', 14);
xlim([-0.01, 1]);
ylim([min(V(:)), max(V(:))]); % Fix y-axis
legend({'$V^*$ (Fixed Point)', '$V(iter=n)$'}, 'Interpreter', 'latex', 'Location', 'southeast');


% Export first frame with delay
exportgraphics(f, filename, 'Append', false);


% Loop through iterations
for n = 3:1:50  % Step by 2 to speed up
    cla; % Clear current axes
    plot(kgrid, A+B*sqrt(kgrid), '--k', 'LineWidth', 2);
    plot(kgrid, V(:,n), 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
    plot(kgrid, V(:,1:n-1), 'LineWidth', 0.5, 'Color', [0 0.4470 0.7410 0.25]);
    hold on;
    text(0,3.00,'Utility: $u(C) = \sqrt{C}$','FontSize', 16)
    text(0,2.75,'Fixed Point: $V^*(W) = A+B\sqrt{W}$','FontSize', 16)
    title(sprintf('VFI Iteration: $n=%d$', n-1), 'Interpreter', 'latex', 'FontSize', 16);
    xlabel('Wealth (W)', 'Interpreter', 'latex', 'FontSize', 14);
    ylabel('Value Function', 'Interpreter', 'latex', 'FontSize', 14);
    xlim([-0.01, 1]);
    ylim([min(V(:)), max(V(:))]);
    legend({'$V^*$ (Fixed Point)', '$V(iter=n)$'}, 'Interpreter', 'latex', 'Location', 'southeast');

    exportgraphics(f, filename, 'Append', true);
end
 

%% Policy Function Convergence GIF

close all;
filename = 'cpol_convergence.gif';
f = figure('Position', [100 100 800 600]);

% Initial frame
plot(kgrid, (1-beta^2)*kgrid, '--k', 'LineWidth', 2);
hold on;
plot(kgrid, gc(:,2), 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
title('VFI Iteration: $n=1$', 'Interpreter', 'latex', 'FontSize', 16);    
text(0.45,0.025,'Fixed Point: $C^*(W) = (1-\beta^2)W$','FontSize', 16)
xlabel('Wealth (W)', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('Consumption', 'Interpreter', 'latex', 'FontSize', 14);
xlim([0.01, 1]);
ylim([min(gc(:)), 0.5]); % Fix y-axis
legend({'$C^*$ (Fixed Point)', '$C_n$', }, 'Interpreter', 'latex', 'Location', 'northwest');

% Export first frame with delay
exportgraphics(f, filename, 'Append', false);

% Loop through iterations
for n = 3:1:50  % Step by 2 to speed up
    cla; % Clear current axes
plot(kgrid, (1-beta^2)*kgrid, '--k', 'LineWidth', 2);
    plot(kgrid, gc(:,n), 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
    plot(kgrid, gc(:,1:n-1), 'LineWidth', 0.5, 'Color', [0 0.4470 0.7410 0.25]);
    hold on;
    title(sprintf('VFI Iteration: $n=%d$', n-1), 'Interpreter', 'latex', 'FontSize', 16);
    text(0.45,0.025,'Fixed Point: $C^*(W) = (1-\beta^2)W$','FontSize', 16)
    xlabel('Wealth (W)', 'Interpreter', 'latex', 'FontSize', 14);
    ylabel('Consumption', 'Interpreter', 'latex', 'FontSize', 14);
    xlim([0.01, 1]);
    ylim([min(gc(:)), 0.5]);
legend({'$C^*$ (Fixed Point)', '$C_n$', }, 'Interpreter', 'latex', 'Location', 'northwest');

    exportgraphics(f, filename, 'Append', true);
end

%% with some labels (does not save)

close all
figure
plot(kgrid, A+B*sqrt(kgrid), '--k', 'LineWidth', 2); hold on;
plot(kgrid, V(:,1)); 
plot(kgrid, V(:,2)); 
legend('$V^*: theoretical fixed point$, $V_0$, Initial Guess', '$V_1$, First Iteration', 'FontSize', 16, 'Location','northwest');
ylim([-0.01 max(V(:))])


close all
figure
idx = [1,2,11,21, 51]
plot(kgrid, A+B*sqrt(kgrid), '--k', 'LineWidth', 2); hold on;
plot(kgrid, V(:,1));
plot(kgrid, V(:,2));
plot(kgrid, V(:,3));
plot(kgrid, V(:,11));
plot(kgrid, V(:,21));
plot(kgrid, V(:,51));
legend('$V^{*}$: fixed point', '$V_{n=0}$: initial guess', '$V_1$: first u-max, no vcont', '$V_2$', '$V_{10}$', '$V_{20}$', '$V_{50}$', 'FontSize', 16, 'Location','northwest');
ylim([-0.01 max(V(:))])
text(0.8,0.2,'$V_0 = 0$', 'FontSize', 16);
text(0.6,0.5,'$V_1 = \max_c\{u(c)+\beta \times 0\} = u(c^*)$', 'FontSize', 16)
text(0.6,1.4,'$V_2 = \max_c\{u(c)+\beta u(c'')\}$', 'FontSize', 16)
