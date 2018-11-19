/*
TASK
define a function drawBorders that takes 2 integer parameters marginWidth
and marginHeight. The function should not return anything, but draw a
border on the screen when called. The border drawn should have 
marginWidth pixels between left and right sides of the screen and the 
border and marginHeight pixels between the top and bottom edges of 
the screen and the border.

once completed, your output should match the picture provided in the
question folder.
*/
void drawBorders(int marginWidth, int marginHeight) {
  line(marginWidth, marginHeight, width-marginWidth, marginHeight); // top line
  line(marginWidth, marginHeight, marginWidth, height-marginHeight); // left line
  line(width-marginWidth, marginHeight, width-marginWidth, height-marginHeight); // right line
  line(marginWidth, height-marginHeight, width-marginWidth, height-marginHeight); // bottom line
}

void setup() {
  background(255);
  size(400, 300);
  drawBorders(5, 15);
}