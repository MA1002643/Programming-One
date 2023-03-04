class Alien {
  // member variable
  int x, y; // position
  int dx = 3; // speed
  int dy; // speed

 
  Alien(int x, int y)   // constructors
  {
    this.x = x;
    this.y = y;
  }

  void UFO() // general command
  {
    render(); // render general command 
    move(); // move general command
    wall(); // wall general command
  }

  
  void render() // methods 
  {
    fill(ALIEN1); // this code draw the alien1
    ellipse(x, y, 30, 30); // this code 
    fill(ALIEN2); // this code draw the alien2
    ellipse(x, y, 50, 15);
  }

  void move () // code for the alien movement
  {
    x=x-dx;
    y=y+(int) random(-4, 4);
    if (x<3) {
      x=width;
    }
    if (y<0) {
      y=height;
    }
  }
  
  void wall () { // code for the wall functionvor the alien
    if (this.y<0 || this.y>height)
    {
      dx = dx*-1;
    }
  }
}
