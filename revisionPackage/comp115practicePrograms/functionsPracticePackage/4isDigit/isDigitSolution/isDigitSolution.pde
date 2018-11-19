/*
TASK 1
define a function isDigit that when passed a char, returns true
if the character is a digit and false otherwise.
some parameter-return value mappings:
'a' -> false
'0' -> true
'7' -> true
';' -> false
*/

boolean isDigit(char a) {
  return a >= '0' && a <= '9';
  
  /*
  also correct:
  return a >= 48 && a <= 57
  */
  
  /*
  also correct:
  if (a >= '0' && a <= '9') {
    return true;
  } else {
    return false;
  }
  */
}

void setup() {
  /*
  TASK 2 
  compute whether the character '8' is a digit and store it
  in a boolean variable j.
  
  compute whether the character '9' is a digit and store it
  in a boolean variable k.
  
  compute whether the character '!' is a digit and store it
  in a boolean variable l.
  
  compute whether the character 'w' is a digit and store it
  in a boolean variable m.
  
  compute whether the character '0' is a digit and store it
  in a boolean variable n.
  
  once completed, run your program and check the console
  to see whether you have successfully completed both tasks.
  */
  
  boolean j = isDigit('8');
  boolean k = isDigit('9');
  boolean l = isDigit('!');
  boolean m = isDigit('w');
  boolean n = isDigit('0');
  
  if (j && k && !l && !m && n) {
    println("Congratulations! You have completed the tasks correctly.");
  } else {
    println("Something is wrong, try again.");
  }
  
  
}