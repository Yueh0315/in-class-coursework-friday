% build the matrix S
n = 10^3;
d = ones(n,1);
S = spdiags([d -2*d d],[-1,0,1],n,n);

% Find the biggest eigenvalue of S
% do the first time power method (intialize)
u1 = rand(n,1);
u = u1/norm(u1);
v = S*u;
l0 = v(1)/u(1);
u = v;
u = u/norm(u);
    
% initialize
tol = 10^(-6);
diff = 100;
max_iter = 10^10;
ii = 0;
% start power method
while diff > tol
    v = S*u;
    l1 = v(1)/u(1);
    diff = abs(l1-l0);
    ii = ii + 1;
    if (ii > max_iter)  % jump if there are too many iterations
        disp('***WARNING***');
        disp(['Stop!! Too many iterations. ', 'Have not converged yet'])
        break;
    end
    l0 = l1;
    u = v;
    u = u/norm(u);
end
disp(['the biggest eigenvalue = ', num2str(l0)])

% Find the smallest eigenvalue of S
% do the first time power method (intialize)
u1 = rand(n,1);
u = u1/norm(u1);
v = S\u;
l0 = v(1)/u(1);
u = v;
u = u/norm(u);
% initialize
diff = 100;
ii = 0;
% start power method
while diff > tol
    v = S\u;
    l1 = v(1)/u(1);
    diff = abs(l1-l0);
    ii = ii + 1;
    if (ii > max_iter)  % jump if there are too many iterations
        disp('***WARNING***');
        disp(['Stop!! Too many iterations. ', 'Have not converged yet'])
        break;
    end
    l0 = l1;
    u = v;
    u = u/norm(u);
end
% output
disp(['the smallest eigenvalue = ', num2str(1/l0)])
