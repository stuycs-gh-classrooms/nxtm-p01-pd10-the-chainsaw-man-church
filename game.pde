int timesec = 0;
int timemin = 0;
int score = 0;
int rounds = 1;



void setup() {
  background(0);
  size(1000, 800);
  starc(500);
  frameRate(60);
}


void starc(int count) {
  int xcor = int(random(0, width));
  int ycor = int(random(0, height));
  for (int i = 0; i < count; i++) {
    star(xcor, ycor, 6, 3, 5);
    xcor = int(random(0, width));
    ycor = int(random(0, height));
  }
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}//https://processing.org/examples/star.html//

void timeupdate() {
  if ((frameCount % 60) == 0) {
    timesec ++;
  }
  if (timesec == 60) {
    timemin ++;
    timesec = 0;
  }
}
