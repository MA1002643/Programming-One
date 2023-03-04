class Defender { // Defender class

  int x, y; // position
  int dx; // speed

  Defender(int x, int y) { // constructors
    this.x = x;
    this.y = y;
  }

  void render() { //render function

    // draw an defender
    fill(0, 0, 200); // this fills the top box
    rect(x, y, 20, 10); // draw top box
    fill(255, 0, 0); // this fills the rocket
    rect(x, y+10, 50, 20); //draw rocket
    triangle(x+50, y+10, x+50, y+30, x+60, y+20); // this creates the traingle
  }

  boolean crash()// code for the crash sequence
  {
    for (int i = y; i<y+20; i++)
  {
    color test = get(this.x+65,i);// code for the crash sequence
    if ((test == ALIEN1) || (test == ALIEN2))
    {
    return true;
    }
  } 
  return false;
  }

  void DoCrash() // if defender gets in contact with one of the alien the game shuts down
  {
    if (crash() == true) // if stament
    {
      exit(); // the game shuts down if the defender get in touch with the alien
    }
  }  
}  // end class
