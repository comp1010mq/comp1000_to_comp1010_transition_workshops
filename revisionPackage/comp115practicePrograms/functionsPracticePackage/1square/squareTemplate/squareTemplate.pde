float square(float a) {
  return a*a;
}

void draw() {
}

void setup() {
  size(300, 150);
  background(255);
  line(width/2, 0, width/2, height);
  strokeWeight(3);
  
  /* 
   TASK 1
   compute the square of 5 using the 'square' function
   and store it in a variable  'z'.
   
   once completed, a green tick will appear on the left side
   of the screen if correct. If not, a red cross will appear 
   on the left side of the screen.
   */

  /* 
   TASK 2
   declare a floating point variable 'y' and initialize it 
   to 9.
   compute the square of 'y' using the 'square' function
   and store it in a variable  'x'.
   
   once completed, a green tick will appear on the right side
   of the screen if correct. If not, a red cross will appear 
   on the right side of the screen.
   */
  
  
  if (z == 30.25) {
    stroke(0, 255, 0);
    line(width/4, height/2 + 10, width/4 - 8, height/2 + 2);
    line(width/4, height/2 + 10, width/4 + 12, height/2 - 15);
  } else {
    stroke(255, 0, 0);
    line(width/4 - 10, height/2 -10, width/4 + 10, height/2 + 10);
    line(width/4 - 10, height/2 +10, width/4 + 10, height/2 - 10);
  }
  
  if (x == 81) {
    stroke(0, 255, 0);
    line(3*width/4, height/2 + 10, 3*width/4 - 8, height/2 + 2);
    line(3*width/4, height/2 + 10, 3*width/4 + 12, height/2 - 15);
  } else {
    stroke(255, 0, 0);
    line(3*width/4 - 10, height/2 -10, 3*width/4 + 10, height/2 + 10);
    line(3*width/4 - 10, height/2 +10, 3*width/4 + 10, height/2 - 10);
  }
}