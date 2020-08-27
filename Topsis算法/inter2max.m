function y = inter2max(x, inter)

% ������ָ�� -> ������ָ��
% 
% y = inter2max(x, inter)
%
% x         ������ָ����
% inter     ������䣬�������������������Ϊ [36 37]
%

a = inter(1);
b = inter(2);
M = max([a - min(x), max(x) - b]);
idx = find(x < a);
x(idx) = 1 - (a - x(idx))/M;
idx = x >= a & x <= b;
x(idx) = 1;
idx = find(x > b);
x(idx) = 1 - (x(idx) - b)/M;

y = x;

end

