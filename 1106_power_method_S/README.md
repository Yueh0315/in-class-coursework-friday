# Yueh0315 - Coursework  Friday

Here are my same brief reports of the coursework done on Friday.  Since Markdown does not support Latex's math expression, my layout is ugly, sorry... It would be more readable if you open it with Typora.

# 9/25 Find_N

Find N where the first N terms sum of 1/n is greater than x.

**Result**

```
>> Find_N(15)
     1835422
```

More detail is described in the code

# 10/16 Root_finding

Compute the roots of function sin(x)/x - c with Newton’s iteration.

1. Use IVP to check whether the interval has root or not

2. Use Newton's iteration to find the root

**Newton’s iteration**:

Define F(x) = x - f(x)/f'(x), then the roots of  f is the fixed points of F.

We can iterate as **a_n+1= a_n - f(a_n)/f'(a_n)**

**Result:**

```
>> Root_finding(0.1)
# of roots = 6
roots = 
  -8.423203932360492
  -7.068174358095818
  -2.852341894450092
   2.852341894450092
   7.068174358095818
   8.423203932360492
```

# 10/23 N_dimension_ball_volume

Calculate the N-dimension ball's volume with Monte-Carlo method:

<img src="https://imgur.com/rC2y1CE.jpg" alt="Image" style="zoom: 67%;" />

1.  Choose n sample points
2.  Count how many points are in the ball (norm(x)^2<=1), denote it as M

3. Since we know that the volume of N-dimension hypercube ([-1,1] for each axis) is 2^N, the volume of N-dimension ball will be (2^N)*M/n

Reference: [Monte Carlo integration](https://en.wikipedia.org/wiki/Monte_Carlo_integration)

**Result:**

```
>> N_dimension_ball_volume(6)
volume of 6 dimensional ball = 5.1647
```

# 10/30 Jacobi_method

Solve the linear problem Ax = b with Jacobi method, where A is a square matrix and b is a vector.

Let

<img src="https://imgur.com/Xbnl0XI.jpg" alt="Image" style="zoom:67%;" />

Then we can define a sequence as 

<img src="https://imgur.com/Q9bjn4J.jpg" alt="Image" style="zoom: 80%;" />

Thus, if x_n converge to x, x will satisfy Ax=b

Note that it is inappropriate to use `inv(D)*b`, instead we can use `b\D` 

**Result:**

```
>> A = [5 2 1 1;
        2 6 2 1;
        1 2 7 1;
        1 1 2 8];
   b = [29;31;26;19];
   Jacobi_method(A, b)
x = 
   3.992751765445470
   2.954104399108588
   2.161834330416724
   0.966182377758682

A*x = 
  28.999984333619931
  30.999980964134597
  25.999983254338396
  18.999983847456964

```

# 11/6 power_method_S

Compute the largest and smallest eigenvalues of the matrix A, n=10^3: 

<img src="https://imgur.com/6nFEd0x.jpg" alt="Image" style="zoom: 67%;" />

\* Write A as a **sparse matrix**, then use power and inverse power method.

[**power method/inverse power method**](https://hackmd.io/@teshenglin/ms_power)

1.  Choose a random vector u

2. Let ∥u∥ = 1 and compute v = Au, define λ = v(1)/u(1)

3. Let u = v and repeat step2. until λ converge

**Result:**

```
>> power_method_S
the biggest eigenvalue = -3.9995
the smallest eigenvalue = -9.8499e-06
```

# 11/13 Poisson equation in 1D and 2D

[Reference](https://hackmd.io/@teshenglin/ms_poisson)

**1D:**

Use Jacobi method to solve 1D Poisson’s equation:

<img src="https://imgur.com/JYfqYJ9.jpg" alt="Image" style="zoom:67%;" />

where u(0) = u(1) = 0 and f(x) = π^2*sin(πx)

**2D:**

Use Jacobi method to solve 2D Poisson’s equation:

<img src="https://imgur.com/neYLDBG.jpg" alt="Image" style="zoom:67%;" />

where u = 0 for all u on the boundary and f(x) = 2π^2*sin(πx)sin(πy)

# 11/20 finite_difference_method

Use [finite difference method](https://hackmd.io/@teshenglin/ms_poisson) to solve two-point boundary value problem:

<img src="https://imgur.com/xdpXUCv.jpg" alt="Image" style="zoom:67%;" />

1. Divide [0,8] in to N+2 points, where x_0 = 0 and x_N+1 = 8

2. From finite difference method we get

   <img src="https://imgur.com/nwSTsNq.jpg" alt="Image" style="zoom:67%;" />

   where y_k = y(x_k) and y_0 = y(0) = 1, y_N+1 = y(8) = 0

3. Use `fsolve` to find out y_1, y_2, ..., y_N

**Result:**

<img src="https://imgur.com/Zn9fwa7.jpg" alt="Image" style="zoom:67%;" />

(Compare to the assignment on 11/10 Shooting method)

# 11/27 Approximating_function

Let user arbitrary clink six points with order and connect these six points with straight line. Find a polynomial so that the polynomial is close to the line of those six points.

1. Add more points between two points
2.  Use `polyfit` to find the polynomial that fit these points

**Result:**

<img src="https://imgur.com/9rYgciG.jpg" alt="Image" style="zoom:67%;" />

(In the code I use the polynomial of 5-degree to fit the line, maybe use higher degree it will fit more explicitly)

# 12/4 Erase_by_Mouse

Load a picture and let user clink a point on the picture then the area around the point can be replaced by a specific color.

1. Load the picture
2. Record the coordinate where user clink (Note that the coordinate record by `ginput` is upside down from the picture's matrix)
3.  Replace the color of the area around the point
   - Notice that if user clink on boundary, the program may crash. Use some conditions to make sure the range to erase will not exceed the boundary 
4. Push `esc` to end the program

**Demo**

<img src="https://imgur.com/1L1uIsd.jpg" alt="Image" style="zoom:67%;" />

