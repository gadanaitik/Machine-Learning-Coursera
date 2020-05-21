function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    h = X*theta;
    t1 = theta(1) - ((alpha/m)*((h-y)'*X(:,1)));
    t2 = theta(2) - ((alpha/m)*((h-y)'*X(:,2)));
    theta(1) = t1;
    theta(2) = t2;
    J_history(iter) = computeCost(X, y, theta); % Save the cost J in every iteration 
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % ============================================================

       
end
%J_history
end