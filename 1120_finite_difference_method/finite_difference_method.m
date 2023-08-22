% use finite difference method to solve two-point boundary value problem:
% y''+ y - y^2 = 0, y(0) = 1, y(8) = 0
% initrialize
N = 100;
x0 = ones(N,1);         % guess initial solves
Y = fsolve(@myfun, x0)
% check & plot answer
t = linspace(0,8,N+2);
Y = [1 Y' 0];
plot(t,Y)
function F = myfun(Y)
    N = 100;
    x = linspace(0,8,N+2);
    delta_x = (x(2)-x(1))^2;
    F(1) = (1-2*Y(1)+Y(2))/delta_x + Y(1)-Y(1)^2;  % y_0 = 1;
    F(N) = (Y(N-1)-2*Y(N))/delta_x + Y(N)-Y(N)^2;  % y_N+1 = 0
    for k = 2:N-1
        F(k) = (Y(k-1)-2*Y(k)+Y(k+1))/delta_x + Y(k)-Y(k)^2;
    end
end
