/*
 The task of this program is to write a function that when 
 passed a String, returns a char array of the String split
 into its characters.
 */
 
/* DO NOT MODIFY SETUP */
void setup() {
  String toBeSplit = "The quick brown fox jumps over the lazy dog.";
  char[] split = splitString(toBeSplit);
  printSplitString(split);
}

char[] splitString(String str) {
  /* 
   TASK 1: create a new char array result with its size equal
   to the amount of characters in the String
   */

  /*
  TASK 2: split the String str into its characters in the
  char array result
   */

  return result;
}

/* DO NOT MODIFY */
void printSplitString(char[] a) {
  println("Split string:");
  print("[");
  for (int i = 0; i < a.length - 1; i++) {
    print(a[i] + ", ");
  }
  println(a[a.length - 1] + "]");
}