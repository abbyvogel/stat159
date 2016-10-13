source("../functions/regression-functions.R")

context("Test functions of regression")

test_that("RSS works as expected", {
x <- lm(mpg ~ disp + hp, data = mtcars)
expect_equal(residual_sum_squares(x), 283.4934, tolerance=.002)
 expect_length(residual_sum_squares(x), 1)
  expect_type(residual_sum_squares(x), 'double')

})

test_that("TSS works as expected", {
x <- lm(mpg ~ disp + hp, data = mtcars)
expect_equal(total_sum_squares(x), 1126.046, tolerance=.002)
 expect_length(total_sum_squares(x), 1)
  expect_type(total_sum_squares(x), 'double')

})

test_that("RSE works as expected", {
x <- lm(mpg ~ disp + hp, data = mtcars)
expect_equal(residual_std_error(x), 3.126601, tolerance=.002)
 expect_length(residual_std_error(x), 1)
  expect_type(residual_std_error(x), 'double')

})

test_that("R-Squared works as expected", {
x <- lm(mpg ~ disp + hp, data = mtcars)
expect_equal(r_squared(x), 0.7482402, tolerance=.002)
 expect_length(r_squared(x), 1)
  expect_type(r_squared(x), 'double')

})


test_that("F-statistic works as expected", {
x <- lm(mpg ~ disp + hp, data = mtcars)
expect_equal(f_statistic(x), 43.09458, tolerance=.002)
 expect_length(f_statistic(x), 1)
  expect_type(f_statistic(x), 'double')

})

