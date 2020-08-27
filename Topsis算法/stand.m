function y = stand(A)

% ��׼������
%
% y = stand(A)
%
% A         ����׼������ľ���M*N��
%

[m, n] = size(A);

for i = 1:n
    v = A(:, i);
    X = norm(v, 2);
    v = v./X;
    A(:, i) = v;
end

y = A;

end