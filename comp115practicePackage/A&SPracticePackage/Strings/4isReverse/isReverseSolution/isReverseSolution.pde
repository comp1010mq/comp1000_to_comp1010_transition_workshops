/* DO NOT MODIFY SETUP */
void setup() {
  checkFunction(); 
}

/*
 TASK
 complete the isReverse function which takes in two
 Strings a and b and returns true if the two Strings
 are identical reverses of each other and false if
 otherwise.
 
 examples:
 "abc", "cba" -> true
 "abc", "cbaa" -> false
 "7", "7" -> true
 */
boolean isReverse(String a, String b) {
  // check length is equal for both strings
  if (a.length() != b.length()) {
    return false;
  }

  // check indexes
  for (int i = 0; i < a.length(); i++) {
    if (a.charAt(i) != b.charAt((b.length() - 1) - i)) {
      return false;
    }
  }

  return true;
}

/* DO NOT MODIFY */
void checkFunction() {
  String s1 = "racecar";
  String s2 = "abcdefg";
  String s3 = "gfedcba";
  String s4 = "gfeecba";
  String s5 = "gfedcbaa";
  String s6 = "abcdefgh";
  String s7 = "- ";
  String s8 = " -";
  
  boolean b1 = isReverse(s1, s1) == true;
  boolean b2 = isReverse(s1, s2) == false;
  boolean b3 = isReverse(s2, s3) == true;
  boolean b4 = isReverse(s2, s4) == false;
  boolean b5 = isReverse(s2, s5) == false;
  boolean b6 = isReverse(s3, s6) == false;
  boolean b7 = isReverse(s7, s8) == true;
  
  if (b1 && b2 && b3 && b4 && b5 && b6 && b7) {
    println("correct!");
  } else {
    if (!b5) {
      println("incorrect. did you check both strings were of same length?");
    } else {
      println("incorrect");
    }
  }
}