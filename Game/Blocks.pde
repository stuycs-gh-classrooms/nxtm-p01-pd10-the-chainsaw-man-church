class Blocks {
  boolean[][] cubes
  int Row;
  Blocks(int numrows) {
    Row = numrows
  }
  
  void display(){
    stroke(0);
    for (int r = 1; r < cubes.length(); r++){
      for (int c = 1; c < cubes[r].length(); c++){
        if (cubes[r][c]) {
          fill(255,255,255);
          rect(r*50,
