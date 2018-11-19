final int FRAME_WIDTH = 10;
final int FRAME_MARGIN = 20;
final int DIAMETER = 80;

size(400, 300);
background(20, 155, 20);
strokeWeight(FRAME_WIDTH);
noFill();
stroke(255);
rect(FRAME_MARGIN, FRAME_MARGIN, width - 2*FRAME_MARGIN, height - 2*FRAME_MARGIN);
fill(240, 240, 80);
noStroke();
ellipse(width/2, height/2, DIAMETER, DIAMETER);
fill(0, 127);
stroke(200, 100, 0);
strokeWeight(2);
rectMode(CENTER);
rect(width/2, height/2, DIAMETER/2, 2*DIAMETER);
rect(width/2, height/2, 2*DIAMETER, DIAMETER/2);