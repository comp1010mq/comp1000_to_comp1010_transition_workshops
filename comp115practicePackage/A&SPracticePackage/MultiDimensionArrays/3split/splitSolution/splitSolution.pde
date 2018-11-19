/* DO NOT MODIFY SETUP */
void setup() {
  int[] single = new int[6];
  for (int i = 0; i < single.length; i++) {
    single[i] = (int)random(1000);
  }
  int split = (int)random(1, 4);
  int[][] multi = split(single, split);
  
  printArrays(single, split, multi);
}

/*
 TASK
 complete the function split so that when given an int
 array arr and an int splitNum, it divides the array into
 a multi-dimension array with sub-arrays of splitNum
 size chunks. assume splitNum is a divisor of the
 length of arr.
 
 examples:
 {3, 23, 9, 493, 123, 45}, 2 -> {{3, 23}, {9, 493}, {123, 45}}
 {54, 145, 0}, 1 -> {{54}, {145}, {0}}
 {5, 2, 8, 2, 7, 9}, 3, {{5, 2, 8}, {2, 7, 9}}
*/
int[][] split(int[] arr, int splitNum) {
  int[][] result = new int[arr.length/splitNum][splitNum];

  for (int i = 0; i < result.length; i++) {
    for (int j = 0; j < result[i].length; j++) {
      result[i][j] = arr[i*result[i].length + j];
    }
  }

  /* alternate solution
  int count = 0;
  for (int i = 0; i < result.length; i++) {
    for (int j = 0; j < result[i].length; j++) {
      result[i][j] = arr[count];
      count++;
    }
  }
  */
  return result;
}

/* DO NOT MODIFY */
void printArrays(int[] a1, int split, int[][] a2) {
    print("single-dimension array: [");
  for (int i = 0; i < a1.length -1; i++) {
    print(a1[i] + ", ");
  }
  println(a1[a1.length - 1] +"]");
  
  println("splitNum: " + split);
  
  print("multi-dimension array: [");
  for (int i = 0; i < a2.length; i++) {
    print("[");
    for (int j = 0; j < a2[i].length; j++) {
      print(a2[i][j]);
      if (j != a2[i].length - 1) print(", ");
    }
    print("]");
    if (i != a2.length - 1) print(", ");
  }
  println("]");
}