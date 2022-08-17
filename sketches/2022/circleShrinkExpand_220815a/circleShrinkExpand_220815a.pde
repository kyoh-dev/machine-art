int DIAM = 10;
int COUNTER = 1;
float CENTX, CENTY;

void setup() {
  size(500, 500);
  smooth();
  background(180);
  CENTX = width/2;
  CENTY = height/2;
  stroke(0);
  strokeWeight(1);
  fill(255, 50);
}

void draw() {
  if (DIAM <= 400 && COUNTER > 0) {
    background(180, 2, 55);
    ellipse(CENTX, CENTY, DIAM, DIAM);
    DIAM += 5;
    COUNTER++;
    if (DIAM == 400) {
      COUNTER = 0;
    }
  } else if (COUNTER <= 0) {
    //background(180, 2, 55);
    ellipse(CENTX, CENTY, DIAM, DIAM);
    DIAM -= 5;
    COUNTER--;
    if (DIAM == 5) {
      COUNTER = 1;
    }
  }
}
