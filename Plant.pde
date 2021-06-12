class Plant extends World {

  float x, y;
  int w, h;
  float Mscale = 50;
  float Tscale = 100;
  
  
  float scaleSpeed = 1;

  void scales() {
    Mscale = Mscale+scaleSpeed;
    if (Mscale > 100) {
      scaleSpeed = 0;
    }
     Tscale = Tscale+scaleSpeed;
    if (Tscale > 300) {
      scaleSpeed = 0;
    }
    
    
    
  }


  void display() {
  }
}
