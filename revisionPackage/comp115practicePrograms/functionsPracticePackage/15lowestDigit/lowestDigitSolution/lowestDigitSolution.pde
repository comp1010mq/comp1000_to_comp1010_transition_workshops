/* 
TASK 1
define a function that when passed a integer parameter, returns
the lowest digit within that integer.
*/
int lowestDigit(int a) {
  int lowest = a%10; // last digit
  while (a > 0) {
    int digit = a%10;
    if (digit < lowest) {
      lowest = digit;
    }
    
    a /= 10;
  }
  
  return lowest;
}

void setup() {
  /*
  TASK 2
  initialize a variable c to 3046164.
  print the lowest digit of c using the lowestDigit function.
  
  once completed, '4' should be printed in the console.
  */
  int c = 7964946;
  println(lowestDigit(c));
}