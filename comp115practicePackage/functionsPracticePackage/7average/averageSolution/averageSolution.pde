/*
 TASK 1
 define a function average that when passed two integers
 (call the formal parameters a and b), returns their average.
 some parameter-return value mappings:
 5, 9 -> 7
 6, 11 -> 8.5
 -3, 6 -> 1.5
 -4, 4 -> 0
 */

float average(int a, int b) {
  return (a+b)/2.0;

  /*
  also correct:
   float sum = a + b;
   return sum/2;
   */
}

void setup() {
  size(300, 300);
  background(255);

  /*
   TASK 2
   declare two variables x and y and initialize them to
   8 and 5 respectively. 
   call the function average to compute the average of x and y,
   and store the value returned in variable c.
   
   once you complete this code, you'll get a green circle at
   the centre of the screen if your solution is correct
   */

  int x = 8;
  int y = 5;
  float c = average(x, y);


  if (c > 6) {
    fill(0, 150, 0);
  } else {
    fill(255, 0, 0);
  }
  ellipse(width/2, height/2, 50, 50);
}

void draw() {
}

void mousePressed() {
  /*
   TASK 3
   declare two variables p and q and initialize each of 
   them to a random integer between 1 and 10 (inclusive on both sides)
   call the function average to compute the average of p and q
   and store the value returned in variable r.
   
   once you complete this code, you'll get a green circle 
   at the location of the mouse if your solution is correct
   */

  int p = (int)random(1, 11);
  int q = (int)random(1, 11);
  float r = average(p, q);

  if (r == (p+q)/2.0) {
    fill(0, 150, 0);
  } else {
    fill(255, 0, 0);
  }
  ellipse(mouseX, mouseY, 50, 50);
}