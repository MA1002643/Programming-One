class Bullet {
  int x; // X position of the bullet
  int y; // position of the bullet
  int bulletAction = -4; // speed of the bullet

  Bullet(int x, int y) // bullet constructor
  {
    this.x=x;
    this.y=y;
  }

  void procedure() // methods
  {
    render(); // render method 
    move(); // move method
  }
 
  void move () // for the bullet movement
  {
    x = x-bulletAction; // code to make  the bullet move to the right size of the screen
  }
   
  void render() // code to create the bullet
  {
    fill(200); // for bullet colour
    rect(x, y, 5, 5); // to make the bullet in rectangle shape 
  }
} // end class 
