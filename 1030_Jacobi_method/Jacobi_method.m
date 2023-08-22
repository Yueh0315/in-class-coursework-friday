% input matrix A and vector b, solve the problem A*x = b with Jacobi method
%
% Step 1: Let A = L+U+D
% Step 2: Let D*(x_n+1) = -(L+U)*x_n + b be a sequence, see where will it
%         converge.
% Step 3: Print the result
function Jacobi_method(A, b)
    % input: A = nxn matrix, b = nx1 vector
    % output: nx1 vextor x, where A*x = b
    % 
    % example:
    % > A = [5 2 1 1;
    %      2 6 2 1;
    %      1 2 7 1;
    %      1 1 2 8];
    % > b = [29;31;26;19];
    % > Jacobi_method(A, b)
    
    % A = L + U + D 
    D = diag(A);
    R = A - diag(D);    % R = L+U
    n = length(A);
    % initialize
    difference = 100;
    tol = 10^(-5);
    x0 = zeros(n,1);
    max_iter = 10^10;
    ii = 0;
    % Start finding the sol with Jacobi method
    while difference > tol
        x1 = ((-R)*x0 + b)./D;
        difference = norm(x1 - x0);
        x0 = x1;
        ii = ii + 1;
        if (ii > max_iter)  % jump if there are too many iterations
            disp('****WARNING****');
            disp(['Stop!! Too many iterations. ', 'Have not converged yet'])
            break;
        end
    end
    % output the result
    disp('x = ')
    disp(x0)
    disp('A*x = ')
    disp(A*x0)
end
