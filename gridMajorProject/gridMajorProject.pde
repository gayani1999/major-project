//Name: Gayani Rajapaksha
//Project Title: the grid for the major project
//Purpose: creates a grid with various coloured squares that change colour once clicked. 


int[][] screen;
int columns, rows;
float cellSize;
Square[] theSquares;
color blue = color(0, 0, 255);
color red = color(255, 0, 0);
//color yellow = color(255, 255, 0);

void setup() {
  size(600, 600);


  columns = 20;
  rows = 20;
  screen = new int[columns][rows];
  cellSize = width/columns;
  theSquares = new Square[columns*rows];
  for (int i=0; i<theSquares.length; i++) {
    theSquares[i] = new Square(cellSize);
  }

  createScreen();
  displayScreen();
}



void draw() {
}

void mousePressed() {
  int x = int(mouseX / cellSize);
  int y = int(mouseY / cellSize);

  if (mouseButton == LEFT) { 
    theSquares[x*y].display(x*cellSize, y*cellSize, blue);
  } else if (mouseButton == RIGHT) {
    theSquares[x*y].display(x*cellSize, y*cellSize, red);
  }
}


void displayScreen() {
  for (int x = 0; x < columns; x++) {
    for (int y = 0; y< rows; y++) {
      if (screen[x][y] == 0) {

        theSquares[x*y].display(x*cellSize, y*cellSize, blue);
      } else if (screen[x][y] == 1) {

        theSquares[x*y].display(x*cellSize, y*cellSize, red);
      }// else if (screen[x][y] == 2) { // add more colour later

      //  theSquares[x*y].display(x*cellSize, y*cellSize, yellow);
      //}
    }
  }
}

void createScreen() {
  for (int x=0; x<columns; x++) {
    for (int y=0; y<rows; y++) {
      screen[x][y] = int(random(2));
    }
  }
}