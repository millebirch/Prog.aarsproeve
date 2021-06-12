
class World {
  ArrayList <Dyr> worldListDyr = new ArrayList <Dyr>(); 
  ArrayList <Terrain> WorldListTerrain = new ArrayList <Terrain>();
  ArrayList <Plant> WorldListPlant = new ArrayList <Plant> ();

  void Frog() {
    Frog F = new Frog();
    worldListDyr.add(F);
  }

  void Tiger() {
    Tiger T = new Tiger();
    worldListDyr.add(T);
  }

  void swamp () {
    Swamp S = new Swamp();
    WorldListTerrain.add(S);
  }




  void tegnDyr() {

    frogObject.display();
    frogObject.move();

    tigerObject.display();
    tigerObject.move();

    for (Dyr d : worldListDyr) {

      d.display();
      d.move();
    }
  }

  void lavDyr () {
    if (key == 'f') {
      W.worldListDyr.add(new Frog());
    }
    if (key == 't') {
      W.worldListDyr.add(new Tiger());
    }
  }


  void lavTerrain() {
    W.tengTerrain();
    W.WorldListTerrain.add(new Swamp());
  }

  void tengTerrain() {
    SwampObject.display();

    for (Terrain T : WorldListTerrain) {
      T.display();
    }
  }




  void tengPlant() {
    TreeObject.display();

    for ( Plant TREE : WorldListPlant) {
      TREE.scales();
      TREE.display();
    }

    MushroomObject.display();

    for ( Plant M : WorldListPlant) {
      M.display();
      M.scales();
    }
  } 





  void lavTree() {
    if (key == 'w') {
      WorldListPlant.add(new Tree());
    }

    if (key == 'm') {
      WorldListPlant.add(new Mushroom());
    }
  }

  void collision() {
    for ( Terrain T : WorldListTerrain) {
      for (Dyr d : worldListDyr) {
        if (d.y > T.y && d.y < T.y + T.h && d.x > T.x && d.x < T.x+ T.w) {
          d.x -= d.speedX*0.5;
          d.y -= d.speedY*0.5;
        }
      }
    }
  }
}
