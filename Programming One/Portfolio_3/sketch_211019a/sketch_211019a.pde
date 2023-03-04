// bouncing objects

int size =50; // this code is for size of the object

PImage Arrow1,Arrow2,Arrow3, arrow4; // this code is for starting for pictures 

Arrow arrow1, arrow2, arrow3; // this code is for the arrow class

void draw() // thi is the draw fuction
{
  background(255); // this code is to set the background colour
  arrow1.update(); // this code is for the update command 
  arrow2.update(); // this code is for the update command
  arrow3.update(); // this code is for the update command
} 

void setup() // this code is for the setup 
{
   size(500,500); // this code is for the size of the screen
   arrow1 = new Arrow(100,100,-5,3); // (X,Y,SpeedX,SpeedY || this code is the arrow1 moving onject)
   arrow2 = new Arrow(200,200,-5,-4); // (X,Y,SpeedX,SpeedY || this code is the arrow2 moving onject)
   arrow3 = new Arrow(300,400,6,6); // (X,Y,SpeedX,SpeedY || this code is the arrow3 moving onject)
}

 void collision() // this code is for the collision class 
 {
     if (arrow3.crash(arrow2)) // this code is to change the directions of the arrows if they collide with each other
  {
  arrow3.speedX = arrow3.speedX*-1; // this code turs the speedX from 1 to -1
  arrow3.speedY = arrow3.speedY*-1; // this code turs the speedY from 1 to -1 
  
  arrow2.speedX = arrow2.speedX*-1; // this code turs the speedX from 1 to -1
  arrow2.speedY = arrow2.speedY*-1; // this code turs the speedY from 1 to -1
  }
  
  if (arrow1.crash(arrow3)) // this code is to change the directions of the arrows if they collide with each other
  {
  
  arrow1.speedX = arrow1.speedX*-1; // this code turs the speedX from 1 to -1
  arrow1.speedY = arrow1.speedY*-1; // this code turs the speedY from 1 to -1 
  
  arrow3.speedX = arrow3.speedX*-1; // this code turs the speedX from 1 to -1
  arrow3.speedY = arrow3.speedY*-1; // this code turs the speedY from 1 to -1
  }
  
  if (arrow1.crash(arrow2)) // this code is to change the directions of the arrows if they collide with each other
  {
  arrow1.speedX = arrow1.speedX*-1; // this code turs the speedX from 1 to -1
  arrow1.speedY = arrow1.speedY*-1; // this code turs the speedY from 1 to -1
  
  arrow2.speedX = arrow2.speedX*-1; // this code turs the speedX from 1 to -1
  arrow2.speedY = arrow2.speedY*-1; // this code turs the speedY from 1 to -1
  }
 }
 
