# e Approximation using Monte-Carlo methods

## Background

$e \approx 2.718$ is a famous constant in Mathematics. It appears elegently in many applications, from calculus to complex numbers and statistics. The traditional means of generating this constant is by taking the limit of the following iterative sequence:

$$ e = \lim_{n \to \infty}(1+\frac{1}{n})^n $$

There is a large volume of mathematical research in Monte-Carlo methods; which essentially solve mathematical/computational problems by using stochastic or random processes. Useful information can be found here: 

https://en.wikipedia.org/wiki/Monte_Carlo_method

As interesting as $e$ already is, it gets more interesting! It is possible to generate $e$ via a Monte-Carlo or stochastic method. The initial motivation for this project was obtained from the following StackExchange post: 

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

5. At the end, take the mean of the `N` occurrences of the sessions produced. The mean of the `N` occurences should converge to $e$ as $N \to \infty$.

## Results

To visualize this convergence, we will plot the mean of `N` occurences of the sessions produced. We will vary N from 1 up until 100,000. The blue line represents the mean of `N` occurences of the sessions produced. The red line represents the value of $e$. 

### N = 10

<img src = "https://github.com/AtreyaSh/eApprox/blob/master/results/eApprox_10.png" width="500">

### N = 100

<img src = "https://github.com/AtreyaSh/eApprox/blob/master/results/eApprox_100.png" width="500">

### N = 1000

<img src = "https://github.com/AtreyaSh/eApprox/blob/master/results/eApprox_1000.png" width="500">

### N = 10000

<img src = "https://github.com/AtreyaSh/eApprox/blob/master/results/eApprox_10000.png" width="500">

### N = 100000

<img src = "https://github.com/AtreyaSh/eApprox/blob/master/results/eApprox_100000.png" width="500">
