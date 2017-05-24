class Square {

  //data
  float sideLength;
  color sqaureColour;
  float  x, y;
  int whichSquare;
 // boolean isOn;

  //constructor
  Square(float _sideLength) {
    sideLength = _sideLength;
  }


  //behaviour
  void display(float _x, float _y, color _squareColour) {
    x = _x;
    y = _y;
    sqaureColour = _squareColour;

    noStroke();
    fill(sqaureColour);
    rect(x, y, sideLength, sideLength);
  }
}