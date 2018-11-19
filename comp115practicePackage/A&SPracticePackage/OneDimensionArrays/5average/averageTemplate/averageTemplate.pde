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

/* STUDENT TO FILL OUT */
void average(){
  /* Store the average of all elements in the array in an 
  int variable called average */
  
  // Print average to the console
  
}