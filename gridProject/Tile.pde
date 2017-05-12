class Tile {
  float x, y;
  float w, h;
  char tileType;
  PImage theTile;
  color colorOfSquare;
  color outline;

  Tile(float _x, float _y, float _w, float _h, char _tileType) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    tileType = _tileType;

    if (tileType == 'R') {
      outline = color(180, 35, 35);
      colorOfSquare = color (255, 0, 0);
    } else if (tileType == 'B') {
      outline = color(35, 35, 180);
      colorOfSquare = color (0, 0, 255);
    }
  }
  void display() {
    stroke(outline);
    fill(colorOfSquare);
    rect(x, y, w, h);
  }
}