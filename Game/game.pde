int Paddlewidth;
Paddle p0;

void setup() {
  size(1000, 800);
  Paddlewidth = 250;
  p0 = new Paddle();
}

void draw()
{
  background(0);
  p0.display();
}
