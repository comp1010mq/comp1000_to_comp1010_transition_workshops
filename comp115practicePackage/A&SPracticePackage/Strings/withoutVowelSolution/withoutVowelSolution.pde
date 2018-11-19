/*
The purpose of this exercise is to write a function that takes a String and
return a new String with all vowels removed, whether it is lowercase or
uppercase. For example the string "abcIwoQu" will become "bcwQ"
Fill out the function stringWithoutVowels. You can declare helper functions
to assist you
*/

char[] vowels = {'a', 'e', 'i', 'o', 'u'};

String s = "KaeiTyoUB";

void setup() {
 String sWithoutVowels =  stringWithoutVowels(s);
 println(sWithoutVowels); //KTyB
}


// Return a new string that remove all the vowels in the String str
// Ensure your function works whether str contains a mix of uppercase
// and lowercase characters and digits
String stringWithoutVowels(String str) {
  // First convert all character in str to lowercase and store it into
  // a new String
  String strInLowerCase = str.toLowerCase();
  //str = str.toLowerCase();
  // Declare a new String variable to hold new string without vowels
  String s = "";
  // Loop through the string
  for(int i = 0; i < strInLowerCase.length(); i++){
   
   char cInLowerCase = strInLowerCase.charAt(i);
   char c = str.charAt(i);
   // Compare the lowercase c and if the character is not a
   // vowel then concatenate it onto s
   if(notAVowel(cInLowerCase))
     s += c;
  }
  // Return the new string without vowels
  return s;
}

// Helper function that determines whether c is a lowercase vowel or not
boolean notAVowel(char c) {
  for(int i = 0; i < vowels.length; i++){
   if(c == vowels[i])
     return false;
  }
  return true;
}