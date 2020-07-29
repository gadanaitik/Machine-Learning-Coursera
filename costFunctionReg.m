function [J, grad] = costFunctionReg(theta, X, y, lambda)

% Initialize some useful values
m = length(y); % number of training examples
h = sigmoid(X*theta);
J = -(1/m) * (sum(y.*log(h) + (1-y).*log(1-h))) + ((lambda/(2*m)) * (sum(theta(2:end).*theta(2:end))));

% You need to return the following variables correctly 
grad = zeros(size(theta));
grad(1) = 1/m*(X(:,1)'*(h - y));
for i = 2:length(grad)
    grad(i) = 1/m*(X(:,i)'*(h - y)) + ((lambda/m)*theta(i));
end

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
