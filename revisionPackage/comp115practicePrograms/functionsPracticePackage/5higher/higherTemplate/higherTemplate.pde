int higher(int a, int b) {
  if(a > b) {
    return a;
  }
  else {
    return b;
  }
  
  /*
  also good:
  if(a > b) {
    return a;
  }
  return b;
  */
  
  /*
  also good:
  
  return a > b ? a : b;
  */
}

void setup() {
  /*
  declare two variables x and y and initialize them to
  8 and 5 respectively. 
  call the function higher to compute the higher of x and y,
  and store the value returned in variable c.
  */
  
  if (x == 8 && y == 5 && c == 8) {
    println("correct");
  } else {
    println("incorrect");
  }
}