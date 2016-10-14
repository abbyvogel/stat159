## Functions produced by Abby Vogel for Statistics 159 HW 03 at the University of Califonia Berkeley


##RESIDUAL SUM of SQUARES
#i did this before I saw the piazza response


residual_sum_squares <- function(x){
  sum(x$residuals^2)
}


##TOTAL SUM OF SQUARES

total_sum_squares <- function(x) {
  sum(( x$model[1] -  ((sum(x$model[1]))  / nrow(x$model)) )^2)
}

## R squared

r_squared <- function(x) {
  sum((x$fitted.values - ((sum(x$model[1]))  / nrow(x$model)))^2) / total_sum_squares(x)
}

## residual standard error
residual_std_error <- function(x) {
  (1/( (nrow(x$model))-(x$rank-1)-1) * (residual_sum_squares(x)))^(.5)
}

### F statistic
f_statistic <- function(x){
  (((total_sum_squares(x) - residual_sum_squares(x))/(x$rank-1)) /
    (residual_sum_squares(x)/((nrow(x$model))-(x$rank-1)-1)))
}