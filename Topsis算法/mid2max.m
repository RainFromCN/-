function y = mid2max(x, best)

% �м���ָ�� -> ������ָ��
%
% y = mid2max(x, best)
%
% x         ָ������
% best      ���ָ�꣨�м�����
%

x_best = max(abs(x - best));
y = 1 - abs(x - best)/x_best;

end