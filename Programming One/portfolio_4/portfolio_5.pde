PImage background; // this code is to pu the image in the background
int bgX=0; //global vairable background location

int x,y; // this is the X and Y axis

color ALIEN1 = color(0, 255, 0); // alien1  colour filling 
  color ALIEN2 = color(0, 200, 200); // alien2  colour filling 
  
Alien alien1, alien2, alien3; // sets the 3 aliens 
Defender defender1; // set the defender
Bullet Bullet1; // set the bullet 

void setup()  //this code is for the set up fuction
{
  size(800, 400); // size of the screen 

  background = loadImage("spaceBackground.jpg"); // code to put find and run the image in the backgroud 
  background.resize(width, height); //set image to be same size as the canvas

  defender1=new Defender(width/5, height/2); // code for defender to appear 

  alien1 = new Alien(width, height/2); // add alien1 to middle of screen
  alien2 = new Alien(width, height/4); // add alien2 to middle of screen 
  alien3 = new Alien(width, height/5); // add alien3 to middle of screen
  Bullet1 = new Bullet(width/5, height/2); // add bullet
} // end setup 

void draw () //ths code is for the draw function 
{
  image(background, bgX, 0); // scrolling background image

  image(background, bgX+background.width, 0); // draw image again off the right of the canvas
  bgX = bgX - 4; //this code is for the movement of the background image 
  if (bgX == -background.width) // this runs the background image again once the first one this done off the screen
  {
    bgX=0; //resent back to initial value
  }
  alien1.render();  //this render alien1 image 
  alien2.render(); // this render alien2 image 
  alien3.render(); // this render alient3 image

  alien1.move(); //this makes alien1 move
  alien2.move(); //this makes alien2 move  
  alien3.move(); //this makes alien3 move 

  alien1.wall(); // this keeps alien1 away from colliding to the wall
  alien2.wall(); // this keeps the alien2 away from colliding to the wall
  alien3.wall(); // this keeps the alien3 away from colliding to the wall
  
  bullet(); // this code is for the bullet
  
  defender1.render(); // render the defender
  defender1.crash(); // this is crash function for defender 1 
  defender1.DoCrash(); // this is DoCrash function for defender 1 
 
} // end draw

void keyPressed() // this maks the defender move up, down, left and right
{

  {
    if (key == CODED)
    {
      if (keyCode == UP) // this code to give istuction if UP key is pressed the defender should move up
      {
        defender1.y = defender1.y -5; // this code is to make the bullet move up by -5 
      }
      if (keyCode == DOWN) // this code to give istuction if DOWN key is pressed the defender should move down
      {
        defender1.y = defender1.y + 5; // this code is to make the bullet move down by +5 
      }
      if (keyCode == LEFT)  // this code to give istuction if LEFT key is pressed the defender should move left
      {
        defender1.x = defender1.x - 5;  // this code is to make the bullet move Left by -5 
      }
      if (keyCode == RIGHT) // this code to give istuction if RIGHT key is pressed the defender should move right
      {
        defender1.x = defender1.x + 5; // this code is to make the bullet move right by -5 
      }
    }//if key is CODE
  }
}

void bullet() // bullet function
{
  if (key == ' ') // if statement
  {
    print("space"); // code to allocate the space tab to shoting for the bullet
    Bullet1.procedure(); 
  }
}
