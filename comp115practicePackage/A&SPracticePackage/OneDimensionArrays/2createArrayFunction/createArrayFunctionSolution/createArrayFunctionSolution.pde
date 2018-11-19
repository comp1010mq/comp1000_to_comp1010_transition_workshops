/*
 this program has a function newArray to create and return
 a boolean array. the function newArray has parameters
 size and value. size is the size (length) of the array
 to be created and value is the value that all items
 of the array should be initialised to.
 
 run the program once done and the output should indicate
 if completed correctly or not.
 */
 
/* DO NOT MODIFY SETUP */
void setup() {
  checkProgram();
}

/* 
 FUNCTION TO BE COMPLETED BY STUDENT AS PER THE
 INSTRUCTIONS AT THE TOP OF THE PROGRAM
*/
boolean[] newArray (int size, boolean value) {
  boolean[] result = new boolean[size];

  for (int i = 0; i < result.length; i++) {
    result[i] = value;
  }

  return result;
}

/* DO NOT MODIFY */
void checkProgram() {
  boolean[] a1 = newArray(5, false);
  boolean[] a2 = newArray(1, true);
  boolean[] a3 = newArray(8, true);
  boolean[] a4 = newArray(35, false);
  
  boolean l1 = a1.length == 5;
  boolean l2 = a2.length == 1;
  boolean l3 = a3.length == 8;
  boolean l4 = a4.length == 35;
  
  boolean v1 = true;
  for (int i = 0; i < a1.length; i++)
    if(a1[i]) v1 = false;
    
  boolean v2 = true;
  for (int i = 0; i < a2.length; i++)
    if(!a2[i]) v2 = false;
    
  boolean v3 = true;
  for (int i = 0; i < a3.length; i++)
    if(!a3[i]) v3 = false;
    
  boolean v4 = true;
  for (int i = 0; i < a4.length; i++)
    if(a4[i]) v4 = false;
  
  if (l1 && l2 && l3 && l4) {
    if (v1 && v2 && v3 && v4) {
      println("correct!");
    } else {
      println("incorrect. arrays aren't initialised correctly.");
    }
  } else {
    println("incorrect. arrays created with wrong size.");
  }
}