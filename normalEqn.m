function [theta] = normalEqn(X, y)

theta = inv(X'*X) * X' * y;
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%
% ============================================================
end
