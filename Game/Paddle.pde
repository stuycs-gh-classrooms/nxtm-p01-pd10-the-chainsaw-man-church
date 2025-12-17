class Paddle{
  int Paddlesize;
  int xcor;
 
  
  Paddle(){
  }
  
  void display(int Paddlesize){
    fill(255,255,255);
    rect(mouseX-Paddlesize/2, 700, Paddlesize, 10);
  }
}
