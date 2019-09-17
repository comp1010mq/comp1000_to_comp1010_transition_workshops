# PVector type in Processing

## PVector represents a point on the display window

### Declaring a PVector variable (actually, an object):

```java
PVector a = new PVector(50, 70); //stores location (50, 70) in PVector `a`.
```

### Components:

Each `PVector` object has two components - `x` and `y` (also `z` but we aren't doing 3D rendering).

Given PVector `a`, you can access these values using `a.x` and `a.y`.

Thus, you can draw a circle centred at the location `a` as:

```java
PVector a = new PVector(50, 70);
ellipse(a.x, a.y, 20, 20);
```

You can also change the values of the `x` and `y` components as:

```java
a.x += 30;
a.y -= 10;
//new location of a becomes (80, 60)
```
