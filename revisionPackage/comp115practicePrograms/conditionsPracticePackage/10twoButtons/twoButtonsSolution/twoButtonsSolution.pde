int DIA = 30;
int buttonWidth = 60;
int buttonHeight = 40;
int offset = 10; // number of pixels between border and button

boolean blue = true;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  //draw colour changebutton
  if (blue) {
    fill(30, 145, 255);
  } else {
    fill(255, 140, 0);
  }
  rect(offset, offset, buttonWidth, buttonHeight);

  // draw clear button
  fill(255);
  rect(width - (offset + buttonWidth), offset, buttonWidth, buttonHeight);
}

void mouseClicked() {
  if (mouseX > offset && mouseX < offset + buttonWidth 
    && mouseY > offset && mouseY < offset + buttonHeight) { // colour change button pressed
    blue = !blue;
  } else if (mouseX > width - (offset + buttonWidth) && mouseX < width - offset 
    && mouseY > offset && mouseY < offset + buttonHeight) { // clear button pressed
    background(255);
  } else {
    // draw circle
    if (blue) {
      fill(30, 145, 255);
    } else {
      fill(255, 140, 0);
    }
    ellipse(mouseX, mouseY, DIA, DIA);
  }
}