%% Value Function Iteration - CRUSOE

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
alpha = 0.33;   beta = 0.96;    delta = 0.08;    
Nk = 301; Nz = 3; kmin = 0.1; kmax = 11;
kgrid = linspace(kmin, kmax, Nk)';
zgrid = [0.6; 1; 1.4]; P = [0.8, 0.1, 0.1; 0.1, 0.8, 0.1; 0.1, 0.1, 0.8];  % symmetric transition matrix

V           = zeros(Nz, Nk);           % value function
Vnew        = zeros(Nz, Nk);        % updated value function
policy_kp   = zeros(Nz, Nk);    % policy function
tol         = 1e-4; maxiter = 500;

%% VFI Loop
for iter = 1:maxiter
    for ik = 1:Nk
        for iz = 1:Nz 
            Vbest = -1e9;
            for ikp = 1:Nk
                % Feasibility check
                consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp);
                if consumption > 0
                    profit = log(consumption);  % utility from consumption
                    cont_value = beta * P(iz,:) * V(:,ikp);
                    Vtemp = profit + cont_value;
                    if Vtemp > Vbest
                        Vbest = Vtemp;
                        policy_kp(iz,ik)    = kgrid(ikp);
                        policy_cons(iz,ik)  = consumption;
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
    
    % Check convergence
    if max(abs(V(:) - Vnew(:))) < tol
        fprintf('Converged in %d iterations\n', iter);
        break;
    end
    V = Vnew;
end

%% Results
close all
figure;
subplot(2,2,1); plot(kgrid, V'); title('$Value(z,k)$'); xlabel('Capital'); ylabel('Value'); grid; xlim([0 11]);

subplot(2,2,2); plot(kgrid, policy_cons'); title('$Consumption(z,k)$'); xlabel('Capital'); ylabel('Consumption'); grid; xlim([0 11]);

subplot(2,2,3); plot(kgrid, policy_kp'); hold on; plot(kgrid, kgrid, '--k', LineWidth=0.5); title('Capital policy, $k''(z,k)$'); xlabel('Capital Today'); ylabel('Capital Tomorrow'); grid; xlim([0 11]);

subplot(2,2,4); plot(kgrid, policy_kp' - kgrid); title('$Net\ Investment$'); xlabel('Capital Today'); ylabel('Investment'); yline(0);  grid; xlim([0 11]);

% subplot(3,2,5); plot(kgrid, (policy_kp' - kgrid)./kgrid); title('$(I/K)(z,k)$'); xlabel('Capital Today'); ylabel('Investment'); yline(0);  grid; ylim([-.1 1]); xlim([0 11]);
% % Investment rate (I/K)
% subplot(3,2,5); 
% plot(kgrid, (policy_kp' - kgrid)./kgrid); 
% title('$(I/K)(z,k)$'); xlabel('Capital Today'); ylabel('Investment Rate'); 
% yline(0); grid; ylim([-.1 1]);
% 
% % Production for each z
% subplot(3,2,6); 
% production = zeros(Nk, Nz);
% for iz = 1:Nz
%     production(:,iz) = zgrid(iz) * kgrid.^alpha;
% end
% plot(kgrid, production); 
% title('$Production f(z,k)$'); xlabel('Capital'); ylabel('Output'); grid;
% legend('$z=0.6$', '$z=1.0$', '$z=1.4$', 'Location', 'best');

% % Add savings rate plot if desired
% savings_rate = zeros(Nk, Nz);
% for iz = 1:Nz
%     output = zgrid(iz) * kgrid.^alpha + (1-delta)*kgrid;
%     savings_rate(:,iz) = 1 - policy_cons(iz,:)' ./ output;
% end
% subplot(3,3,7); 
% plot(kgrid, savings_rate);
% title('Savings Rate $s(z,k)$'); xlabel('Capital'); ylabel('Savings Rate');
% grid; legend('$z=0.6$', '$z=1.0$', '$z=1.4$', 'Location', 'best');
x0=10;
y0=10;
width  = 900;
height = 900;
set(gcf,'position',[x0,y0,width,height])
tightfig
saveas(gcf,'crusoe_assignment.pdf')

results1.x      = policy_kp' - (1-delta)*kgrid;
results1.cons   = policy_cons;


%% VFI Loop 2: lower beta 
iter =1; 
beta = 0.90;

for iter = 1:maxiter
    for ik = 1:Nk
        for iz = 1:Nz
            Vbest = -1e9;
            for ikp = 1:Nk
                % Feasibility check
                consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp);
                if consumption > 0
                    profit = log(consumption);  % utility from consumption
                    cont_value = beta * P(iz,:) * V(:,ikp);
                    Vtemp = profit + cont_value;
                    if Vtemp > Vbest
                        Vbest = Vtemp;
                        policy_kp(iz,ik)    = kgrid(ikp);
                        policy_cons(iz,ik)  = consumption;
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
    
    % Check convergence
    if max(abs(V(:) - Vnew(:))) < tol
        fprintf('Converged in %d iterations\n', iter);
        break;
    end
    V = Vnew;
end

results2.x      = policy_kp' - (1-delta)*kgrid;
results2.cons   = policy_cons;

%%

close all
figure;
subplot(1,2,1); 
plot(kgrid, results1.x(:,1), 'LineStyle','-'); hold on; yline(0)
plot(kgrid, results2.x(:,1), 'LineStyle','-'); grid
title('Investment')

subplot(1,2,2); 
plot(kgrid, results1.cons(1,:), 'LineStyle','-'); hold on; grid
plot(kgrid, results2.cons(1,:), 'LineStyle','-'); 
title('Consumption')

%% VFI Loop 2: higher beta 
iter =1; 
beta = 0.96; delta = 0.2;

for iter = 1:maxiter
    for ik = 1:Nk
        for iz = 1:Nz
            Vbest = -1e9;
            for ikp = 1:Nk
                % Feasibility check
                consumption = zgrid(iz) * kgrid(ik)^alpha + (1-delta)*kgrid(ik) - kgrid(ikp);
                if consumption > 0
                    profit = log(consumption);  % utility from consumption
                    cont_value = beta * P(iz,:) * V(:,ikp);
                    Vtemp = profit + cont_value;
                    if Vtemp > Vbest
                        Vbest = Vtemp;
                        policy_kp(iz,ik)    = kgrid(ikp);
                        policy_cons(iz,ik)  = consumption;
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
    
    % Check convergence
    if max(abs(V(:) - Vnew(:))) < tol
        fprintf('Converged in %d iterations\n', iter);
        break;
    end
    V = Vnew;
end

results3.x      = policy_kp' - (1-delta)*kgrid;
results3.cons   = policy_cons;

%%

close all
figure;
subplot(1,2,1); 
plot(kgrid, results1.x(:,1), 'LineStyle','-'); hold on; yline(0)
plot(kgrid, results2.x(:,1), 'LineStyle','-'); 
plot(kgrid, results3.x(:,1), 'LineStyle','-'); 
grid;
title('Investment')

subplot(1,2,2); 
plot(kgrid, results1.cons(1,:), 'LineStyle','-'); hold on; grid
plot(kgrid, results2.cons(1,:), 'LineStyle','-'); 
plot(kgrid, results3.cons(1,:), 'LineStyle','-'); 

tightfig
title('Consumption');
legend('Baseline', 'Low Beta' ,'High Delta', 'Location','southeast')
saveas(gcf,'crusoe_assignment2.pdf')

