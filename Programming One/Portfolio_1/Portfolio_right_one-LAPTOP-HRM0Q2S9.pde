float scale =50; // scale to change the size the circle also change the size of the gap between each dumbell0. 

// to repostion change the value of X and Y
float x=100; // this set's the variable for the X
float y=150; // this set's the variable for the Y

float down = 10; //float to change the number of the columns 
float across = 3; //float to change the number of the rows

size(500,500); //set size of canvas screen

for(int b=0;b<down;b++) //to manage the column
{
  // this is the code for the dumbells to be in columns
  for(int i=0;i<across;i++) //integer to create the create the row
  {
    ellipse(x,y,scale,scale); //ellipse to create the first circle for the dumbell
    ellipse(x+20,y,scale,scale); //ellipse to create the second circle for the dumbell
    line(x,y,x+20,y); //line to connect the first two circles
    x=(x+scale*+); //shifting the x value to the right
  }
  x=100; //to reset the x value to it's original value in preparation for next row
  
  y=y+scale+15; //Code to create one column under another one
}




 
