/*
This program should draw a chessboard.
The chessboard should be represented by a 2-D integer array
of size 8 x 8.
The aim of this exercise is for student to gain experience using
2-D arrays to represent a visual image.
The students need to complete a number of stages.
1. Declare an appropriate variable to hold the chessboard according
to the information provided above.
2. The chessboard should be initialised with values = 0;
3. Complete the highlightSquare(int posX, int posY) method described below.
NOTE: Students should not need to alter the draw() and mousePressed()
functions.
TESTING: Student should test their answer with edge cases to make sure their
program is working as intended. This should include making sure each corner
of the chessboard is highlighted when clicked.
*/

/* STUDENTS TO FILL OUT */
final int WIDTH = 50;
// 1. Declare an appropriate variable called chessboard to hold the chessboard as described above

void setup(){
  size(400,400);
  noStroke();
  
  // 2. Initialize each element in the chessboard with a value of 0.
}

/* ----- DO NOT MODIFY DRAW() OR MOUSEPRESSED() ----- */
void draw(){
  background(255);
  for(int i = 0; i < 8; i++){
    for (int j = 0; j < 8; j++){
      if (chessboard[i][j] == 1)
        fill(0, 255, 0);
      else if ((i + j) % 2 == 0)
        fill(255);
      else
        fill(0);
      rect(i * WIDTH,j * WIDTH, WIDTH, WIDTH);
    }
  }
}

void mousePressed(){
  highlightSquare(mouseX, mouseY);
}

/*
The highlightSquare(int posX, int posY) method is used to highlight the correct square when clicked.
It takes in the mouse position x and y as parameters, the location of the mouse on the screen.
A highlighted square will be represented with a value of 1, as seen in the draw function, so this
method needs to translate the mouse co-ordinates into an element in chessboard and set the value to 1.
Only one square should be highlighted at a time, if multiple are highlighted, try thinking about how
a highlighted square and non-highlighted square are represented in our chessboard variable, you might need
to reset some squares back to 0 ;)
*/
void highlightSquare(int posX, int posY){
}