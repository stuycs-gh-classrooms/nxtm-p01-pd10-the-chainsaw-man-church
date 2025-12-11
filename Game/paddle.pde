class Paddle{
  int Paddlesize;
  int xcor;
 
  
  Paddle(){
    Paddlewidth = Paddlesize;
  }
  
  void display(){
    fill(255,255,255);
    rect(mouseX, 700, 250, 25);
  }
}