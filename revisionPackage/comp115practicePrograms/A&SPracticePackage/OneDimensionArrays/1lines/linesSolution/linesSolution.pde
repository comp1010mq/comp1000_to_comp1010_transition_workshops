/*
This program generates an array with 6 integers
and calculates the total. Each time it draws a 
vertical line from the bottom whose length is 
proportional to the total.

During every iteration of draw, one value of 
the array is changed and the updated array displayed. 
Lines for past totals must also be drawn but 
in lighter colour
*/

//create an integer array a containing 6 items
int[] a = new int[6];

//DECLARE an integer array graphY
int[] graphY;

int n = 0;

final int MARGIN = 40;

void setup() {
  size(500, 150);
  //instantiate array graphY so it contains width number of items
  graphY = new int[width];

  background(255);
  /*
  initialize each item of array a to a value between 1 and 9
   (including both 1 and 9)
   */
  for (int i=0; i < a.length; i++) {
    a[i] = (int)random(1, 10);
  }
}

/*
 return the sum of all items 
 of array passed to the function.
 some parameter-return value mappings:
 {1, 7, 2, 9} -> 19
 {8, 4, -7, -8} -> -3
 */
int total(int[] arr) {
  int result = 0;
  for (int i=0; i < arr.length; i++) {
    result+=arr[i];
  }
  return result;
}

//DO NOT MODIFY ANY CODE BELOW THIS COMMENT

void draw() {
  background(255);
  if (n == width - 1)
    noLoop();
  display(a, height/3);
  graphY[n] = total(a);
  text("Total = "+graphY[n], width/2, 2*height/3);
  a[(int)random(a.length)] = (int)random(1, 10);
  for (int i=0; i <= n; i++) {
    if (i < n) {
      stroke(255, 0, 0, 127);
      strokeWeight(1);
    } else {
      stroke(255, 0, 0);
      strokeWeight(4);
    }
    line(i, height-graphY[i], i, height);
  }
  n++;
}

void display(int[] arr, int y) {
  float x = MARGIN;
  fill(0);
  textSize(MARGIN);
  textAlign(CENTER, CENTER);
  for (int i=0; i < arr.length; i++) {
    text(arr[i], x, y);
    x+=(width - MARGIN)/arr.length;
    if (x > width - MARGIN) {
      x = MARGIN;
      y+=MARGIN;
    }
  }
}