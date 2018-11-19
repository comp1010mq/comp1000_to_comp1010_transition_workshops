/*
Fill out the function arrDecreasing, which return the index of the first element that is not in decreasing order, else return -1
You can assume that the array passed into the function will have a length >= 2.
For example arrDecreasing({5,4,1,7,5}) will return 3
*/

color cornflowerblue = color(100,149,237);
color lightsalmon = color(255,160,122);

final int ARRAY_RECT = 40;

int[] a = {7, 5, 14, 3};
final int SIZE = a.length;

// Used to store the result
int result;

void setup() {
  size(400, 400);
  background(255);

  result = arrDecreasing(a);
  printArray(result);
  printIdx(result);
}

/* STUDENT TO FILL OUT */
int arrDecreasing(int[] arr) {
  return 0; // Dummy value
}


/* ----- DO NOT MODIFY CODE BELOW THIS LINE ----- */

void printArray(int idx){
  for(int i = 0; i < SIZE; i ++){
    if(i == idx)
      fill(lightsalmon); 
    else if(i > idx && idx < 0)
      fill(255);
    else
      fill(cornflowerblue);
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/3) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(a[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/3 + ARRAY_RECT/2);
  }
}

void printIdx(int element){
  textSize(16);
  if(element == -1)
    text("Array in decreasing order", 50, 3*(height/4));
  else
    text("The index of the first element that\n is not in deccreasing order is: " + element, 50, 3*(height/4));

}