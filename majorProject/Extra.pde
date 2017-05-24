
//int[][] screen;
//int columns, rows;
//float cellSize;
//Square[] theSquares;
//color blue = color(0, 0, 255);
//color red = color(255, 0, 0);
//int state;
//IntList squaresToChange;
//boolean allHaveSwitched;

//  //void setup() {
//  //size(600, 600);
//  ////state = 0;
//  //columns = 10;
//  //rows = 10;
//  //screen = new int[columns][rows];
//  //cellSize = width/columns;
//  //squaresToChange = new IntList();
//  //theSquares = new Square[columns*rows];
//  //for (int i=0; i<theSquares.length; i++) {
//  //  theSquares[i] = new Square(cellSize);
//  //}

//  //createScreen();
//  //displayScreen();
////}
//////


////vo//id draw() {
////}
////
//void mousePressed() {
//  int x = int(mouseX / cellSize);
//  int y = int(mouseY / cellSize);

//  if (mouseButton == LEFT) { 
//    checkIfColorShouldChange(x, y);
//  }
//}


//void displayScreen() {
//  for (int x = 0; x < columns; x++) {
//    for (int y = 0; y< rows; y++) {
//      if (screen[x][y] == 0) {

//        theSquares[x*y].display(x*cellSize, y*cellSize, blue);
//        theSquares[x*y].whichSquare = 1;
//      } else if (screen[x][y] == 1) {

//        theSquares[x*y].display(x*cellSize, y*cellSize, red);
//        theSquares[x*y].whichSquare = 2;
//      }
//    }
//  }
//}

//void createScreen() {
//  for (int x=0; x<columns; x++) {
//    for (int y=0; y<rows; y++) {
//      screen[x][y] = int(random(2));
//    }
//  }
//}

//void checkIfColorShouldChange(int _x, int _y) {
//  int x = _x;
//  int y = _y;
//  int squareToCheckFrom = x*y;
//  allHaveSwitched = false;
//  while (allHaveSwitched == false) {
//    //for red squares
   
     
    
//  }
//}
////void checkSquareBeside(int squareToCheckFrom, boolean allHaveSwitched) {
////for (int rowsChecked = 0; rowsChecked <= rows; rowsChecked++) {
////  for (int columnsChecked = 0; columnsChecked <= columns; columnsChecked++) {
////    //theSquares[x*y].display(x*cellSize, y*cellSize, colourToChangeTo);
////  }
////}