/* DO NOT MODIFY SETUP */
void setup() {
  checkProgram();
}

/*
TASK
complete the function halfArray so that it returns
a new array with every second item from the array
passed. for example, if the array passed had length 5,
the array returned would be of size 2 containing
the items of index 1 and 3 of the original array.
likewise if the array passed had length 6,
the array returned would be of size 3 containing
the items of index 1, 3 and 5 of the original array.

examples:
{4, 8, 1} -> {8}
{23, 85, 1, 678, 2, 45, 853} -> {85, 678, 45}
{87, 23, 25, 10} -> {23, 10}

check output to see if program is correct.
*/
int[] halfArray (int[] full) {
  int[] result = new int[full.length/2];
  for (int i = 0; i < result.length; i++) {
    result[i] = full[(i*2)+1];
  }
  
  return result;
}

/* DO NOT MODIFY */
boolean compareArrays(int[] a, int[] b) {
  if (a.length != b.length)
    return false;
  
  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i])
      return false;
  }
  
  return true;
}

void checkProgram() {
  int[] a1 = {0, 1, 2, 3, 4, 5, 6, 7};
  int[] b1  = halfArray(a1);
  boolean l1 = b1.length == 4;
  int[] r1 = {1, 3, 5, 7};
  boolean c1 = compareArrays(b1, r1);
  
  int[] a2 = {0};
  int[] b2  = halfArray(a2);
  boolean l2 = b2.length == 0;
  int[] r2 = {};
  boolean c2 = compareArrays(b2, r2);
  
  int[] a3 = {4, 8, 1};
  int[] b3  = halfArray(a3);
  boolean l3 = b3.length == 1;
  int[] r3 = {8};
  boolean c3 = compareArrays(b3, r3);
  
  int[] a4 = {23, 85, 1, 678, 2, 45, 853};
  int[] b4  = halfArray(a4);
  boolean l4 = b4.length == 3;
  int[] r4 = {85, 678, 45};
  boolean c4 = compareArrays(b4, r4);
  
  int[] a5 = {87, 23, 25, 10};
  int[] b5  = halfArray(a5);
  boolean l5 = b5.length == 2;
  int[] r5 = {23, 10};
  boolean c5 = compareArrays(b5, r5);
  
  
  if (l1 && l2 && l3 && l4 && l5) {
    if (c1 && c2 && c3 && c4 && c5) {
      println("correct!");
    } else {
      println("incorrect. arrays' contents aren't correct");
    }
  } else {
    println("incorrect. arrays' lengths aren't correct");
  }
}