class Tree extends Plant {

  Tree() {
    x = mouseX;
    y = mouseY;
  }

  void display() {
    image(TREE, x, y, Tscale, Tscale+60);
  }
}
