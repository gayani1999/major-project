class Level {

  Tile[][] squares;

  int tilesHigh, tilesWide;


  Level(String fileToLoad ) {

    String lines[] = loadStrings(fileToLoad);

    tilesHigh = lines.length;
    tilesWide = lines[0].length();

    float squareWidth = width/tilesWide;
    float squareHeight = height/tilesHigh;



   squares = new Tile[tilesWide][tilesHigh];

    for (int y = 0; y < tilesHigh; y++) {
      for (int x = 0; x < tilesWide; x++) {
        char squareColour = lines[y].charAt(x);
        squares[x][y] = new Tile(x*squareWidth,y*squareHeight, squareWidth, squareHeight, squareColour);
      }
    }
  }

  void display() {

    for (int y = 0; y < tilesHigh; y++) {
      for (int x = 0; x < tilesWide; x++) {
        squares[x][y].display();
      }
    }
  }
  
  
  
void keyPressed(){
  if(key == 'b'){

   
   
  
  }
}
}