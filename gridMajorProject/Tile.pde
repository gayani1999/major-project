class Tile {
  float x, y;
  float w, h;
  char tileType;
  PImage theTile;

  Tile(float _x, float _y, float _w, float _h, char _tileType) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    tileType = _tileType;

    if (tileType == 'R') {
      theTile = loadImage("red.png");
    } else if (tileType == 'B') {
      theTile = loadImage("blue.png");
    } 
 }
  void display() {
    image(theTile, x, y, w, h);
  }
}