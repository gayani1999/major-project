
Level currentLevel;
void setup() {
  size(600, 600);


  currentLevel = new Level("LVL01.txt");
}


void draw() {
  currentLevel.display();
}