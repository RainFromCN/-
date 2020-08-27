function y = cr(A)

%���жϾ���� CR ֵ���� 0.1 �Ƚ�
%
% y = cr(A)
% 
% A         �������жϾ���

n = size(A, 1);
ritab = [0 0 0.52 0.89 1.12 1.26 1.36 1.41 1.46 1.49 1.52 1.54 1.56 1.58 1.59];

ri = ritab(n);
lambda = eig(A);

lambda_max = max(lambda);
ci = (lambda_max - n) / (n - 1);
y = ci / ri;

end