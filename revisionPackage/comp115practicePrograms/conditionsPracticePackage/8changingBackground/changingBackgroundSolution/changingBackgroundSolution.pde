boolean fading = true;

int r = 0, g = 0, b = 0;

void setup() {
  size(400, 300);
  background(255);
}

void draw() {
  background(r, g, b);
  if (fading) {
    if (r < 255) {
      r++;
    } else {
      if (g < 255) {
        g++;
      } else {
        if (b < 255) {
          b++;
        } else {
          fading = false;
        }
      }
    }
  } else {
    if (b > 0) {
      b--;
    } else {
      if (g > 0) {
        g--;
      } else {
        if (r > 0) {
          r--;
        } else {
          fading = true;
        }
      }
    }
  }
}