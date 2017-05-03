int[][] screen;
int columns, rows, squareNumber;
float cellSize;
Square[] theSquares;

void setup() {
  size(600, 600);
  columns = 10;
  rows = 10;
  screen = new int[columns][rows];
  cellSize = width/columns;
  theSquares = new Square[100];
  for (int i=0; i<theSquares.length; i++) {
    theSquares[i] = new Square(cellSize);
  }
  squareNumber = 0;
  
  
}


void draw() {
 displayScreen();
}

 void mousePressed(){
   if( mouseButton == LEFT){
      //theSquares[squareNumber].display()
     
      
   }
   else if(mouseButton == RIGHT){
   
   }
    //squareNumber++; 
   //if (squareNumber < 99){}
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