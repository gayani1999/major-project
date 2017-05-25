class Level {

  Square[][] squares;
  PImage levelBackground;
  int columns, rows, cellSize;
  boolean allChecked;
  

  Level(String fileToLoad) {

    String lines[] = loadStrings(fileToLoad);

    columns = lines.length;
    rows = lines[0].length();

    cellSize = width/rows;

    squares= new Square[rows][columns];

    for (int y = 0; y <columns; y++) {
      for (int x = 0; x < rows; x++) {
        char squareColor = lines[y].charAt(x);
        squares[x][y] = new Square(x*cellSize, y*cellSize, cellSize, squareColor);
      }
    }
  }

  void display() {
    for (int y = 0; y < columns; y++) {
      for (int x = 0; x < rows; x++) {
        squares[x][y].display();
      }
    }
  }

  void changeColour() {
    int x = mouseX/cellSize;
    int y = mouseY/cellSize;
    squares[x][y].changeColour();
  }

  void checkSquaresBeside() {
    int x = mouseX/cellSize;
    int y = mouseY/cellSize;
    while (allChecked == false) {
      if(squares[x][y].whichSquare == 1){ // from blue to red
        if(squares[x+1][y].whichSquare == 1){
        // add to list of squares to change
        }if(squares[x-2][y].whichSquare == 1){
        // add to list of squares to change
        }if(squares[x][y+rows].whichSquare == 1){
        // add to list of squares to change
        }if(squares[x][y-rows].whichSquare == 1){
        // add to list of squares to change
        }
      }else if(squares[x][y].whichSquare == 2){ // from red to blue
        if(squares[x+1][y].whichSquare == 2){
        // add to list of squares to change
        }if(squares[x-2][y].whichSquare == 2){
        // add to list of squares to change
        }if(squares[x][y+rows].whichSquare == 2){
        // add to list of squares to change
        }if(squares[x][y-rows].whichSquare == 2){
        // add to list of squares to change
        }
      }
    }
  }
}