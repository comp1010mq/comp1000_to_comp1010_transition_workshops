size(250, 300);
background(255);

int i = 0;
for (float y = 0; y < height; y+=height/10.0) {
  
  // draw line
  if (i%2 == 0) { // even line
    line(width/2, y, width, y);
  } else { // odd line
    line(width/2, y, 0, y);
  }
  
  // increase line count
  i = i + 1;
}