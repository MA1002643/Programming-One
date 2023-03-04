class Arrow //this code is for the arrow function 

{
  int x; // this code is for the x position 
  int y; //this code is for the y position 
  int speedX; // this is the speed of the X position 
  int speedY; // this is the speed of the Y position 

  PImage arrow1, arrow2, arrow3, arrow4; // this configures the 4 arrows 

  Arrow (int x, int y, int mx, int my) // this code get pictures of 4 various arrow directions and apply them to arrow1, arrow2, arrow3 and arrow4
  {
    this.x = x; // this code is to allocate the new x location with same value as previous x location
    this.y = y; // this code is to allocate the new y location with same value as previous y location
    this.speedX= mx; // this code is to allocate the new x speed with same value as previous x speed
    this.speedY = my; // this code is to allocate the new y speed with same value as previous y speed

    arrow1 = loadImage("arrow1.jpg"); // this code finds and loads the image 
    arrow1.resize(size, size); // this code is to resize the image to the value given in the int size variable

    arrow2 = loadImage("arrow2.jpg"); // this code finds and loads the image
    arrow2.resize(size, size); // this code is to resize the image to the value given in the int size variable

    arrow3 = loadImage("arrow3.jpg"); // this code finds and loads the image
    arrow3.resize(size, size); // this code is to resize the image to the value given in the int size variable

    arrow4 = loadImage("arrow4.jpg"); // this code finds and loads the image
    arrow4.resize(size, size); // this code is to resize the image to the value given in the int size variable

    imageMode(CENTER); //this code is used to allocate the image location from the center of the image and not the top left corner
  }

  void render() //this code is to render the images
  {

    imageMode(CENTER); // this code is used to allocate the image location from the center of the image and not the top left corner

    if (this.speedX > 0 && this.speedY > 0) // this code is to allocate the direction of the arrow so if x and y are positive the arrow will face diagonally to the bottom right
    {
      image(arrow1, x, y); // this code is to define the which arrow it is and the x and y position of the arrow
    } else if (this.speedX < 0 && this.speedY > 0) // this code is to allocate the direction of the arrow so if x is negative and y is positive the arrow face diagonally to the bottom left
    {
      image(arrow2, x, y); // this code is to define the which arrow it is and the x and y position of the arrow
    } else if (this.speedX > 0 && this.speedY < 0) // this code is to allocate the direction of the arrow so if x is positive and y is nagative the arrow face diagonally to top right
    {
      image(arrow3, x, y); // this code is to define the which arrow it is and the x and y position of the arrow
    } else if (this.speedX < 0 && this.speedY < 0) // this code is to allocate the direction of the arrow so if x and y are negative the arrow face diagonally to the top left
    {
      image(arrow4, x, y); // this code is to define which arrow it is and the x and y position of the arrow
    }
  }

  void move() // this code make the image to proceed  
  {
    x = x+speedX; // this code makes the arrow move horizontally by rising x value by value of speedX
    y = y+speedY; // this code makes the arrow move vartically by rising y value by value of speedY
  }

  void update() // this code is a procedure 
  {
    render(); // this code is for the render inside the procedure
    move(); // this code is for the movement inside the procedure
    collision(); // this code is for the movement inside the procedure
    wall(); // thid code is for the wall inside the procedure
  }

  void wall() // this code is to detect if the arrow hits the wall then the arrow goes in the opposite direction
  {
    if (this.x > width - size || this.x < size) // this code is to detect if the the arrow is in contact with the wall horizontally that will convert to horizontal speed
    {
      speedX = speedX*-1; // this is the code used for the wall detection horizontally
    }

    if (this.y > height - size || this.y < size) // this code is to detect if the the arrow is in contact with the wall vertically that will convert to vertical speed
    {
      speedY = speedY*-1; // this is the code used for the wall detection vertivally
    }
  }  
  boolean crash(Arrow other) // this code is to see if 2 arrow crash to each other
  {
    return (abs(this.x-other.x) < size  &&  abs(this.y-other.y) < size); // this code revalue the boolean if 2 arrows are touching with each other
  }
}
