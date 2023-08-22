function power_method(A)
    % input: A a nxn matrix
    % ouput: biggest eigenvalue £f1 and corresponding eigenvector v1
    %
    % example:
    % > A = [2 1 5; 5 7 9; 4 6 1];
    % > power_method(A)
    %
    % initialize the power method
    n = length(A);
    u1 = rand(n,1);
    u = u1/norm(u1);
    v = A*u;
    l0 = v(1)/u(1);
    u = v;
    
    % initialize
    tol = 10^(-5);
    diff = 100;
    max_iter = 10^10;
    ii = 0;
    % start power method
    while diff > tol
        v = A*u;
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
    end
    % output
    disp(['£f1 = ', num2str(l0)])
    disp('v1 = ')
    disp(v)
    c = A*v;
    disp(c(1)/v(1))
end
