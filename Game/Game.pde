int Paddlewidth;
Paddle p0;
FakeBall f0;
Ball b0;
int Lives = 3;
int Rounds = 0;
int Rows = 5;

void setup() {
  size(1500, 800);
  Paddlewidth = 250;
  p0 = new Paddle();
  f0 = new FakeBall();
  f0.x = width/2;
  f0.y = height/2;
  f0.xspeed = 10;
  f0.yspeed = 10;
  b0 = new Ball();
  b0.x = width/2;
  b0.y = height/2;
  b0.xspeed = -10;
  b0.yspeed = 10;

}

void draw()
{
  background(0);

  p0.display(Paddlewidth);
  paddlecheck();
  f0.display();
  f0.move();
  b0.display();
  b0.move();
  
}

void paddlecheck() {
  int randomc = int(random(0, 2));
  if ((b0.y == 720) && (b0.x >= mouseX-Paddlewidth/2) && (b0.x <= mouseX+Paddlewidth/2)) {
    b0.yspeed *= -1;
    if (randomc == 0) {
      b0.xspeed*= -1;
    }
  }
  if ((b0.y == 690) && (b0.x >= mouseX-Paddlewidth/2) && (b0.x <= mouseX+Paddlewidth/2)) {
    b0.yspeed *= -1;
    if (randomc == 0) {
      b0.xspeed*= -1;
    }
  }
  if ((b0.y >= 690) && (b0.y <= 720) && (b0.x <= mouseX-Paddlewidth/2) && (b0.x >= mouseX-Paddlewidth/2-10)) {
    b0.yspeed *= -1;
  }
  if ((b0.y >= 690) && (b0.y <= 720) && (b0.x >= mouseX+Paddlewidth/2) && (b0.x <= mouseX+Paddlewidth/2+10)) {
    b0.yspeed *= -1;
  }
}

void linecheck() {
  if (b0.y == height-10) {
    Lives--;
  }
}

