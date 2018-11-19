/*
The exercise is to sum every element in array arr with an even index
and return that value
Fill out sumOfElementWithEvenIndex
*/

final int ARRAY_RECT = 40;

int[] arr = {80,60,10,50,23};
final int SIZE = arr.length;

void setup() {
  size(400, 400);
  background(255);
  int result = sumOfElementWithEvenIndex(arr);
  println(result); // result should be 113
 
  printArray();
  printSumCommon(result); 
}

/* STUDENT TO FILL OUT */
// This function return the sum of the element in arr
// with even index
int sumOfElementWithEvenIndex(int[] arr) {
 int sum = 0;
 for(int i =0; i < arr.length; i += 2) {
  sum += arr[i]; 
 }
 return sum;
  
}


/* ----- DO NOT MODIFY CODE BELOW THIS LINE ----- */

void printArray(){
  for(int i = 0; i < SIZE; i ++){
    fill(255);
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/3) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(arr[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/3 + ARRAY_RECT/2);
  }
}


void printSumCommon(int element){
  textSize(16);

  text("Sum of of numbers in arr with even\n index is: " + element, 50, 3*(height/4));

}