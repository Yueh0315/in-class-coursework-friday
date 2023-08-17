[x, y, button] = ginput(6);    % input new interpolation point
% add points
add_X = [];
add_Y = [];
for k = 1:5
    add_x = linspace(x(k),x(k+1),1000);
    add_y = linspace(y(k),y(k+1),1000);
    add_X = [add_X add_x(1:999)];
    add_Y = [add_Y add_y(1:999)];
end 
add_X = [add_X x(6)];
add_Y = [add_Y y(6)];
% fit the line
t = 0:length(add_X)-1;
px = polyfit(t, add_X, 5);
py = polyfit(t, add_Y, 5);
tt = linspace(t(1),t(end),100000);
fx = polyval(px, tt);
fy = polyval(py, tt);
% print
plot(x', y', '-o', fx, fy)

