/*
This program generates a randomly sized array of random characters.
The aim of this exercise is for the student to validate the array based
on the element inside it.
Students need to fill out the onlyLowercase() method.
This method should return true if and only if the array conatins
just lowercase elements.
If the array does not only contain lowercase elements return false.
*/
final int SIZE = (int)random(1, 10);
char arr[] = new char[SIZE];

void setup(){
  println("Array: ");
  for(int i = 0; i < arr.length; i++){
    arr[i] = (char)(int)random(65, 123);
    print(arr[i], ' ');
  }
  println();
  boolean result = onlyLowercase();
  if(result){
    println("The array contains only lowercase letters");
  } else {
    println("The array does not contain only lowercase letters");
  }
}

/* ------ DO NOT MODIFY CODE ABOVE THIS LINE ------ */

/* STUDENTS TO FILL OUT */
boolean onlyLowercase(){
  return false;
}