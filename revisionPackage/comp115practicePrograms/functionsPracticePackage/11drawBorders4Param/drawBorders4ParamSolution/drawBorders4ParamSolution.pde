/*
TASK 1
define a function drawBorders which takes 4 parameters
(int marginWidth, int marginHeight, color c, int weight. the 
function shouldn't return anything, but draw a border on the 
screen when called. The border drawn should have marginWidth 
pixels between left and right sides of the screen and the 
border and marginHeight pixels between the top and bottom 
edges of the screen and the border. The stroke colour of the 
border should be set to colour and and strokeWeight should be 
set to weight.
*/
void drawBorders(int marginWidth, int marginHeight, int colour, int weight) {
  stroke(colour);
  strokeWeight(weight);
  line(marginWidth, marginHeight, width-marginWidth, marginHeight); // top line
  line(marginWidth, marginHeight, marginWidth, height-marginHeight); // left line
  line(width-marginWidth, marginHeight, width-marginWidth, height-marginHeight); // right line
  line(marginWidth, height-marginHeight, width-marginWidth, height-marginHeight); // bottom line
}

void setup() {
  background(255);
  size(400, 300);
}

void draw() {
}

void keyPressed() {
  /*
  TASK 2
  draw a border on the screen when the key is pressed using the drawBorders
  function. the border should be 8 pixels from the top and bottom of the screen,
  17 pixels from the left and right side of the screen, pink in colour and 
  have a stroke weight of 3.
  
  your output should match the picture in the question folder.
  */
  drawBorders(17, 8, #F55EEB, 3);
}