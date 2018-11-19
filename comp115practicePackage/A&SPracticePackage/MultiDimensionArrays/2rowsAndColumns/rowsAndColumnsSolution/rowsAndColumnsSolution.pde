/* 
 TASK 1
 create a multi-dimension array rows of size 6 
 with sub-arrays of size 4
 */
int[][] rows = new int [6][4];

/*
 TASK 2
 initialise the array such that each sub-array
 contains the same value within the sub-array, 
 but the value stored between the sub-arrays
 increas consecutively from 0. the output
 should match the screenshot if completed
 correctly.
 */
for (int i = 0; i < rows.length; i++) {
  for (int j = 0; j < rows[i].length; j++) {
    rows[i][j] = i;
  }
}

println();

/* 
 TASK 3
 create a multi-dimension array columns of size 6 
 with sub-arrays of size 4
 */
int[][] columns = new int [6][4];

/*
 TASK 4
 initialise the array such that the value 
 increases from 0 to 3 within each sub-array
 for all the sub-arrays. the output
 should match the screenshot if completed
 correctly.
 */
for (int i = 0; i < columns.length; i++) {
  for (int j = 0; j < columns[i].length; j++) {
    columns[i][j] = j;
  }
}


/* DO NOT MODIFY */
println("rows:");
for (int i = 0; i < rows.length; i++) {
  print("[");
  for (int j = 0; j < rows[i].length; j++) {
    if (j != (rows[i].length - 1))
      print(rows[i][j] + ", ");
    else
      print(rows[i][j]);
  }
  println("]");
}

println();

println("columns:");
for (int i = 0; i <columns.length; i++) {
  print("[");
  for (int j = 0; j < columns[i].length; j++) {
    if (j != (columns[i].length - 1))
      print(columns[i][j] + ", ");
    else
      print(columns[i][j]);
  }
  println("]");
}