# False position regula falsi Matlab
False position (regula falsi) using Matlab

False position (regula falsi)

The false position method, also called the regula falsi method, is similar to the bisection method, but instead of using bisection search's middle of the interval it uses the x-intercept of the line that connects the plotted function values at the endpoints of the interval, that is

  ![Demo](https://wikimedia.org/api/rest_v1/media/math/render/svg/dfee15e52fafd3b28dd9f0a1d65d79a52a615f8f)

False position is similar to the secant method, except that, instead of retaining the last two points, it makes sure to keep one point on either side of the root. The false position method can be faster than the bisection method and will never diverge like the secant method; however, it may fail to converge in some naive implementations due to roundoff errors that may lead to a wrong sign for f(c); typically, this may occur if the rate of variation of f is large in the neighborhood of the root.

Ridders' method is a variant of the false position method that uses the value of function at the midpoint of the interval, for getting a function with the same root, to which the false position method is applied. This gives a faster convergence with a similar robustness. 
