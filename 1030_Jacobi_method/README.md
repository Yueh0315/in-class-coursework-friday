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
