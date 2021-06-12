class Swamp extends Terrain {

  Swamp() {
    x = mouseX;
    y= mouseY;
    w = 150;
    h = 100;
  }

  void display() {
    S.resize(w, h);
    image(S, x, y);
  }
}
