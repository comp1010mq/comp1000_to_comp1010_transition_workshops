/*
This program generates a randomly sized array of random integers.
The aim of this exercise is for the student to calculate the middle index of an array
The student should fill out the method findMiddleItem().
It should return the element in the middle of the array.
If the array is of even size then either the floor or ceiling element may be returned.
*/
final int SIZE = (int)random(1, 10);
final int ARRAY_RECT = 40;
int arr[] = new int[SIZE];

void setup(){
  size(400, 400);
  background(255);
  println("Array: ");
  for(int i = 0; i < SIZE; i++){
    arr[i] = (int)random(0, 100);
    print(arr[i], ' ');
  }
  println();
  int middleElement = findMiddleItem();
  printArray();
  printIndex(middleElement);
  println("The middle element is:", middleElement);
}

void printArray(){
  for(int i = 0; i < SIZE; i ++){
    fill(255);
    if(i == SIZE/2){
      fill(0, 255, 0);
    }
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/3) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(arr[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/3 + ARRAY_RECT/2);
  }
}

void printIndex(int element){
  textSize(15);
  text("The middle element is: " + element, width/4, 3*(height/4));
}

/* SOLUTION */
int findMiddleItem(){
  int middleIndex = arr.length/2;
  return arr[middleIndex];
}