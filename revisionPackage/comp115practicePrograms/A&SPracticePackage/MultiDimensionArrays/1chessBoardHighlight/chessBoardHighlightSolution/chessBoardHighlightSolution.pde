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
3. Complete the highlightSquare(int posX, int posY) method below.
NOTE: Students should not need to alter the draw() and mousePressed()
functions.
TESTING: Student should test their answer with edge cases to make sure their
program is working as intended. This should include making sure each corner
of the chessboard is highlighted when clicked.
*/

/* SOLUTION */
final int WIDTH = 50;
int[][] chessboard = new int[8][8];

void setup(){
  size(400,400);
  noStroke();
  
  for(int i = 0; i < 8; i++){
    for (int j = 0; j < 8; j++){
      chessboard[i][j] = 0;
    }
  }
}

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

void highlightSquare(int posX, int posY){
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      if(chessboard[i][j] == 1)
        chessboard[i][j] = 0;
    }
  }
  chessboard[posX/WIDTH][posY/WIDTH] = 1;
}