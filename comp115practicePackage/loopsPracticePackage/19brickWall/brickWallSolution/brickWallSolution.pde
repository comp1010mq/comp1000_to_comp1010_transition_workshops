int brickWidth = 34;
int brickHeight = 15;

size(500, 500);
background(153, 76, 0);
stroke(255);

for (int i = 0; i<=height; i+=brickHeight) {
  // draw horizontal lines
  line(0, i, width, i);
  
  // draw vertical lines
  if (i%(brickHeight*2) == 0) { // 'a' row
    for (int a = 0; a<=width; a+=brickWidth) {
      line(a, i, a, i+brickHeight); //vertical lines on 'a' row
    }
  } else { // 'b' row
    for (int b = brickWidth/2; b<=width; b+=brickWidth) {
      line(b, i, b, i+brickHeight); //vertical lines on 'b' row
    }
  }
}