/*
TASK 1
define a function drawBorders which takes 3 parameters
(int margin, color c, int weight). the function shouldn't return 
anything, but draw a border on the screen when called. 
The border drawn should have margin pixels from all four sides of
the screen and the border. The stroke colour of the border should
be set to colour and and strokeWeight should be set to weight.
*/
void drawBorders(int margin, color c, int weight) {
  stroke(c);
  strokeWeight(weight);
  line(margin, margin, width-margin, margin); // top line
  line(margin, margin, margin, height-margin); // left line
  line(width-margin, margin, width-margin, height-margin); // right line
  line(margin, height-margin, width-margin, height-margin); // bottom line
}

void setup() {
  background(255);
  size(400, 300);
  
  /*
  TASK 2
  initialize a color variable c1 to #ED6729.
  call drawBorders with the parameters 15, c1 and 4.
  
  the output should match the picture in the question folder.
  */
  color c1 = #ED6729;
  drawBorders(17, c1, 4);
}