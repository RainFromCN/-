function y = weight(A, opt)

%�����жϾ����Ȩ��
%
%y = weight(A, opt)
%
%A          �жϾ��󣬱����Ƿ���
%opt        ����ѡ�񣬿���ѡ������ƽ��������������ƽ��������������ֵ����

if nargin == 1
    A = normal(A);
    w = zeros(size(A, 1), 1);
    for i = 1:size(A, 1)
        w(i) = sum(A(i, :));
    end
    y = normal(w);
elseif nargin == 2
    if strcmp(opt, '����ƽ����') == 1
        A = normal(A);
        w = zeros(size(A, 1), 1);
        for i = 1:size(A, 1)
            w(i) = sum(A(i, :));
        end
        y = normal(w);
    elseif strcmp(opt, '����ֵ��') == 1
        [v, d] = eig(A);
        lambda = diag(d);
        lambda_max = max(lambda);
        idx = find(d == lambda_max);
        u = v(:, idx);
        y = normal(u);
    elseif strcmp(opt, '����ƽ����') == 1
        v = zeros(size(A, 1), 1);
        for i = 1:length(v)
            tmp = cumprod(A(i, :));
            tmp = tmp(end);
            v(i) = tmp;
        end
        v = v.^(1/size(A, 1));
        y = normal(v);
    end
end

end