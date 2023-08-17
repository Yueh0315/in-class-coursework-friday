% generate x_k, y_k, f_k
x = linspace(0,1,100);
y = linspace(0,1,100);
for jj = 1:100
    for kk = 1:100
        % z is defined at bottom
        f(jj,kk) = z(x(jj),y(kk));
    end
end    
delta_x = (x(2)-x(1))^2;
delta_y = (y(2)-y(1))^2;
% initialize
difference = 100;
tol = 10^(-5);
max_iter = 10^5;
ii = 0;
u = zeros(100,100);
r = zeros(100,100);

% Start finding the sol with Jacobi method
while difference > tol
    for k = 2:99
        for l = 2:99
            fix_y = (u(k-1,l)-2*u(k,l)+u(k+1,l))/delta_x;
            fix_x = (u(k,l-1)-2*u(k,l)+u(k,l+1))/delta_y;
            r(k,l) = f(k,l)-(fix_y + fix_x);
        end   
    end
    difference = norm(r);
    u = u - r/2/(1/delta_x + 1/delta_y);
    ii = ii + 1;
    if (ii > max_iter)  % jump if there are too many iterations
        disp('****WARNING****');
        disp(['Stop!! Too many iterations. ', 'Have not converged yet'])
        break;
    end
end
% output the result
mesh(x,y,u)
function f = z(x,y)
    f = 2*pi^2*sin(pi*x)*sin(pi*y); 
end