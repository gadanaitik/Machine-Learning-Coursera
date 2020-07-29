function [J, grad] = costFunction(theta, X, y)
m = length(y); % number of training examples

h = sigmoid(X*theta);

J = -(1/m) * (sum(y.*log(h) + (1-y).*log(1-h)));

grad = zeros(size(theta));
for i = 1:length(grad)
    grad(i) = 1/m*(X(:,i)'*(h - y));
end

end
