%% Value Function Iteration - TOBIN
clear; clc;

%% graph settings
set(0, 'DefaultLineLineWidth', 1, 'DefaultLineMarkerSize', 6, 'DefaultAxesFontSize', 12, ...
    'DefaultAxesTickLabelInterpreter', 'latex', 'DefaultFigurePaperOrientation', 'portrait',...
    'DefaultFigurePaperUnits', 'inches',...
    'DefaultFigurePaperSize', [6, 4.5],...
    'DefaultFigurePaperPosition', [0,0,6,4.5],...
    'DefaultLegendInterpreter', 'latex', ... 
    'DefaultLineLineWidth', 2, ...
    'DefaultTextInterpreter', 'latex', 'DefaultFigureRenderer', 'painters')

%% Parameters
alpha = 0.36;   beta = 0.96;    delta = 0.08;  gamma = 0.03;  
Nk = 301; Nz = 3; kmin = 0.1; kmax = 11;
kgrid = linspace(kmin, kmax, Nk)';
zgrid = [0.6; 1; 1.4]; P = [0.8, 0.1, 0.1; 0.1, 0.8, 0.1; 0.1, 0.1, 0.8];  % symmetric transition matrix
V           = zeros(Nz, Nk);        
Vnew        = zeros(Nz, Nk);        
policy_kp   = zeros(Nz, Nk);  
policy_kp_old = policy_kp;
tol         = 1e-4; max_iter = 200; diff=1; iter=1;

%% VFI Loop
iter=1; diff=1;
while diff > tol && iter < max_iter 
    for ik = 1:Nk
        for iz = 1:Nz
            Vbest = -1e9;
            for ikp = 1:Nk
                % Feasibility check / FC component - 0.00*kgrid(ik)*(kgrid(ikp) - kgrid(ik)>1e-3)
                consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp) - gamma/2*kgrid(ik)*((kgrid(ikp)-(1-delta)*kgrid(ik))/kgrid(ik))^2;
                if consumption > -1e10
                    profit = (consumption);  % utility from consumption
                    cont_value = beta * P(iz,:) * V(:,ikp);
                    Vtemp = profit + cont_value;
                    if Vtemp > Vbest
                        Vbest = Vtemp;
                        policy_kp(iz,ik)    = kgrid(ikp);
                        policy_div(iz,ik)  = consumption;
                    end
                end
            end
            Vnew(iz,ik) = Vbest;
        end
    end
    % measure convergence
    diff        = max(abs(V(:) - Vnew(:)));
    v_err(iter) = diff;    

    % print status in output
    if (mod(iter, 10) == 0 && iter>1) || iter<25
        fprintf('Iter %03d | dV=%.2e \n', iter, v_err(iter));
    end

    % iterate
    V = Vnew;
    iter = iter+1;
end

% Final diagnostics after loop
    fprintf('Convergence or Maximum iterations reached (%d) with dV=%.2e\n', max_iter, diff);

    policy_inv = policy_kp - (1-delta)*kgrid';

soln1.policy_kp  = policy_kp;
soln1.policy_inv = policy_inv
soln1.policy_div = policy_div;
soln1.V          = V;

%% Plot Results
close all
figure;
subplot(2,2,1); 
plot(kgrid, V'); 
title('$V(z,k)$'); 
xlabel('Capital Today, $k$'); 
ylabel('Value'); 
xlim([0 kmax]);
grid;

subplot(2,2,2); 
plot(kgrid, policy_div'); yline(0, '--k', 'LineWidth', 1)
title('$dividend(z,k)$'); 
xlabel('Capital Today, $k$'); 
ylabel('Profit/Loss today'); grid; xlim([0 kmax]);

subplot(2,2,3); 
plot(kgrid, policy_kp'); hold on;
plot(kgrid, kgrid, '--k', 'LineWidth', 1);  
title('$k''(z,k)$'); 
xlabel('Capital Today, $k$'); 
ylabel('Capital Policy, $k''$'); grid; xlim([0 kmax]);

subplot(2,2,4); 
plot(kgrid, policy_kp' - kgrid); 
title('$Inv(z,k) - \delta k$'); 
xlabel('Capital Today, $k$'); 
ylabel('Net Investment: $x- \delta k$'); 
yline(0,'--k', 'LineWidth', 1); grid; xlim([0 kmax]); ylim([-7 4])
legend('$z_L$=0.6', '$z_M$=1.0','$z_H$=1.2', 'Location','southwest');

x0=10;
y0=10;
width=1000;
height=1400;
tightfig
set(gcf,'position',[x0,y0,width,height])
saveas(gcf,'tobin_assignment1.pdf')

% %% VFI Loop: + Borrowing Constrained
% iter=1; diff=1;
% %for iter = 1:maxiter
% while diff > tol && iter < max_iter 
%     for ik = 1:Nk
%         for iz = 1:Nz
%             Vbest = -1e9;
%             for ikp = 1:Nk
%                 consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp) - gamma/2*kgrid(ik)*((kgrid(ikp)-(1-delta)*kgrid(ik))/kgrid(ik))^2;
%                 if consumption > 0
%                     profit = (consumption);  % utility from consumption
%                     cont_value = beta * P(iz,:) * V(:,ikp);
%                     Vtemp = profit + cont_value;
%                     if Vtemp > Vbest
%                         Vbest = Vtemp;
%                         policy_kp(iz,ik)    = kgrid(ikp);
%                         policy_div(iz,ik)  = consumption;
%                     end
%                 end
%             end
%             Vnew(iz,ik) = Vbest;
%         end
%     end
%     % measure convergence
%     diff        = max(abs(V(:) - Vnew(:)));
%     v_err(iter) = diff;    
% 
%     % print status in output
%     if (mod(iter, 10) == 0 && iter>1) || iter<25
%         fprintf('Iter %03d | dV=%.2e \n', iter, v_err(iter));
%     end
% 
%     % iterate
%     V = Vnew;
%     iter = iter+1;
% end
% 
% % Final diagnostics after loop
% if iter >= max_iter
%     fprintf('Maximum iterations reached (%d) with dV=%.2e\n', max_iter, diff);
% end
% 
% soln2.policy_kp     = policy_kp;
% soln2.policy_div   = policy_div;
% soln2.V             = V;
% 
% close all
% subplot(1,3,1)
% plot(kgrid, soln1.policy_kp(3,:)' - kgrid, 'LineWidth', 3); hold on;
% plot(kgrid, soln2.policy_kp(3,:)' - kgrid, 'LineWidth', 2, 'LineStyle','-'); 
% title('Investment');
% yline(0); grid
% 
% percent_diff = (soln2.policy_kp(3,:)' - kgrid)./(soln1.policy_kp(3,:)' - kgrid) -1;
% 
% subplot(1,3,2)
% plot(kgrid, percent_diff , 'LineWidth', 3); hold on;
% title('\% Difference from Baseline');
% yline(0); grid
% 
% subplot(1,3,3)
% plot(kgrid, soln1.policy_div(3,:)', 'LineWidth', 3); hold on;
% plot(kgrid, soln2.policy_div(3,:)', 'LineWidth', 2, 'LineStyle','-'); 
% yline(0); grid
% title('Profit/Loss');
% legend('Baseline', 'Borrowing Constrained')
% 
% x0=10;
% y0=10;
% width=1000;
% height=400;
% set(gcf,'position',[x0,y0,width,height])
% tightfig
% saveas(gcf,'tobin_assignment2.pdf')

%% VFI Loop 2: + higher adj costs
iter=1; diff=1; gamma = 0.12; beta = 0.96;
V           = zeros(Nz, Nk);        
Vnew        = zeros(Nz, Nk);        
policy_kp   = zeros(Nz, Nk); 

%for iter = 1:maxiter
while diff > tol && iter < max_iter 
    for ik = 1:Nk
        for iz = 1:Nz
            Vbest = -1e9;
            for ikp = 1:Nk
                consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp) - gamma/2*kgrid(ik)*((kgrid(ikp)-(1-delta)*kgrid(ik))/kgrid(ik))^2;
                if consumption > -1e9
                    profit = (consumption);  % utility from consumption
                    cont_value = beta * P(iz,:) * V(:,ikp);
                    Vtemp = profit + cont_value;
                    if Vtemp > Vbest
                        Vbest = Vtemp;
                        policy_kp(iz,ik)    = kgrid(ikp);
                        policy_div(iz,ik)   = consumption;
                    end
                end
            end
            Vnew(iz,ik) = Vbest;
        end
    end
    % measure convergence
    diff        = max(abs(V(:) - Vnew(:)));
    v_err(iter) = diff;    

    % print status in output
    if (mod(iter, 10) == 0 && iter>1) || iter<25
        fprintf('Iter %03d | dV=%.2e \n', iter, v_err(iter));
    end

    % iterate
    V = Vnew;
    iter = iter+1;
end

% Final diagnostics after loop
if iter >= max_iter
    fprintf('Maximum iterations reached (%d) with dV=%.2e\n', max_iter, diff);
end

policy_inv = policy_kp - (1-delta)*kgrid';

soln2.policy_kp     = policy_kp
soln2.policy_inv = policy_inv
soln2.policy_div    = policy_div
soln2.V = V

%% + higher discout factor

iter=1; diff=1; gamma = 0.03; beta = 0.97;
V           = zeros(Nz, Nk);        
Vnew        = zeros(Nz, Nk);        
policy_kp   = zeros(Nz, Nk); 

%for iter = 1:maxiter
while diff > tol && iter < max_iter 
    for ik = 1:Nk
        for iz = 1:Nz
            Vbest = -1e9;
            for ikp = 1:Nk
                consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp) - gamma/2*kgrid(ik)*((kgrid(ikp)-(1-delta)*kgrid(ik))/kgrid(ik))^2;
                if consumption > -1e9
                    profit = (consumption);  % utility from consumption
                    cont_value = beta * P(iz,:) * V(:,ikp);
                    Vtemp = profit + cont_value;
                    if Vtemp > Vbest
                        Vbest = Vtemp;
                        policy_kp(iz,ik)    = kgrid(ikp);
                        policy_div(iz,ik)  = consumption;
                    end
                end
            end
            Vnew(iz,ik) = Vbest;
        end
    end
    % measure convergence
    diff        = max(abs(V(:) - Vnew(:)));
    v_err(iter) = diff;    

    % print status in output
    if (mod(iter, 10) == 0 && iter>1) || iter<25
        fprintf('Iter %03d | dV=%.2e \n', iter, v_err(iter));
    end

    % iterate
    V = Vnew;
    iter = iter+1;
end

% Final diagnostics after loop
if iter >= max_iter
    fprintf('Maximum iterations reached (%d) with dV=%.2e\n', max_iter, diff);
end

policy_inv = policy_kp - (1-delta)*kgrid';

soln3.policy_kp     = policy_kp
soln3.policy_div    = policy_div
soln3.policy_inv    = policy_inv

soln3.V = V

%% Investment Policy

[kss_base, idx_base]    = min(abs(soln1.policy_kp(2,:) - kgrid'))
[kss_3, idx_3]          = min(abs(soln3.policy_kp(2,:) - kgrid'))


% Get default colors
colors = get(gca, 'ColorOrder');
blue = colors(1,:);
orange = colors(2,:);


close all
figure('Position', [100, 100, 1400, 500]);

% Investment policy comparison
subplot(1,2,1);
hold on;
yline(0, 'k--', 'LineWidth', 1);
plot(kgrid, soln1.policy_inv(2,:) - delta*kgrid', '-', 'LineWidth', 2); hold on
plot(kgrid, soln2.policy_inv(2,:) - delta*kgrid', '-', 'LineWidth', 2);
plot(kgrid(idx_base), 0, '-p', 'MarkerSize',7, 'MarkerFaceColor','black', 'MarkerEdgeColor','black', 'HandleVisibility','off');
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor',blue, 'MarkerEdgeColor',blue);
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor',orange, 'MarkerEdgeColor',orange);
hold off;
xlabel('Current Capital (k)');
ylabel('Investment I(z,k)');
title('$\beta = 0.96; \gamma = 0.03\rightarrow0.12$');
grid on;
ylim([-0.5, 3]);

subplot(1,2,2);
hold on;
plot(kgrid, soln1.policy_inv(2,:) - delta*kgrid', '-', 'LineWidth', 2); hold on
plot(kgrid, soln3.policy_inv(2,:) - delta*kgrid', '-', 'LineWidth', 2);
plot(kgrid(idx_base), 0, '-p', 'MarkerSize',7, 'MarkerFaceColor',blue, 'MarkerEdgeColor',blue, 'HandleVisibility','off');
plot(kgrid(idx_3),    0, '-p', 'MarkerSize',7, 'MarkerFaceColor',orange, 'MarkerEdgeColor',orange, 'HandleVisibility','off');
yline(0, 'k--', 'LineWidth', 1, 'HandleVisibility','off');
% Add invisible plot for legend with marker only
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor',blue, 'MarkerEdgeColor',blue);
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor',orange, 'MarkerEdgeColor',orange);
hold off;
xlabel('Current Capital (k)');
ylabel('Investment I(z,k)');
title('$\beta = 0.96\rightarrow0.98; \gamma = 0.03$');
lgd = legend('Baseline', 'Higher \beta', '$k^{*}$ (Baseline)', '$k^{*}$ (Higher \beta)', ...
       'Location', 'northeast', 'Interpreter', 'latex');
lgd.ItemTokenSize = [10, 2];
grid on;
ylim([-0.5, 3]);
x0=10;
y0=10;
width=800;
height=400;
set(gcf,'position',[x0,y0,width,height])
tightfig
saveas(gcf,'tobin_assignment3a.png')


%% Capital Policy Comparison 

close all
figure('Position', [100, 100, 1400, 500]);

% Medium productivity state for comparison
iz_compare = 2;  % z = 1.0

% --- PLOT 1 :: CAP POLICY--- 
subplot(1,2,1);
hold on;
plot(kgrid, soln1.policy_kp(2,:), '-', 'LineWidth', 2);
plot(kgrid, soln2.policy_kp(2,:), ':', 'LineWidth', 2);
plot(kgrid, kgrid, 'k--', 'LineWidth', 1);
plot(kgrid(idx_base), kgrid(idx_base), '-p', 'MarkerSize',7, 'MarkerFaceColor','black', 'MarkerEdgeColor','black', 'HandleVisibility','off');
% Add invisible plot for legend with marker only
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor','black', 'MarkerEdgeColor','black');
hold off;
xlabel('Current Capital (k)');
ylabel('Next Period Capital $k''(z,k)$');
title('Effect of Higher Adjustment Cost')
legend('Baseline', 'Higher \gamma', '45° line', '$k^{*}$', 'Location', 'southeast');
grid on; ylim([0 8]); xlim([0 11]);

% --- PLOT 2 :: INV POLICY --- 
subplot(1,2,2);
hold on;

plot(kgrid, soln1.policy_kp(2,:), '-', 'LineWidth', 2);
plot(kgrid, soln3.policy_kp(2,:), ':', 'LineWidth', 2);
plot(kgrid, kgrid, 'k--', 'LineWidth', 1);
plot(kgrid(idx_base), kgrid(idx_base), '-p', 'MarkerSize',7, 'MarkerFaceColor',blue, 'MarkerEdgeColor',blue, 'HandleVisibility','off');
plot(kgrid(idx_3), kgrid(idx_3), '-p', 'MarkerSize',7, 'MarkerFaceColor',orange, 'MarkerEdgeColor',orange, 'HandleVisibility','off');
% Add invisible plot for legend with marker only
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor',blue, 'MarkerEdgeColor',blue);
plot(NaN, NaN, 'p', 'MarkerSize',7, 'MarkerFaceColor',orange, 'MarkerEdgeColor',orange);
hold off;
xlabel('Current Capital (k)');
ylabel('Next Period Capital k''(z,k)');
title('Effect of higher Discount Factor')
legend('Baseline', 'Higher \beta', '45° line', '$k^{*}$ (Baseline)', '$k^{*}$ (Higher \beta)', 'Location', 'southeast');
grid on; ylim([0 8]); xlim([0 11]);
x0=10;
y0=10;
width=800;
x0=10;
y0=10;
width=800;
height=400;
set(gcf,'position',[x0,y0,width,height])
tightfig
saveas(gcf,'tobin_assignment3b.png')

%% SIMULATION OF stochastic steady state

[kss_1, idx_1]    = min(abs(soln1.policy_kp(1,:) - kgrid'))
[kss_2, idx_2]    = min(abs(soln1.policy_kp(2,:) - kgrid'))
[kss_3, idx_3]    = min(abs(soln1.policy_kp(3,:) - kgrid'))


% Simulation parameters
T = 300;  % Number of periods
rng(123);  % Set seed for reproducibility

% Initialize
z_idx = zeros(T,1);
k_sim = zeros(T,1);
I_sim = zeros(T,1);

% Starting values
z_idx(1) = 2;  % Start at middle productivity state (z_M)
k_sim(1) = kgrid(idx_2);  % Start at steady state capital for z_M

% Simulate shocks and decisions
for t = 1:T-1
    % Current state
    current_z = z_idx(t);
    current_k = k_sim(t);
    
    % Find closest grid point for current capital
    [~, k_idx] = min(abs(kgrid - current_k));
    
    % Get next period capital from policy function
    k_sim(t+1) = soln2.policy_kp(current_z, k_idx);
    
    % Calculate investment
    I_sim(t) = k_sim(t+1) - (1-delta)*k_sim(t);
    
    % Draw next period's productivity shock
    cum_prob = cumsum(P(current_z,:));
    rand_draw = rand();
    z_idx(t+1) = find(rand_draw <= cum_prob, 1, 'first');
end

% Calculate final period investment
I_sim(T) = NaN;  % or calculate if you have k_sim(T+1)

% Plot results
figure;
subplot(2,1,1);
plot(1:T, k_sim, '-', 'LineWidth', 1.5);
yline([kgrid(idx_1) kgrid(idx_2) kgrid(idx_3)])
xlabel('Time Period');
ylabel('Capital (k_t)');
title('Simulated Capital Path');

subplot(2,1,2);
plot(1:T, I_sim./k_sim, '-', 'LineWidth', 1.5);
xlabel('Time Period');
ylabel('Investment (I_t)');
title('Simulated Investment Path');
grid on;
yline(0, 'k--', 'LineWidth', 1);

%%

% Simulation parameters
T = 100;  % Number of periods
rng(123);  % Set seed for reproducibility

% Get colors
colors = get(gca, 'ColorOrder');
blue = colors(1,:);
orange = colors(2,:);

% Initialize for both models
z_idx = zeros(T,1);
k_sim1 = zeros(T,1);  % Baseline
I_sim1 = zeros(T,1);
k_sim2 = zeros(T,1);  % High adjustment cost
I_sim2 = zeros(T,1);

% Starting values (same for both)
z_idx(1) = 2;  % Start at middle productivity state (z_M)
k_sim1(1) = kgrid(idx_2);  % Start at steady state capital for z_M
k_sim2(1) = kgrid(idx_2);

% Simulate productivity shocks (same for both models)
for t = 1:T-1
    current_z = z_idx(t);
    
    % Draw next period's productivity shock
    cum_prob = cumsum(P(current_z,:));
    rand_draw = rand();
    z_idx(t+1) = find(rand_draw <= cum_prob, 1, 'first');
end

% Simulate baseline model
for t = 1:T-1
    current_z = z_idx(t);
    current_k = k_sim1(t);
    
    % Find closest grid point
    [~, k_idx] = min(abs(kgrid - current_k));
    
    % Get next period capital from policy function
    k_sim1(t+1) = soln1.policy_kp(current_z, k_idx);
    
    % Calculate investment
    I_sim1(t) = k_sim1(t+1) - (1-delta)*k_sim1(t);
end

% Simulate high adjustment cost model
for t = 1:T-1
    current_z = z_idx(t);
    current_k = k_sim2(t);
    
    % Find closest grid point
    [~, k_idx] = min(abs(kgrid - current_k));
    
    % Get next period capital from policy function
    k_sim2(t+1) = soln2.policy_kp(current_z, k_idx);
    
    % Calculate investment
    I_sim2(t) = k_sim2(t+1) - (1-delta)*k_sim2(t);
end

% Calculate final period investment
I_sim1(T) = NaN;
I_sim2(T) = NaN;

% Plot results
figure;
subplot(2,1,1);
hold on;
plot(1:T, k_sim1, '-o', 'Color', blue, 'LineWidth', 1.5);
plot(1:T, k_sim2, '-o', 'Color', orange, 'LineWidth', 1.5);
hold off;
xlabel('Time Period');
ylabel('Capital $k_t$');
title('Simulated Capital Path');
legend('Baseline', 'Higher \gamma', 'Location', 'best');
grid on;

subplot(2,1,2);
hold on;
plot(1:T, I_sim1./k_sim1, '-o', 'Color', blue, 'LineWidth', 1.5);
plot(1:T, I_sim2./k_sim2, '-o', 'Color', orange, 'LineWidth', 1.5);
yline(0, 'k--', 'LineWidth', 1);
hold off;
xlabel('Time Period');
ylabel('Investment ($I/K)_t$');
title('Simulated Investment Path');
legend('Baseline', 'Higher \gamma', 'Location', 'best');
grid on;