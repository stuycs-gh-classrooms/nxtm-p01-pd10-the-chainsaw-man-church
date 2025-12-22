int Paddlewidth;
Paddle p0;
FakeBall f0;
Ball b0;
int Lives = 3;
int Rounds = 1;
int Rows = 3;
Blocks blocks;
int Speed = 5;
boolean moving = true;

void setup() {
  size(1500, 800);
  Paddlewidth = 250;
  p0 = new Paddle();
  f0 = new FakeBall();
  f0.x = int(random(10, width-10));
  f0.y = height/2;
  f0.xspeed = Speed;
  f0.yspeed = Speed;
  b0 = new Ball();
  b0.x = int(random(10, width-10));
  b0.y = height/2;
  b0.xspeed = -Speed;
  b0.yspeed = Speed;
  blocks = new Blocks(Rows);
  blocks.resetsq();
}

void draw()
{
  background(0);
  scorecheck();
  linecheck();
  newround();
  displayscores();
  p0.display(Paddlewidth);
  paddlecheck();
  blocks.check(b0.x, b0.y);
  blockcheck(blocks.bounce);
  blocks.display();
  f0.display();
  b0.display();
  if (moving) {
    f0.move();
    b0.move();
  }
}

void paddlecheck() {
  int randomc = int(random(0, 2));
  if (b0.x > mouseX-Paddlewidth/2 && b0.x < mouseX+Paddlewidth/2) {
    if (b0.y >= 690 && b0.y <= 715) {
      b0.yspeed = -b0.yspeed;
      if (randomc == 0) {
        b0.xspeed = int(random(Speed-2, Speed+2));
        randomc = int(random(0, 2));
      } else {
        b0.xspeed = int(random(-Speed-2, -Speed+2));
        randomc = int(random(0, 2));
      }
    }
  }
}

void linecheck() {
  if (b0.y == height-10) {
    Lives--;
  }
}

void blockcheck(int direction) {
  if (direction == 1) {
    b0.yspeed = -b0.yspeed;
  }
  if (direction == -1) {
    b0.xspeed = -b0.xspeed;
  }
}

void newround() {
  if (blocks.numsq == 0) {
    if (Rounds % 3 == 0) {
      Rows++;
      Speed++;
    }
    if (Rounds % 3 == 0 && Paddlewidth > 10) {
      Paddlewidth =- 10;
    }
    Lives++;
    Rounds++;
    f0.x = int(random(10, width-10));
    f0.y = height/2;
    f0.xspeed = Speed;
    f0.yspeed = Speed;
    b0 = new Ball();
    b0.x = int(random(10, width-10));
    b0.y = height/2;
    b0.xspeed = -Speed;
    b0.yspeed = Speed;
    blocks = new Blocks(Rows);
    blocks.resetsq();
  }
}

void scorecheck() {
  if (Lives <= 0) {
    textSize(250);
    textAlign(CENTER, CENTER);
    fill(255, 0, 0);
    text("GAME OVER", 750, 400);
    b0.xspeed = 0;
    b0.yspeed = 0;
  }
}

void keyPressed()
{
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'r') {
    f0.x = int(random(10, width-10));
    f0.y = height/2;
    f0.xspeed = Speed;
    f0.yspeed = Speed;
    b0 = new Ball();
    b0.x = int(random(10, width-10));
    b0.y = height/2;
    b0.xspeed = -Speed;
    b0.yspeed = Speed;
    blocks = new Blocks(Rows);
    blocks.resetsq();
    Lives = 3;
    Rounds = 1;
    Rows = 3;
    Speed = 5;
  }
}

void displayscores() {
  fill(0, 255, 0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Lives:"+Lives, 750, 740);
  text("Rounds:"+Rounds, 750, 775);
}
