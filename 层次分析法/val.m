function y = val(A, B)

%����Ȩ�ؾ��󣬼����ÿ�������ĵ÷�
%
% y = val(A, B)
% y = val(weight(A), [weight(F1) weight(F2) weight(F3)])
%
% A         Ŀ���->׼����Ȩ��������
% B         ׼���->�����㣬���Ȩ����������������һ���γɵľ���

B = B';
n = size(B, 2);
w = zeros(n, 1);
for i = 1:n
    w(i) = sum(A.*B(:, i));
end
y = w;

end


