/*
Fill out the diffBetweenLargestAndSmallest and use the function
in setup and store the return value of the function with the
array a as the parameter in the variable result

You can assume that the smallest possible value in array a is 0 and the
largest element can be 157
*/

color lavender = color(230,230,250);
color thistle = color(216,191,216);

final int ARRAY_RECT = 40;

// The array to be passed in function as the parameter
int[] a = {5, 2, 4, 10};
final int SIZE = a.length;


// Used to store the result
int result;

// Store the index of the smallest element into this variable
int smallestEleIdx = -1;

// Store the index of the largest element into this variable
int largestEleIdx = -1;

void setup() {
  size(400, 400);
  background(255);
  // Use the function diffBetweenLargestAndSmallest with array a passed in
  result = diffBetweenLargestAndSmallest(a);
  // Now print the result
  println(result);
  
  // Smallest element block will be filled lavender color
  // and the largest element block will be filled 
  // with a thistle color
  printArray();
  printDiffBetweenLargest_Smallest(result); 
}

/* STUDENT TO FILL OUT */
// This function return the difference between the largest and smallest element in a int arr
int diffBetweenLargestAndSmallest(int[] arr){
 int difference = 0;
 int smallest = 157;
 int largest = 0;
 for(int i = 0; i < arr.length; i++){
  if(arr[i] < smallest){ 
    smallest = arr[i];
    smallestEleIdx = i;
  }
  if(arr[i] > largest){
    largest = arr[i];
    largestEleIdx = i;
  }
 }
  difference = largest - smallest;
  return difference;
}


/* ----- DO NOT MODIFY CODE BELOW THIS LINE ----- */

void printArray(){
  for(int i = 0; i < SIZE; i ++){
    if(i == smallestEleIdx)
      fill(lavender);
    else if(i == largestEleIdx)
      fill(thistle);
    else
      fill(255);
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/3) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(a[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/3 + ARRAY_RECT/2);
  }
}


void printDiffBetweenLargest_Smallest(int element){
  textSize(16);

  text("The difference between the largest\n number and the smallest number\n in the array is: " + element, 50, 3*(height/4));

}