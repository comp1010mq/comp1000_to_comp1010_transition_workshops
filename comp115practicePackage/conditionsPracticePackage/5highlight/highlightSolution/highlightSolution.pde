void setup() {
  size(600, 500);
  background(255);
  fill(0, 0, 255);
}

void draw() {
  background(255);
  
  // draw highlight
  noStroke();
  fill(105,90,205);
  if (mouseX < width/4) {
    rect(0, 0, width/4, height);
  } else if (mouseX < width/2) {
    rect(width/4, 0, width/4, height);
  } else if (mouseX < (3*width)/4) {
    rect(width/2, 0, width/4, height);
  } else {
    rect((3*width)/4, 0, width/4, height);
  }
  
  // draw boarders
  strokeWeight(2);
  stroke(0);
  line (width/4, 0, width/4, height);
  line (width/2, 0, width/2, height);
  line((3*width)/4, 0, (3*width)/4, height);
}