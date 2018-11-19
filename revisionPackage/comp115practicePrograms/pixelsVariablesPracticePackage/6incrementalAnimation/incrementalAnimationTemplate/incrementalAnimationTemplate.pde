float previousPressX, previousPressY;
float thickness;

void setup() {
  size(400, 300);
  background(240, 240, 80);
}

void draw() {
}

//executes once every time you press the mouse
void mousePressed() {
  float dx = previousPressX - mouseX;
  float dy = previousPressY - mouseY;
  thickness = sqrt(dx*dx + dy*dy);
 
  /*
  map from range [0, 500] to rang [2, 10]
  so if it's 0, it becomes 2
  if it's 250, it becomes 6
  if it's 500 it becomes 10
  */
  thickness = map(thickness, 0, 500, 2, 10);
  strokeWeight(thickness);

  //TO BE COMPLETED
}