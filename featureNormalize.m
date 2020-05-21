function [X_norm, mu, sigma] = featureNormalize(X)
X_norm = zeros(size(X));
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for i = 1:size(X,2)
    mu(i) = mu(i) + mean(X(:,i));
    sigma(i) = sigma(i) + std(X(:,i));
end

for j = 1:size(X,2)
    for i = 1:size(X,1)
        X_norm(i,j) = (X(i,j) - mu(j))/sigma(j);
    end
end 
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
% ============================================================

end
