int DIA = 30;
int buttonWidth = 60;
int buttonHeight = 40;
int offset = 10;

boolean blue = true;

void setup() {
  size(500, 500);
  background(255);
  fill(30, 145, 255); // set to blue
}

void draw() {
  rect(offset, offset, buttonWidth, buttonHeight); //draw button
}

void mouseClicked() {
  if (mouseX > offset && mouseX < offset + buttonWidth 
    && mouseY > offset && mouseY < offset + buttonHeight) { // if button pressed
    blue = !blue;
    
    // change fill colour
    if (blue) {
      fill(30, 145, 255);
    } else {
      fill(255, 140, 0);
    }
  } else {
    ellipse(mouseX, mouseY, DIA, DIA);
  }
}