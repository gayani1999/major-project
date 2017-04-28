class Square {

  //data
  int sideLength;
  color sqaureColour;
  float  x, y;

  //constructor
  Square(int _sideLength, color _squareColour) {
    sideLength = _sideLength;
    sqaureColour = _squareColour;
    x = random(width);
    y = random(height);
  }


  //behaviour
  void display() {
    noStroke();
    fill(sqaureColour);
    rect(x, y, sideLength, sideLength);
 
  }
  
  
  
  
  
}