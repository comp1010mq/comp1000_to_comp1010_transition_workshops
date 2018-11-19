float x1, y1, x2, y2;
float spdX1, spdY1, spdX2, spdY2;
float dia = 50;

void setup() {
  size(300, 300);
  
  /*
  x1, y1, x2, y2 are randomized in a way
  that the entire ball is within the screen
  */
  
  x1 = random(dia/2, width - dia/2);
  y1 = random(dia/2, height - dia/2);
  x2 = random(dia/2, width - dia/2);
  y2 = random(dia/2, height - dia/2);

  spdX1 = random(1, 3); //initialize it to be positive
  
  if (random(1) < 0.5) //with a 50% probablity
    spdX1*=-1; //make it negative
    
  /*
  i don't initialize speed to be random(-3, 3) because
  with a small probablity, it can be 0 or a very very
  small value like 0.001, which would make the ball 
  be very slow/ still
  */

  //similarly the others
  spdY1 = random(1, 3);
  if (random(1) < 0.5)
    spdY1*=-1;

  spdX2 = random(1, 3);
  if (random(1) < 0.5)
    spdX2*=-1;

  spdY2 = random(1, 3);
  if (random(1) < 0.5)
    spdY2*=-1;
}

void draw() {
  background(0);
  noStroke();
  
  //draw the balls
  fill(255, 0, 0);
  ellipse(x1, y1, dia, dia);
  fill(240, 240, 80);
  ellipse(x2, y2, dia, dia);
  
  //update locations
  x1+=spdX1;
  y1+=spdY1;
  x2+=spdX2;
  y2+=spdY2;
  
  if(x1 <= dia/2 || x1 >= width - dia/2) 
    spdX1*=-1;
  if(y1 <= dia/2 || y1 >= height - dia/2) 
    spdY1*=-1;
  if(x2 <= dia/2 || x2 >= width - dia/2) 
    spdX2*=-1;
  if(y2 <= dia/2 || y2 >= height - dia/2) 
    spdY2*=-1;
    
}