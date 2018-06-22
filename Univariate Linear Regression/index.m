#Initialization and declaration of variables.salary_data = csvread('Salary_Data.csv');x = salary_data(1:31,1);y = salary_data(1:31,2);theta0 = 0;theta1 = 0;j = mean_squared_error(x,y,theta0,theta1)max_iterations = 1000;  # maximum number of iterationsalpha = 0.01; # learning ratetolerance = 0.001; # Minimum permitted difference of J(theta) between two subsequent iterationsi = 0;# Gradient Descent - finding optimal parameters.while true && i < max_iterations,  [the0,the1] = gradient_descent(x,y,theta0,theta1,alpha);  theta0 = the0;  theta1 = the1;  new_j = mean_squared_error(x,y,theta0,theta1);    # To identify if gradient descent has converged.  if abs(j - new_j) <= tolerance,    break;  end;    # Plotting minimization function against number of iterations.  figure(1)  plot(i,new_j)  hold on;    j = new_j;  i = i + 1;end;disp(theta0);disp(theta1);final_j = mean_squared_error(x,y,theta0,theta1)y1 = theta0 + theta1*x;# Plotting the final parameters against the train set.figure(2)plot(x,y,'.')hold on;plot(x,y1)