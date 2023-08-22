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
