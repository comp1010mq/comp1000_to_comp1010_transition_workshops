/*
 TASK 1
 define a function 'isPositive' that when passed one integer
 (call the parameter a), returns the boolean value true if 
 the int is positive (or 0) and the boolean value false if 
 the int is negative.
 
 if the function is implemented correcty, the screen will 
 be blue, if not the screen will be orange.
 */

boolean isPositive(int a) {
  return a >= 0;
  
  /*
  also correct:
  if (a >= 0) {
    return true;
  } else {
    return false;
  }
  */
}

void setup() {
  size(200, 200);
  if (isPositive(0) && isPositive(213) 
  && !isPositive(-1) && !isPositive(-1213)) {
    background(#86C7FF);
  } else {
    background(#FFAB0D);
  }
}