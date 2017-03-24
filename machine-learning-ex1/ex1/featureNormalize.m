function [X_norm, mu, sigma] = featureNormalize(X)
  %FEATURENORMALIZE Normalizes the features in X
  %   FEATURENORMALIZE(X) returns a normalized version of X where
  %   the mean value of each feature is 0 and the standard deviation
  %   is 1. This is often a good preprocessing step to do when
  %   working with learning algorithms.

  sigma = std(X); % zeros(1, size(X, 2));
  mu = mean(X); % zeros(1, size(X, 2));
  X_norm = (X - mu) ./ sigma;

  % For each feature in the data set, excluding y
  ## X_norm = X
  ## for i = 1:size(X)(:,2)
  ##   X_norm(:,i) = (X_norm(:,i) - mean(X_norm(:,i))) / std(X_norm(:,i))
  ## endfor


end


