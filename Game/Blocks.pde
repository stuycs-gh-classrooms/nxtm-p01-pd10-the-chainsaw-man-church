class Blocks {
  boolean[][] cubes;
  Blocks() {
  }

  void display() {
    stroke(0);
    for (int r = 1; r < cubes.length(); r++) {
      for (int c = 1; c < cubes[r].length(); c++) {
        if (cubes[r][c]) {
          fill(255, 255, 255);
          rect(r*50, r*75, 50, 75, 5);
        } else {
          fill(0, 0, 0);
          rect(r*50, r*75, 50, 75);
        }
      }
    }
  }

  void resetsq(boolean[][] squares) {
    for (int r = 1; r < cubes.length(); r++) {
      for (int c = 1; c < cubes[r].length(); c++) {
        cubes[r][c] = true;
      }
    }
  }
