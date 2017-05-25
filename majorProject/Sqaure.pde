class Square {

  //data
  float sideLength;
  color squareColour;
  float  x, y;
  int whichSquare;
  char squareType;
  // boolean isOn;

  //constructor
  Square(float _x, float _y, float _sideLength, char _squareType) {
    x = _x;
    y = _y;
    sideLength = _sideLength;
    squareType = _squareType;
    if (squareType == 'B') {
      squareColour = color(0, 0, 255);
      whichSquare = 1;
    } else if (squareType == 'R') {
      squareColour = color(255, 0, 0);
      whichSquare = 2;
    }
  }
  void display() {

    noStroke();
    fill(squareColour);
    rect(x, y, sideLength, sideLength);
  }
  void changeColour() {
    if (whichSquare ==1) {
      squareColour = color(255, 0, 0);
    } else if (whichSquare == 2) {
      squareColour = color(0, 0, 255);
    }
    display();
  }
}