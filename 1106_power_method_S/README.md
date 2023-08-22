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
