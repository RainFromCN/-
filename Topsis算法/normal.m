function y = normal(A)

%�Ծ��� A ���н��й�һ������
%
%y = normal(A)
%
%A      ����һ���ľ���

for i = 1:size(A, 2)
    s = sum(A(:, i));
    A(:, i) = A(:, i) ./ s;
end

y = A;
