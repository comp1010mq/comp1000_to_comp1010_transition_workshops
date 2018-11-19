/*
This program will generate an array of 9 integers
containing only lower case characters.
This exercise is a continuation of the 'findElement' exercise.
The aim of this exercise is for student to traverse an array
search for all occurances of an element.
Students need to fill out the indexes(int element) method.
This method take the element to be found in the array as a parameter.
The method should return an integer array containing all indexes containing
the given element.
If the element is not found then return an empty array of length 0.
*/
final int ARRAY_RECT = 40;
final int SIZE = 9;
int arr[] = new int[SIZE];

void setup(){
  size(400, 400);
  background(255);
  println("Array is: ");
  for(int i = 0; i < arr.length; i++){
    arr[i] = (int)random(1, 4);
    print(arr[i], ' ');
  }
  println();
  int element = (int)random(1, 4);
  printElement(element);
  int indexes[] = indexes(element);
  printArray(indexes);
  print("The following character", element, "can be found at indexes: ");
  for(int i = 0; i < indexes.length; i++){
    print(indexes[i], ' ');
  }
  println("in the array");
  printIndexes(indexes);
}

void printElement(int element){
  textSize(20);
  fill(0);
  text("Find all occurances of element: " + element, 30, height/3);
}

void printArray(int[] indexes){
  for(int i = 0; i < SIZE; i ++){
    fill(255);
    for(int j = 0; j < indexes.length; j++){
      if(indexes[j] == i){
        fill(0, 255, 0);
      }
    }
    rect(20 + i * ARRAY_RECT, (height/2) - ARRAY_RECT/4, ARRAY_RECT, ARRAY_RECT);
    fill(0);
    text(arr[i], (20 + i * ARRAY_RECT) + ARRAY_RECT/3, height/2 + ARRAY_RECT/2);
  }
}

void printIndexes(int[] indexes){
  textSize(16);
  if(indexes.length == 0){
    text("The element is not in the array", 40, 3*(height/4));
  } else {
    String indexesString = "";
    for(int i = 0; i < indexes.length; i++){
      indexesString += (indexes[i] + ", ");
    }
    text("The element was found at: " + indexesString.substring(0, indexesString.length() -2), 30, 3*(height/4));
  }
}

/* SOLUTION */
int[] indexes(int element){
  int count = 0;
  for(int i = 0; i < arr.length; i++){
    if(arr[i] == element){
      count = count + 1;
    }
  }
  int result[] = new int[count];
  int resultIndex = 0;
  for(int i = 0; i < arr.length; i++){
    if(arr[i] == element){
      result[resultIndex] = i;
      resultIndex = resultIndex + 1;
    }
  }
  return result;
}