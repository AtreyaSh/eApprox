# e Approximation using Monte-Carlo methods

## Background

<img src="/tex/ea58f7c7e035f339572ca09476e61916.svg?invert_in_darkmode&sanitize=true" align=middle width=67.01483084999998pt height=21.18721440000001pt/> is a famous constant in Mathematics. It appears elegently in many applications, from calculus to complex numbers and statistics. The traditional means of generating this constant is by taking the limit of the following iterative sequence:

<p align="center"><img src="/tex/f559faf58b3264d0425e3f93b63dee1c.svg?invert_in_darkmode&sanitize=true" align=middle width=131.96463884999997pt height=32.990165999999995pt/></p>

There is a large volume of mathematical research in Monte-Carlo methods; which essentially solve mathematical/computational problems by using stochastic or random processes. Useful information can be found here: 

https://en.wikipedia.org/wiki/Monte_Carlo_method

As interesting as <img src="/tex/8cd34385ed61aca950a6b06d09fb50ac.svg?invert_in_darkmode&sanitize=true" align=middle width=7.654137149999991pt height=14.15524440000002pt/> already is, it gets more interesting! It is possible to generate <img src="/tex/8cd34385ed61aca950a6b06d09fb50ac.svg?invert_in_darkmode&sanitize=true" align=middle width=7.654137149999991pt height=14.15524440000002pt/> via a Monte-Carlo or stochastic method. The initial motivation for this project was obtained from the following StackExchange post: 

https://stats.stackexchange.com/questions/193990/approximate-e-using-monte-carlo-simulation

Numberphile made an interesting [video](https://www.youtube.com/watch?v=ur-iLy4z3QE) on Monte-Carlo methods to generate Apery's constant, which was a great motivation for this project.

## Algorithm

The algorithm can be described as follows:

1. We will run `N` iterations and within each iteration there are `k` sessions. 

2. Generate a random number between 0 and 1 for the first iteration. In the case of our simulation, we used random numbers up to 5 decimal places.

3. The first random number corrresponds to the 1st of `k` sessions. If the random number exactly equals 1, end the current iteration and record the variable `k`. Naturally, if the first random number was 1, then `k` would equal 1. 

   If the first random number is strictly less than 1, generate another random number within the same iteration. The session `k` would then increase by 1 and would equal 2. Check if the sum of the two random numbers is equal to or greater than 1. If this is true, end the current iteration and record the current session `k`. 
   
   If the sum of the two random numbers is still strictly less than 1, repeat this process until the sum of the generated random numbers within the iteration equal or exceed 1. Correspondingly, record the session `k` required to equal or exceed 1.
   
4. Repeat this entire process for `N` iterations. For our simulation, we used natural number powers of 10 as values for `N`.

5. At the end, take the mean of the `N` occurrences of the sessions produced. The mean of the `N` occurences should converge to <img src="/tex/8cd34385ed61aca950a6b06d09fb50ac.svg?invert_in_darkmode&sanitize=true" align=middle width=7.654137149999991pt height=14.15524440000002pt/> as <img src="/tex/59fc06e4db2c45ebe23067e984ddb2b5.svg?invert_in_darkmode&sanitize=true" align=middle width=57.00897179999999pt height=22.465723500000017pt/>.

## Results

To visualize this convergence, we will plot the mean of `N` occurences of the sessions produced. We will vary N from 1 up until 1,000. The blue line represents the mean of `N` occurences of the sessions produced. The red line represents the value of <img src="/tex/8cd34385ed61aca950a6b06d09fb50ac.svg?invert_in_darkmode&sanitize=true" align=middle width=7.654137149999991pt height=14.15524440000002pt/>. Enjoy the gif!

<img src ="/gif/eApprox.gif" width="500">

And we can see a nice convergence in these figures. Math is beautiful!
