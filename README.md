# Processing
This Repository contains all my projects done using Processing.

<b>Double Pendulum</b>

![doublependulum_0375](https://user-images.githubusercontent.com/83541306/136766475-2dcf247b-0567-4eb7-a070-d273e7024b77.png)

This is a simulation of a double pendulum.You can change the following initial conditions :

```sh
mass,length,initial_angle,acceleration due to gravity. 
```

<b>Image Processing(Particles)</b>

<p>N number of  particles disperse from the center whose locus is a Cardioid to form an Image.
You can also change the locus by chaning the direction of the velocity vector ie by providing a parametric equation.</p>

```sh
velocity=new PVector(16*pow(sin(a), 3)*speed, -(13*cos(a)-5*cos(2*a)-2*cos(3*a)-cos(4*a))*speed); \\This is a parametric equation of a Cardiod.
```

This is an example of the output:

