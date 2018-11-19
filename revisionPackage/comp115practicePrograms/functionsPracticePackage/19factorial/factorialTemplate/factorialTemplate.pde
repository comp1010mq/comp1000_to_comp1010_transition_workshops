/*
TASK
define a function facotrial that when passed an integer a,
returns value of a factorial.

some parameter-return value mappings:
0 -> 1
1 -> 1
3 -> 6
12 -> 479001600

once completed, the screen should have a green background if
correct and a red background if incorrect.
*/


void setup() {
  size(200, 200);
  boolean a = factorial(0) == 1;
  boolean b = factorial(1) == 1;
  boolean c = factorial(2) == 2;
  boolean d = factorial(3) == 6;
  boolean e = factorial(8) == 40320;
  boolean f = factorial(12) == 479001600;
  
  if (a && b && c && d && e && f) {
    background(0, 255, 0);
  } else {
    background(255, 0, 0);
  }
}