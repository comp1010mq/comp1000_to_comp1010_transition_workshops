// assume square display
size(500, 500);
background(255);

for (int i = 0; i <= width; i+=10) {
  // lines from top left corner
  stroke(255, 0, 0);
  line(0, 0, i, height);
  
  // lines from bottom left corner
  stroke(255, 200, 0);
  line(0, height, width, height-i);
  
  // lines from bottom right corner
  stroke(0, 255, 0);
  line(width, height, width - i, 0);
  
  // lines from top right corner
  stroke(0, 0, 255);
  line(width, 0, 0, i);
}