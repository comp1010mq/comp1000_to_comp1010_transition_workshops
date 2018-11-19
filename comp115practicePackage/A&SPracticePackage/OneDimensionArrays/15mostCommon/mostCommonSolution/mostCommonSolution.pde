/*
This program generates a randomly sized array of random integers.
The aim of this exercise is for the student to calculate something
about the array by comparison to other elements in the array.
The student should fill out the mostCommon() method.
The method should return the most common element. If there are multiple
the function only need return one of them.
If multiple common elements are found then the boolean multiple should be changed.
NOTE: Make sure the multiple flag is set and unset correctly!
What would happen if the first 2 elements you found both had a count of x but then
you see another element later on that has a count of x + y. Should multiple still be set?
*/
final int SIZE = (int)random(1, 10);
final int ARRAY_RECT = 40;
int arr[] = new int[SIZE];
boolean multiple = false;

void setup(){
  size(400, 400);
  background(255);
  println("Array: ");
  for(int i = 0; i < arr.length; i++){
    arr[i] = (int)random(1, 5);
    print(arr[i], ' ');
  }
  println();
  int element = mostCommon();
  printArray(element);
  printMostCommon(element);
  if(multiple){
    println("One of the most common elements is:", element);
  } else {
    println("The most common element is:", element);
  }
}

void printArray(int element){
  for(int i = 0; i < SIZE; i ++){
    fill(255);
    if(element == arr[i]){
      fill(0, 255, 0);
    }
    rect(((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT, (height/3) - SIZE/2, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(arr[i], (((10 - SIZE)* ARRAY_RECT/2) + i * ARRAY_RECT) + ARRAY_RECT/3, height/3 + ARRAY_RECT/2);
  }
}

void printMostCommon(int element){
  textSize(16);
  if(multiple){
    text("One of the most common elements is: " + element, 50, 3*(height/4));
  } else {
    text("The most common element is: " + element , 55, 3*(height/4));
  }
}

/* SOLUTION */
int mostCommon(){
  int maxCount = 0;
  int maxValue = 0;
  int localCount;
  for(int i = 0; i < arr.length; i++){
    localCount = 1;
    for(int j =  i + 1; j < arr.length; j++){
      if(arr[j] == arr[i]){
        localCount = localCount + 1;
      }
    }
    if(localCount > maxCount){
      maxCount = localCount;
      maxValue = arr[i];
      multiple = false;
    } else if (localCount == maxCount) {
      multiple = true;
    }
  }
  return maxValue;
}