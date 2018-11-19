float xBlueBall, yBlueBall = -100;
float xRedBall, yRedBall = -100; 
float xGreenBall, yGreenBall = -100;
float xYellowBall, yYellowBall = -100; 
final float DIA = 30;

void setup() {
  size(300, 500);
  background(255);
}

void draw() {
  background(255);
  noStroke();

  fill(0, 0, 255);
  ellipse(xBlueBall, yBlueBall, DIA, DIA);
  xBlueBall = xBlueBall + 1;

  fill(255, 0, 0);
  ellipse(xRedBall, yRedBall, DIA, DIA);
  yRedBall = yRedBall - 1;

  fill(0, 255, 0);
  ellipse(xGreenBall, yGreenBall, DIA, DIA);
  yGreenBall = yGreenBall + 1;

  fill(240, 240, 80);
  ellipse(xYellowBall, yYellowBall, DIA, DIA);
  xYellowBall = xYellowBall - 1;
}

void mousePressed() {
  xBlueBall = mouseX;
  yBlueBall = mouseY;

  xRedBall = mouseX;
  yRedBall = mouseY;

  xGreenBall = mouseX;
  yGreenBall = mouseY;

  xYellowBall = mouseX;
  yYellowBall = mouseY;
}