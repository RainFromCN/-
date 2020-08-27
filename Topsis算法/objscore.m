function y = objscore(A, weight)

%�������۶���ĵ÷֣�����һ����׼�����󣬿��Դ�Ȩ��
%
% y = score(A, weight)
%
% A         ��׼����ľ���m*n��
% weight    ����ѡ��Ȩ�����������о��ɣ����η���������

[m, n] = size(A);

if nargin == 2 && size(weight, 2) == 1
    weight = weight';
end

MAX = max(A);
MIN = min(A);

Dmax = zeros(m, 1);
Dmin = zeros(m, 1);
S = zeros(m, 1);

for i = 1:m
    v = A(i, :);
    if nargin == 1
        Dmax(i) = norm(MAX - v);
        Dmin(i) = norm(v - MIN);
    elseif nargin == 2
        v = MAX - v;
        v = v.^2;
        v = v.*weight;
        Dmax(i) = sum(v).^0.5;
        
        v = v - MIN;
        v = v.^2;
        v = v.*weight;
        Dmin(i) = sum(v).^0.5;
    end
end

S = Dmin ./ (Dmax + Dmin);
y = S;

end