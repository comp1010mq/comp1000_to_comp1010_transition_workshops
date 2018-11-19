/*
The aim of this exercise is for students to define and intialize arrays with patterns.
Student needs to initialize three arrays with different patterns.
PATTERN 1: 0, 1, 2, 3, 4, ....
PATTERN 2: 1, 2, 4, 8, 16, ....
PATTERN 3: 1, -2, 3, -4, 5, -6, ....
*/
/* SOLUTION */
int pattern1[] = new int[10];
int pattern2[] = new int[10];
int pattern3[] = new int[10];

void setup(){
  // PATTERN 1
  println("Pattern 1: ");
  for(int i = 0; i < pattern1.length; i++){
    pattern1[i] = i;
    print(pattern1[i], ' ');
  }
  println();
  // PATTERN 2
  println("Pattern 2: ");
  int value = 1;
  for(int i = 0; i < pattern2.length; i++){
    pattern2[i] = value;
    value = value * 2;
    print(pattern2[i], ' ');
  }
  println();
  // PATTERN 3
  println("Pattern 3: ");
  value = 1;
  for(int i = 0; i < pattern3.length; i++){
    if(i % 2 == 0){
      pattern3[i] = value;
    } else {
      pattern3[i] = value * -1;
    }
    value = value + 1;
    print(pattern3[i], ' ');
  }
}