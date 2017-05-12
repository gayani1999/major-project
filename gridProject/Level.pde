//class Level {

//  //data
//  Tile [][] squares;
//  int tileHigh, tileWide;

//  Level(String levelFile) {
//    //load level data
//    String lines[] = loadStrings(levelFile);

//    tileHigh = lines.length;
//    tileWide = lines[0].length();

//    float widthSquares = width/tileWide;
//    float heightSquares = height/tileHigh;

//    //println(tilesHigh, tilesWide);

//    squares = new Tile[tileWide][tileHigh];

//    for (int y = 0; y < tileHigh; y++) {
//      for (int x = 0; x < tileWide; x++) {
//        char squareColour = lines[y].charAt(x);
//        squares[x][y] = new Tile(x*widthSquares, y*heightSquares, widthSquares, heightSquares, squareColour);
//      }
//    }
//  }

//  void display() {

//    for (int y = 0; y < tileHigh; y++) {
//      for (int x = 0; x < tileWide; x++) {
//        squares[x][y].display();
//      }
//    }
//  }
//}