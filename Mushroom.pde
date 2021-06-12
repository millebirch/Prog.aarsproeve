class Mushroom extends Plant {

  Mushroom() {
    x = mouseX;
    y = mouseY;
  }

  void display() {
    image(M, x, y, Mscale, Mscale+10);
  }
}
