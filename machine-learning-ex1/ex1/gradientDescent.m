function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

  m = length(y);
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters

    sum1 = 0;
    sum2 = 0;
    for i = 1:m
      x = X(i,:);
      h = x * theta;
      sum1 += ( h - y(i,:)  ) * x(:,1) ;
      sum2 += ( h - y(i,:)  ) * x(:,2) ;
    endfor

    theta(1) = theta(1) - alpha * (1/m) * sum1;
    theta(2) = theta(2) - alpha * (1/m) * sum2;

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

  end

end
