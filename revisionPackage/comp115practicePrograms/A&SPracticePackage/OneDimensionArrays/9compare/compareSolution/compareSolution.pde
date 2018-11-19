/* DO NOT MODIFY SETUP */
void setup() {
  checkProgram();
}

/*
 TASK:
 complete the function compare.
 this function takes in two char arrays and
 returns the amount of times both arrays have the
 same character in the same index.
 
 examples:
 {'r', 's', 'c', '@'}, {'r', 'a', 'c'} -> 2
 {'?', '7', 'v'}, {'q', 'c', ')'} -> 0
 {'8', '%', '3', 'd'}, {'8', '3', 'd'} -> 1
 
 once completed, check output to see if done correctly
 */
int compare(char[] a, char[] b) {
  // find the smaller array out of a and b
  // stores the length of the smaller array in smaller
  int smaller = a.length;
  if (a.length > b.length) {
    smaller = b.length;
  }

  int count = 0;
  for (int i = 0; i < smaller; i++) {
    if (a[i] == b[i]) {
      count++;
    }
  }

  return count;
}

/* DO NOT MODIFY */
void checkProgram() {
  char[] a1 = {'g', '3', 'b', '!', 'a', 's', '>'};
  char[] b1 = {'g', '3', 'm', '!', '5'};
  boolean c1 = compare(a1, b1) == 3;
  
  char[] a2 = {'r', 's', 'c', '@'};
  char[] b2 = {'r', 'a', 'c'};
  boolean c2 = compare(a2, b2) == 2;
  
  char[] a3 = {'?', '7', 'v'};
  char[] b3 = {'q', 'c', ')'};
  boolean c3 = compare(a3, b3) == 0;
  
  char[] a4 = {'8', '%', '3', 'd'};
  char[] b4 = {'8', '3', 'd'};
  boolean c4 = compare(a4, b4) == 1;
  
  char[] a5 = {'1', '2'};
  char[] b5 = {'2', '1'};
  boolean c5 = compare(a5, b5) == 0;
  
  if (c1 && c2 && c3 && c4 && c5) {
    println("correct!");
  } else {
    println("incorrect");
  }
}