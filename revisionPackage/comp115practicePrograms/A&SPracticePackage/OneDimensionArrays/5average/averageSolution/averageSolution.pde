/*
This program generates an integer array of a random size
containing random integers.
Student needs to calculate the average of the array by
filling out the average() function.
*/
final int SIZE = (int)random(1, 50);
int arr[] = new int[SIZE];

void setup(){
  for(int i = 0; i < SIZE; i++){
    arr[i] = (int)random(0, 100);
  }
  average();
}

/* SOLUTION */
void average(){
  /* Store the average of all elements in the array in an 
  int variable called average */
  int average = 0;
  for(int i = 0; i < arr.length; i++){
    average = average + arr[i];
  }
  average = average/arr.length;
  // Print average to the console
  println(average);
}