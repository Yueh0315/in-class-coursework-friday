% Find N where the first N terms sum of 1/n is greater than x.
function Find_N(x) 
    % input: x, a number
    %
    % example
    % > Find_N(15)
    %
    ite_max = 5e+10;    % max search times
    sum_all = 0;        % initial value for sum
    N = 1;              % Start from the first term
    ii = 0;             % initial value of search times 
    break_flg = 0;      % flag for exceeding the maximum search time or not 
    % start finding
    while sum_all <= x  % keep finding if the sum doesn't exceed the target 
        sum_all = sum_all + 1/N;
        ii = ii + 1;
        N = N + 1;
        if (ii > ite_max) % break if exceed the maximum search times.
            break_flg = 1;
            break
        end
    end
    if (break_flg == 0) % print the result if never exceed the maximum search times
        disp(N);
    else                % print the warning if exceed the maximum search times
        disp('Exceeds the limited searching times');
    end
end