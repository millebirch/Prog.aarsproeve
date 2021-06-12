
World W;
PImage f;
PImage t;
PImage S;
PImage TREE;
PImage M;

Frog frogObject = new Frog();
Tiger tigerObject = new Tiger();
Swamp SwampObject = new Swamp();
Tree TreeObject = new Tree();
Mushroom MushroomObject = new Mushroom();



void setup() {
  size (800, 800);


  W = new World();
  f = loadImage("Frog2.png");
  t = loadImage("Tiger2.png");
  S = loadImage("swamp.png");
  TREE = loadImage("tree2.png");
  M = loadImage("mushroom.png");
}

void draw() {
  clear();
  imageMode(CENTER);
  W.tengTerrain();
  W.tengPlant();
  W.tegnDyr();
  W.collision();
}

void mousePressed() {
  W.lavTerrain();
}

void keyPressed() {
  W.lavTree();
  W.lavDyr();
}
