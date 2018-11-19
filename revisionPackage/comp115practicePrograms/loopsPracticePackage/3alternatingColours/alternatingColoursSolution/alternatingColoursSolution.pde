size(250, 300);
background(255);

int i = 0;
for (float x = 0; x < width; x+=width/10.0) {
  // change line colour
  if (i%2 == 0) { // even line
    stroke(255, 0, 0);
  } else { // odd line
    stroke(0, 0, 255);
  }
  
  // draw line
  line(x, 0, x, height);
  
  // increase line count
  i = i + 1;
}