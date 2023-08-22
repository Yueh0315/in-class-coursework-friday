% generate x_k, f_k
x = linspace(0,1,100);
f = pi^2.*sin(pi.*x);
delta = x(2)- x(1);
% initialize
difference = 100;
tol = 10^(-5);
max_iter = 10^5;
ii = 0;
u = zeros(100,1);
r = zeros(100,1);

% Start finding the sol with Jacobi method
while difference > tol
    for k = 2:99
        r(k) = (delta)^2*f(k) - (u(k-1) - 2*u(k) + u(k+1));
    end
    difference = norm(r);
    u = u - r/2;
    ii = ii + 1;
    if (ii > max_iter)  % jump if there are too many iterations
        disp('****WARNING****');
        disp(['Stop!! Too many iterations. ', 'Have not converged yet'])
        break;
    end
end
% output the result
plot(x,u)
