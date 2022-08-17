void setup() {
  size(displayWidth, displayHeight);
  background(125, 192, 200);
  strokeWeight(random(0, 10));
  smooth();
  frameRate(10);
}

void draw() {
  int[] colours = {round(random(0, 100)), round(random(0, 255)), round(random(0, 255))};
  stroke(colours[0], colours[1], colours[2]);
  int step = 10;
  float lastx = -999;
  float lasty = -999;
  float y = 50;
  int borderx=20;
  int bordery=10;
  for (int x=borderx; x<=width-borderx; x+=step) {
    y = bordery + random(height - 2*bordery);
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
  }
}
