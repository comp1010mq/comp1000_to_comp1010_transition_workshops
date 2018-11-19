/*
TASK 1
define a function highest that returns the highest integer out
of three integer parameters (a, b and c). note: the higher
function should be called within this function.
*/
int highest(int a, int b, int c) {
  int currentHighest = higher(a, b);
  return higher(currentHighest, c);
  
  /*
  also correct:
  b = higher(a, b);
  return highest(b, c);
  */
}

void setup() {
  /*
  TASK 2
  declare two variables f and g and initialize them to 23 and 20
  respectively.
  call the function with the f, g and 50 as the parameters and store
  the value returned in variable h.
  */
  
  int f = 23;
  int g = 20;
  
  int h = highest(f, g, 50);
  
  if (h == 50) {
    println("correct!");
  } else {
    println("incorrect");
  }
  
}

int higher(int a, int b) {
  if(a > b) {
    return a;
  }
  else {
    return b;
  }
}