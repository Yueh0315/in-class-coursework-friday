% Compute the roots of function 'sinx/x - c'
function Root_finding(c)
    % input c: a real number
    %
    % example:
    % > Root_finding(0.1)
    %
    x = linspace(-abs(1/c), abs(1/c), 10^4);    % 切割x軸為10^4個點
    n = 0;                                      % 找到根的數量(初始值)
    find_roots = [];                            % 根所在區間的左端點(初始為空)
    % 開始找根的區間
    for ii = 1:(10^4-1)
       % 試[x0,x1]中可不可能有根
       x0 = x(ii);                        
       x1 = x(ii+1);
       if (f(x0)*f(x1) < 0)               % 勘根法：f(x0)*f(x1) 表示 [x0,x1] 中有根
           n = n + 1;                     % 更新根的數量
           find_roots(n) = x0;            % 儲存找到根區間的左端點
       end    
    end
    disp(['# of roots = ', num2str(n)]);  % 顯示找到幾個根

    tol = 10^(-10);                       % 設定容許值
    roots = [];                           % 存下根的值(初始為空)
    % 開始尋找n個根的近似值
    % 使用牛頓法: F(x) = x - f(x)/f'(x)
    % 如果 x 為 F(x) 的固定點 則 f(x) ~ 0, 此時x為f(x) 的根
    for k = 1:n
        a0 = find_roots(k);                % 起始點為剛剛找到的區間左端點
        jj = 0;                            % 初始尋找次數
        difference = 100;                  % 初始前後向的差
        % 迭代找根
        while difference > tol
            % F(x) = x - f(x)/f'(x)
            a1 = a0 - f(a0)/f1(a0);          % a1 = 下一項(a_{n+1})
            difference = abs(a1-a0);         % 計算前後項的差
            a0 = a1;                         % 設定下個迴圈的初始值為 a_1
            jj = jj+1;
            if(jj>10)                        % 設定跳脫次數
                disp('****WARNING****')      % 顯示示警及跳脫次數
                disp(['Stop!! Too many iterations. ', 'Have not found limit yet.'])
                break
            end
        end
        roots(k) = a1;                   % 儲存找到的根
    end
    % 顯示找到的根
    disp('roots = ');
    disp(roots');
    
    function y = f(x)                    % 定義函數 f(x)
        y = sin(x)/x - c;
    end
    function y1 = f1(x)                  % 定義函數 f'(x)
        y1 = cos(x)/x - sin(x)/x^2;
    end    
end
