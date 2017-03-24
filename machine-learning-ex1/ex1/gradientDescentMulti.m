function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)


  m = length(y); % number of training examples
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters

    sums = zeros(1,size(X,2))
    for i = 1:m
      x = X(i,:);
      h = x * theta;

      sums += ( h - y(i,:)  ) * x ;
    endfor

    theta = theta - alpha * (1/m) * sums'

    J_history(iter) = computeCostMulti(X, y, theta)

  end

end
