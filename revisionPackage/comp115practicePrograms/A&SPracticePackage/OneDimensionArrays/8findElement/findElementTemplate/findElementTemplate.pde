/*
This program generates a randomly sized array of
random integers.
Students need to fill out the findElement(int element) method.
This method takes the element to be found in the array as a parameter.
If the element is found then the index of the first occurance of the
element should be returned.
If the element is not found then return -1
*/
final int SIZE = (int)random(1, 10);
final int ARRAY_RECT = 40;
int arr[] = new int[SIZE];

void setup(){
  size(400, 400);
  background(255);
  println("Array is: ");
  for(int i = 0; i < arr.length; i++){
    arr[i] = (int)random(1, 5);
    print(arr[i], ' ');
  }
  println();
  int element = (int)random(1, 5);
  printElement(element);
  int index = findElement(element);
  printArray(index);
  if(index < 0){
    println("The element", element, "is not in the array");
  } else {
    println("The element", element, "is at index", index, "in the array");
  }
  printIndex(index);
}

void printElement(int element){
  textSize(20);
  fill(0);
  text("Find the first occurance of element: " + element, 20, height/3);
}

void printArray(int index){
  for(int i = 0; i < SIZE; i ++){
    fill(255);
    if(i == index){
      fill(0, 255, 0);
    }
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/2) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(arr[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/2 + ARRAY_RECT/2);
  }
}

void printIndex(int index){
  textSize(15);
  if(index < 0){
    text("The element is not in the array", 40, 3*(height/4));
  } else {
    text("The first occurance of the element was found at: " + index, 10, 3*(height/4));
  }
}

/* ----- DO NOT MODIFY CODE ABOVE THIS LINE ----- */

/* STUDENT TO FILL OUT */
int findElement(int element){
  return -1;
}