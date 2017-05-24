

Level currentLevel;

void setup() {
  size(600, 600);  // 4:3 ratio
  currentLevel = new Level("lvl1.txt");
}

void draw() {
 currentLevel.display();
}