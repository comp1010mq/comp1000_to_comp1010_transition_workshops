/*
In setup, print out the sum of positive numbers and negative numbers in a array. 
For example [2, 0, -5, -7, 3] will print 
5
-12

All positive numbers will be highlighted with lavender color
All negative numbers will be highlighted with a thistle color
*/

color lavender = color(230,230,250);
color thistle = color(216,191,216);

final int ARRAY_RECT = 40;


int[] arr = {2, 0, -5, -7, 3};
final int SIZE = arr.length;

// Stores the sum of the positive numbers
int positiveSum = 0;
 
//Stores the sum of the negative numbers
int negativeSum = 0;
void setup() {
 size(400, 400);
 background(255);
 // Do the task here
 for(int i = 0; i < arr.length; i++) {
  if(arr[i] > 0){
    positiveSum += arr[i];
  }
  if(arr[i] < 0){
    negativeSum += arr[i];
  }
 }
 // Now print the sum of the positive numbers in the array, then
 // print the sum of the negative numbers in the array
 println(positiveSum);
 println(negativeSum);
 // Dont modify
 printArray();
 printSums();
}


/* ----- DO NOT MODIFY CODE BELOW THIS LINE ----- */

void printArray(){
  for(int i = 0; i < SIZE; i ++){
    if(arr[i] > 0)
      fill(lavender);
    else if(arr[i] < 0)
      fill(thistle);
    else
      fill(255);
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/3) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(arr[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/3 + ARRAY_RECT/2);
  }
}

void printSums() {
 textSize(16);
 text("Sum of positive numbers in arr is: " + positiveSum, 50, 3*(height/4));
 text("Sum of negative numbers in arr is: " + negativeSum, 50, 16+3*(height/4));
  
  
}