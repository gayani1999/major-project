class Tile {
  float x, y;
  float w, h;
  char squareType;
color squareColor;
  float sideLength;

  Tile(float _x, float _y, float _w, float _h, char _squareType) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    squareType = _squareType;

    if (squareType == 'B') {
      squareColor = color(0, 0, 255);
    } else if (squareType == 'R') {
     squareColor = color(255, 0, 0);
    }
  }

  void display() {
    
    noStroke();
    fill(squareColor);
    rect(x, y, sideLength, sideLength);
  }
}