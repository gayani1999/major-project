class Level{

//data
Tile [][] squares;
int heightSquares, widthSquares;

Level(String levelFile) {
    //load level data
    String lines[] = loadStrings(levelFile);

    heightSquares = lines.length;
    widthSquares = lines[0].length();

    float tileWidth = width/widthSquares;
    float tileHeight = height/heightSquares;

    //println(tilesHigh, tilesWide);

    squares = new Tile[widthSquares][heightSquares];
     for (int y = 0; y < heightSquares; y++) {
      for (int x = 0; x < widthSquares; x++) {
        char squareColour = lines[y].charAt(x);
        squares[x][y] = new Tile(x*tileWidth, y*tileHeight, tileWidth, tileHeight,squareColour);
      }
    }
}

 void display() {

    for (int y = 0; y < heightSquares; y++) {
      for (int x = 0; x < widthSquares; x++) {
        squares[x][y].display();
      }
}
 }

 }