% load the image
load clown.mat
colormap(map)		
image(X)
% get the size of image
S = size(X);
m = S(1);
n = S(2);
%instructions
disp("Clink the image.")
disp('End the game by pushing "esc".')
% start to earse if player clink a point
while 1
    [y,x,BUTTON] = ginput(1);
    % make sure the earse range will not exceed the boundary
    if(x-10<=0)
        x1 = 1;
    else
        x1 = x-10;
    end
    if(x+10>m)
        x2 = m;
    else
        x2 = x+10;
    end
    
    if(y-10<=0)
        y1 = 1;
    else
        y1 = y-10;
    end
    if(y+10>n)
        y2 = n;
    else
        y2 = y+10;
    end
    % replace the color
    if(~isempty(x)&&~isempty(y))
        X(x1:x2, y1:y2) = randi(81,1);
        image(X)
    end
    % end the game
    if(BUTTON == 27)
        disp("End of Game!")
        break;
    end
end
