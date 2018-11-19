final float DIA = 30;
float x1, x2;
boolean redInFront = false;

void setup() {
  size(300,300);
  background(0);
  x1 = width/2-DIA;
  x2 = width/2+DIA;
}

void draw() {
  background(0);
  noStroke();
  if(redInFront == true) {
    //blue ball
    fill(0,0,255);
    ellipse(x2, height/2, DIA, DIA);
    x1 = x1 - 1; //blue ball moves left
    
    //red ball
    fill(255,0,0);
    ellipse(x1, height/2, DIA, DIA);
    x2 = x2 + 1; //red ball moves right
  }
  else {
    fill(255,0,0);
    ellipse(x1, height/2, DIA, DIA);
    x1 = x1 + 1;
    
    fill(0,0,255);
    ellipse(x2, height/2, DIA, DIA);
    x2 = x2 - 1;
  }
  if(abs(x1 - width/2) > DIA) { //if you reach the extreme
    redInFront = !redInFront;
  }
}