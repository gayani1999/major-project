int[][] screen;
int columns, rows, squareNumber;
float cellSize;
Square[] theSquares;
color blue = color(0,0,255);
color red = color(255,0,0);

void setup() {
  size(600, 600);
  columns = 10;
  rows = 10;
  screen = new int[columns][rows];
  cellSize = width*.99/columns;
  theSquares = new Square[100];
  for (int i=0; i<theSquares.length; i++) {
    theSquares[i] = new Square(cellSize);
  }
  squareNumber = 0;
  
   displayScreen();
}


void draw() {

}

 void mousePressed(){
   if( mouseButton == LEFT){
      theSquares[squareNumber].display(mouseX/cellSize,mouseY/cellSize,blue);
     
      
   }
   else if(mouseButton == RIGHT){
   theSquares[squareNumber].display(mouseX/cellSize,mouseY/cellSize,red);
   }
    squareNumber++; 
   //if (squareNumber < 99){}
   println(squareNumber);
println(mouseX, mouseY); 

 }


void displayScreen() {
  for (int x = 0; x < columns; x++) {
    for (int y = 0; y< rows; y++) {

      fill(255);

      rect(x*cellSize, y*cellSize, cellSize, cellSize);
    }
  }
}