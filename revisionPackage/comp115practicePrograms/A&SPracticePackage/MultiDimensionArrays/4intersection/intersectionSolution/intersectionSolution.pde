/*
This program generates a 2-D integer array containing random values.
The aim of this exercise is for students to work with 2-D arrays.
The student needs to fill out the intersection() method.
The intersection method should return an array containing the elements
that are part of the intersection of the sub-arrays.
If the intersection set is empty then an empty array of length 1 should be returned.
HELPFUL FUNCTIONS:
Some helpful function have been provided under intersection which the student may
wish to fill out and use to help aid them fill out the intersection method.
These are completely optional and are described below.
INTERSECTION SET:
The intersection of sub-arrays is defined as an array containing elements that
appear in every sub-array at least once.
*/
final int ARRAY_RECT = 40;
final int SUB_ARRAYS = (int)random(1, 10);
final int MAX_VAL = 4;
int arr[][] = new int[7][5];

void setup(){
  size(400, 400);
  background(255);
  println("Array is: ");
  for(int i = 0; i < arr.length; i++){
    print("[  ");
    for(int j = 0; j < arr[i].length; j++){
      arr[i][j] = (int)random(1, MAX_VAL);
      print(arr[i][j], ' ');
    }
    print(']');
    println();
  }
  println();
  int result[] = intersection();
  printArrays(result);
  print("The intersection of the sub-arrays is: [  ");
  for(int i = 0; i < result.length; i++){
    print(result[i], ' ');
  }
  print(']');
  printResult(result);
}

// Print 2-D array to screen.
void printArrays(int[] result){
   boolean highlighted[] = new boolean[result.length];
   for(int i = 0; i < arr.length; i++){
     for(int j = 0; j < arr[i].length; j++){
       fill(255);
       for(int x = 0; x < result.length; x++){
         if(arr[i][j] == result[x] && !highlighted[getIndex(result, result[x])]){
           fill(getHighlight(getIndex(result, result[x])));
           highlighted[getIndex(result, result[x])] = true;
         }
       }
       rect(100 + (j * ARRAY_RECT), 15 + (i * ARRAY_RECT) + (i * 5), ARRAY_RECT, ARRAY_RECT);
       fill(0);
       text(arr[i][j], 100 + (j * ARRAY_RECT) + 15, 15 + (i * ARRAY_RECT) + 25 + (i * 5));
     }
     for(int m = 0; m < highlighted.length; m++){
       highlighted[m] = false;
     }
   }
}

// Returns index of element in array.
int getIndex(int[] array, int element){
  for(int i = 0; i < array.length; i++){
    if(array[i] == element){
      return i;
    }
  }
  return -1;
}

// Returns colour for highlighting elements of intersection
// based on index in result array.
int getHighlight(int index){
  switch(index){
    case 0:
    return color(0, 255, 0, 50);
    case 1:
    return color(0, 0, 255, 50);
    case 2:
    return color(255, 0, 0, 50);
    default:
    return color(0);
  }
}

// Print result string to screen
void printResult(int[] result){
  textSize(15);
  if(result.length == 0){
    text("There is no intersection", width/4, height - 40);
  } else {
    String resultString = "";
    for(int i = 0; i < result.length; i++){
      resultString += result[i] + ", ";
    }
    text("The intersection is: [" + resultString.substring(0, resultString.length()-2) + ']', width/4, height - 40);
  }
}

/* SOLUTION */
int[] intersection(){
  int count = 0;
  int result[] = new int[0];
  for(int i = 0; i < arr.length; i++){
    for(int j = 0; j < arr[i].length; j++){
      if(isInArray(result, arr[i][j])){
        break;
      }
      boolean inAllArrays = true;
      for(int x = 0; x < arr.length; x++){
        boolean inSubArray = isInArray(arr[x], arr[i][j]);
        if(!inSubArray){
          inAllArrays = false;
          break;
        }
      }
      if(inAllArrays){
        count = count + 1;
        result = addToArray(result, arr[i][j]);
      }
    }
  }
  return result;
}

/* Helpful functions you may want to use */

/*
This function takes an element and array as parameters and returns
a boolean value according to whether or not the element is in the array.
*/
boolean isInArray(int arr[], int element){
  for(int i = 0; i < arr.length; i++){
    if(arr[i] == element){
      return true;
    }
  }
  return false;
}

/*
This function takes an element and array as parameters and returns
a new integer array with the contents of the given array with
element appended to the end.
*/
int[] addToArray(int[] array, int element){
  int[] result = new int[array.length + 1];
  for(int i = 0; i < array.length; i ++){
    result[i] = array[i];
  }
  result[result.length - 1] = element;
  return result;
}