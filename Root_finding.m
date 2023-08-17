% Compute the roots of function 'sinx/x - c'
function Root_finding(c)
    % input c: a real number
    %
    % example:
    % > Root_finding(0.1)
    %
    x = linspace(-abs(1/c), abs(1/c), 10^4);    % ����x�b��10^4���I
    n = 0;                                      % ���ڪ��ƶq(��l��)
    find_roots = [];                            % �کҦb�϶��������I(��l����)
    % �}�l��ڪ��϶�
    for ii = 1:(10^4-1)
       % ��[x0,x1]���i���i�঳��
       x0 = x(ii);                        
       x1 = x(ii+1);
       if (f(x0)*f(x1) < 0)               % �ɮڪk�Gf(x0)*f(x1) ��� [x0,x1] ������
           n = n + 1;                     % ��s�ڪ��ƶq
           find_roots(n) = x0;            % �x�s���ڰ϶��������I
       end    
    end
    disp(['# of roots = ', num2str(n)]);  % ��ܧ��X�Ӯ�

    tol = 10^(-10);                       % �]�w�e�\��
    roots = [];                           % �s�U�ڪ���(��l����)
    % �}�l�M��n�Ӯڪ������
    % �ϥΤ��y�k: F(x) = x - f(x)/f'(x)
    % �p�G x �� F(x) ���T�w�I �h f(x) ~ 0, ����x��f(x) ����
    for k = 1:n
        a0 = find_roots(k);                % �_�l�I������쪺�϶������I
        jj = 0;                            % ��l�M�䦸��
        difference = 100;                  % ��l�e��V���t
        % ���N���
        while difference > tol
            % F(x) = x - f(x)/f'(x)
            a1 = a0 - f(a0)/f1(a0);          % a1 = �U�@��(a_{n+1})
            difference = abs(a1-a0);         % �p��e�ᶵ���t
            a0 = a1;                         % �]�w�U�Ӱj�骺��l�Ȭ� a_1
            jj = jj+1;
            if(jj>10)                        % �]�w���榸��
                disp('****WARNING****')      % ��ܥ�ĵ�θ��榸��
                disp(['Stop!! Too many iterations. ', 'Have not found limit yet.'])
                break
            end
        end
        roots(k) = a1;                   % �x�s��쪺��
    end
    % ��ܧ�쪺��
    disp('roots = ');
    disp(roots');
    
    function y = f(x)                    % �w�q��� f(x)
        y = sin(x)/x - c;
    end
    function y1 = f1(x)                  % �w�q��� f'(x)
        y1 = cos(x)/x - sin(x)/x^2;
    end    
end