function p = predict(theta, X)
%computes the predictions for X using a 
%threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples
p = zeros(m, 1);
for i = 1:length(p)
    if sigmoid(X(i,:)*theta) >= 0.5
        p(i) = 1;
    else
        p(i) = 0;
    end
end
end
