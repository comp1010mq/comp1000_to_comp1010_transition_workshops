/*
TASK
define a function drawBorders that takes 2 integer parameters marginWidth
and marginHeight. The function should not return anything, but draw a
border on the screen when called. The border drawn should have 
marginWidth pixels between both sides of the screen and the border 
and marginHeight pixels between the top of the screen and border as well
as the bottom of the screen and the border.

once completed, your output should match the picture provided in the
question folder.
*/

void setup() {
  background(255);
  size(400, 300);
  drawBorders(5, 15);
}