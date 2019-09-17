# Array of PVector objects

You can create an array of PVector objects to hold and operate on multiple locations as:

```java
PVector[] data = new PVector[5]; //holds 5 locations
```

The number of items in the array is given by `data.length`.

The 5 PVector objects in the array are accessed as:

1. `data[0]`
2. `data[1]`
3. `data[2]`
4. `data[3]`
5. `data[4]`

Thus, you can go through each object using a loop, as,

```java
for(int i=0; i < data.length; i++) {
  println(data[i]);
}
```

You will see the following output as each PVector object is `null` (uninitialized) in the beginning.

```java
null
null
null
null
null
```

You can randomize each object in a loop before displaying it, as,

```java
for(int i=0; i < data.length; i++) {
  data[i] = new PVector(random(width), random(height));
  println(data[i]);
}
```

Sample output (remember, PVectors have a third value `z` that we don't use):

```java
[ 8.236826, 78.91757, 0.0 ]
[ 92.74533, 54.27635, 0.0 ]
[ 60.70919, 44.13377, 0.0 ]
[ 59.916126, 69.40042, 0.0 ]
[ 25.684088, 85.957634, 0.0 ]
```

To determine which point is furthest from the origin (0, 0), we can use the `dist()` function from Processing, as,

```java
int furthestIndex = 0; //assume first point is furthest
for(int i=1; i < data.length; i++) {
  float curDist = dist(data[i].x, data[i].y, 0, 0);
  float maxDist = dist(data[furthestIndex].x, data[furthestIndex].y, 0, 0);
  if(curDist > maxDist) {
    furthestIndex = i;
  }
}
```
  
  
  
  
