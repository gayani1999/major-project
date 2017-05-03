class Square {

  //data
  float sideLength;
  color sqaureColour;
  float  x, y;

  //constructor
  Square(float _sideLength) {
    sideLength = _sideLength;
    
    //x = random(width);
    //y = random(height);
  }


  //behaviour
  void display(int _x, int _y, color _squareColour) {
    x = _x;
    y = _y;
    sqaureColour = _squareColour;
    noStroke();
    fill(sqaureColour);
    rect(x, y, sideLength, sideLength);
  }
}