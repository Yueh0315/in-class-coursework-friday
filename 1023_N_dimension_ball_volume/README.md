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

