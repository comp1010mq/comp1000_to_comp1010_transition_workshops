final float HEAD_SIZE = 40;

void setup() {
  size(400, 300);
  background(0);
}

void draw() {
  background(0);
  stroke(255);
  fill(0);
  
  //torso
  line(mouseX - HEAD_SIZE, mouseY - HEAD_SIZE, mouseX - HEAD_SIZE, mouseY + 0.5*HEAD_SIZE);
  
  //legs
  line(mouseX - HEAD_SIZE, mouseY + 0.5*HEAD_SIZE, mouseX - 1.5*HEAD_SIZE, mouseY + HEAD_SIZE);  
  line(mouseX - HEAD_SIZE, mouseY - HEAD_SIZE + 1.5*HEAD_SIZE, mouseX - HEAD_SIZE + 0.5*HEAD_SIZE, mouseY - HEAD_SIZE+2*HEAD_SIZE);
  
  //hands
  line(mouseX - HEAD_SIZE, mouseY - HEAD_SIZE + HEAD_SIZE, mouseX - HEAD_SIZE - HEAD_SIZE, mouseY - HEAD_SIZE+0.5*HEAD_SIZE);
  line(mouseX - HEAD_SIZE, mouseY - HEAD_SIZE + HEAD_SIZE, mouseX - HEAD_SIZE + HEAD_SIZE, mouseY - HEAD_SIZE+0.5*HEAD_SIZE);
  
  //head
  ellipse(mouseX - HEAD_SIZE, mouseY - HEAD_SIZE, HEAD_SIZE, HEAD_SIZE);
  
  //eyes
  fill(255);
  ellipse(mouseX - HEAD_SIZE - 0.25*HEAD_SIZE, mouseY - HEAD_SIZE - 0.15*HEAD_SIZE, 5, 5);
  ellipse(mouseX - HEAD_SIZE + 0.25*HEAD_SIZE, mouseY - HEAD_SIZE - 0.15*HEAD_SIZE, 5, 5);
  
  //nose
  line(mouseX - HEAD_SIZE, mouseY - HEAD_SIZE - 0.1*HEAD_SIZE, mouseX - HEAD_SIZE, mouseY - HEAD_SIZE + 0.1*HEAD_SIZE);
  
  //mouth
  line(mouseX - 1.1*HEAD_SIZE, mouseY - 0.8*HEAD_SIZE, mouseX - 0.9*HEAD_SIZE, mouseY - 0.8*HEAD_SIZE);
}