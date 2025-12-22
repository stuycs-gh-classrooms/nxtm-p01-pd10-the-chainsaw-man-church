class Blocks {
  boolean[][] cubes;
  int bounce = 0;
  int numsq;
  Blocks(int Rows) {
    cubes = new boolean[Rows][20];
    numsq = Rows*20;
  }



  void display() {
    stroke(0);
    for (int r = 0; r < cubes.length; r++) {
      for (int c = 0; c < cubes[r].length; c++) {
        if (cubes[r][c]) {
          fill(255, 255, 255);
          rect(c*75, r*50, 75, 50, 5);
        } else {
          fill(0, 0, 0);
          rect(c*75, r*50, 75, 50);
        }
      }
    }
  }

  void resetsq() {
    for (int r = 0; r < cubes.length; r++) {
      for (int c = 0; c < cubes[r].length; c++) {
        cubes[r][c] = true;
      }
    }
  }

  void check(int xcor, int ycor) {
    bounce = 0;
    for (int r = 0; r < cubes.length; r++) {
      for (int c = 0; c < cubes[r].length; c++) {
        if  (cubes[r][c]) {
          int left   = c * 75;
          int right  = (c + 1) * 75;
          int top    = r * 50;
          int bottom = (r + 1) * 50;
          if (xcor > left && xcor < right && (ycor >= top-10 && ycor <= bottom+10)) {
            bounce = 1;
            cubes[r][c] = false;
            numsq--;
            return;
          }
          if (ycor > top-10  && ycor < bottom+10 && (xcor >= left && xcor <= right)) {
            bounce = -1;
            cubes[r][c] = false;
            numsq--;
            return;
          }
        } 
      }
    }
  }
}
