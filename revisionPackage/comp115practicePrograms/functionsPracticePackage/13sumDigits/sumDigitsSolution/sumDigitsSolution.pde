/*
TASK 1
define a function that when passed an integer, returns an the sum
of all the digits in the integer.
*/
int sumDigits(int a) {
  int result = 0;
  while (a > 0) {
    int digit = a%10; // last digit
    result += digit;
    
    a /= 10;
  }
  
  return result;
}

void setup() {
  /*
  TASK 2
  using the sumDigits function, calculate the sum of the digits
  in the integer 97284962. store the result in a variable g.
  
  once completed, run the program and check the console to
  see if you are correct.
  */
  int g = sumDigits(97284962);
  
  if (g == 47) {
    println("correct!");
  } else {
    println("wrong");
  }
}