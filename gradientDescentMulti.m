function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1); %Empty array J to store cost function values at every iteration
t = zeros(size(X,2),1); %Empty array to store theta updated theta values at every iteration
for iter = 1:num_iters
    h = X*theta;
    for i = 1:size(X,2)
        t(i) = theta(i) - ((alpha/m)*((h-y)'*X(:,i))); %Simultaneous theta updates
    end
    for j = 1:size(X,2)
        theta(j) = t(j); %Set the new theta values at every iteration
    end
    theta;
    J_history(iter) = computeCostMulti(X, y, theta); %Use the theta values of that iteration to compute J
end

end
