/* DO NOT MODIFY SETUP */
void setup() {
  String str1 = "Introduction to Computer Programming (COMP115)";
  String str2 = "San Fransisco (s f) is a city in the United States (u s)";
  String str3 = "( i))(@)*F)G(e0g)}{(()@&( ";
  String str4 = "United Nations (un!)";
  
  println(extract(str1) + extract(str3) + extract(str2) + extract(str4));
}


/*
 TASK
 complete the function extract such that it returns a String which
 contains the contents inside the first bracket pair of String
 str. hint: use substring and indexOf
 
 complete task successfully to reveal secret message in the output.
 
 assume open and closed bracket exists in String passed
 assume no nested brackets in String passed. 
 
 examples:
 "Yesterday (Wednesday) I played tennis." -> "Wednesday"
 "Australia (aus) and New Zealand (nz) -> "aus"
 */
String extract(String str) {
  String  result = str.substring(str.indexOf('(') + 1, str.indexOf(')'));
  return result;
}