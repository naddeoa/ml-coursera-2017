function J = computeCost(X, y, theta)

  m = length(y); % number of training examples
  %X = X(:, 2);
  sum = 0;

  for i = 1:m
    x = X(i,:);
    % On paper, this is `theta' * x`, but I had to turn it into `x * theta` to get a scaler out.
    h = x * theta; % theta can't be transposed because x is a row with two columns...
    %h = theta(1,:) * X(i,1) + theta(2,:) * X(i,2); % without any vectorization instead
    sum = sum + (  h - y(i,:)  )^2;
  endfor
  J = (1/2) * (1/m) * sum;
  %J = J(1,1); % My answer is a matrix with all values equal to the answer, so I'm plucking one...
end


