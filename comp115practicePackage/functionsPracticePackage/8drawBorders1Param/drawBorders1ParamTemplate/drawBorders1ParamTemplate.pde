void drawBorders(int margin) {
  line(margin, margin, width-margin, margin); // top line
  line(margin, margin, margin, height-margin); // left line
  line(width-margin, margin, width-margin, height-margin); // right line
  line(margin, height-margin, width-margin, height-margin); // bottom line
}

void setup() {
  background(255);
  size(400, 300);
}

void draw() {
}

void mouseClicked() {
  /*
  TASK
  call the drawBorders function such that it draws a border with
  margin at mouseY when mouseY is less than height/2 and margin at
  height-mouseY when mouseY is greater than or equal to height/2.
  */
}