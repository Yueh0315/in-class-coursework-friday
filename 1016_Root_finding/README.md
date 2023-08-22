
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
