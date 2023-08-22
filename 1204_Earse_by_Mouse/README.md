# 12/4 Erase_by_Mouse

Load a picture and let user clink a point on the picture then the area around the point can be replaced by a specific color.

1. Load the picture
2. Record the coordinate where user clink (Note that the coordinate record by `ginput` is upside down from the picture's matrix)
3.  Replace the color of the area around the point
   - Notice that if user clink on boundary, the program may crash. Use some conditions to make sure the range to erase will not exceed the boundary 
4. Push `esc` to end the program

**Demo**

<img src="https://imgur.com/1L1uIsd.jpg" alt="Image" style="zoom:67%;" />

