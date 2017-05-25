class Level {

  Square[][] squares;
  PImage levelBackground;
  int squaresHigh, squaresWide, cellSize;


  Level(String fileToLoad) {


    //load level data
    String lines[] = loadStrings(fileToLoad);

    squaresHigh = lines.length;
    squaresWide = lines[0].length();

     cellSize = width/squaresWide;




    squares= new Square[squaresWide][squaresHigh];

    for (int y = 0; y <squaresHigh; y++) {
      for (int x = 0; x < squaresWide; x++) {
        char squareColor = lines[y].charAt(x);
        squares[x][y] = new Square(x*cellSize, y*cellSize, cellSize, squareColor);
      }
    }
  }

  void display() {
    for (int y = 0; y < squaresHigh; y++) {
      for (int x = 0; x < squaresWide; x++) {
        squares[x][y].display();
      }
    }
  }
  void changeColour() {
    int x = mouseX/cellSize;
   int y = mouseY/cellSize;
    squares[x][y].changeColour();
  }
}