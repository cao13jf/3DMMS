function K = KernelDot(X, Y, params)
% function K = KernelDot(X, Y, params)

if isempty(params)
    lambda = 1;
    fsel = 1:size(X, 2);
    C = eye(size(X, 2));
else
    lambda = params{1};
    fsel = params{2};
    C = params{3};
end

if isempty(Y)
    if iscell(X), X = cell2mat(X); end
    if size(X, 1) > 1
        K = X * X';
    else
        K = 1;
    end
else
    if iscell(X), X = cell2mat(X); end
    if iscell(Y), Y = cell2mat(Y); end
    K = X * Y';
end

