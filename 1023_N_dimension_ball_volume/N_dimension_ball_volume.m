% calculate the N-dimension ball's volume with Monte-carlo method
function N_dimension_ball_volume(N)
    % input: N a natural number
    %
    % example:
    % > N_dimension_ball_volume(6)
    %
    n = 10^7;               % number of samples
    M = 0;                  % counting initialize
    % Monte-carlo method
    for ii=1:n
        x = rand(N,1)*2-1;           % [-1,1]  
        if (norm(x)^2) <= 1          % count the number of points in ball
            M = M+1;
        end
    end
    disp(['volume of ',num2str(N),' dimensional ball = ', num2str((2^N)*M/n)])
end
