X = 1:10; % first row
Y = 2:2:20; % second row
Z = 100:-3:73; % third row
A = [X;Y;Z]; % merge it
[U,S,V] = svd(A); % A = U*S*V'
norm(A - U*S*V') % compute the norm