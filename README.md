# Processing
This Repository contains most of my projects done using Processing.

<b>Double Pendulum</b>

![doublependulum_0375](https://user-images.githubusercontent.com/83541306/136766475-2dcf247b-0567-4eb7-a070-d273e7024b77.png)

This is a simulation of a double pendulum.You can change the following initial conditions :

```sh
float r1 \\length of first pendulum
float r2 \\length of second pendulum
float m1 \\mass of first 
float m2 \\masss of second
float a1 \\initial angle of first
float a2 \\initial angle of second
float a1_v \\angular veloctiy of first
float a2_v \\angular velocity of second
float g    \\acceleration due to gravity
```

<b>Image Processing(Particles)</b>

<p>N number of  particles disperse from the center whose locus is a Cardioid to form an Image.
You can also change the locus by chaning the direction of the velocity vector ie by providing a parametric equation.</p>

```sh
velocity=new PVector(16*pow(sin(a), 3)*speed, -(13*cos(a)-5*cos(2*a)-2*cos(3*a)-cos(4*a))*speed); \\This is a parametric equation of a Cardiod.
```

You can aslo change the no of particles.

```sh
particle[] particles=new particle[N];
```

This is an example of the output:

https://user-images.githubusercontent.com/83541306/136777753-1c203541-0b6f-4243-9ade-abb0d3cf8fb2.mp4

<b>Perlin Butterfly</b>

Making a butterfly using Perlin Noise

![Perlin-Butterfly](https://user-images.githubusercontent.com/83541306/136780115-f0a689b4-fdf7-4671-8eff-158309355327.gif)















