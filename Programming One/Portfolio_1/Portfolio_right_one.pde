float scale = 25; // scale to change the size the circle also change the size of the gap between each dumbell0. 

// to repostion change the value of X and Y
float originalx=100; // this set's the variable for the orignal X
float y=100; // this set's the variable for the Y

float down = 10; //float to change the number of the columns 
float across = 3; //float to change the number of the rows
float spacing = 20; //float to change the distace in the dumbell
float columnspacing = 25; //flaot to change the spacing between each column
float rowspacing = 15; //float to cange the spacing between each row

size(500,500); //set size of canvas screen

float resetOriginalx =originalx; //this is used to reset the value of x after each raw has been created

for(int b=0;b<down;b++) //to manage the column
{
  // this is the code for the dumbells to be in columns
  for(int i=0;i<across;i++) //integer to create the row
  {
    ellipse(originalx,y,scale,scale); //ellipse to create the first circle for the dumbell
    ellipse(originalx+spacing+scale,y,scale,scale); //ellipse to create the second circle for the dumbell
    line(originalx,y,originalx+spacing+scale,y); //line to connect the first two circles
    originalx=originalx+columnspacing+scale*2; //shifting the x value to the right
  }
  originalx=resetOriginalx; //to reset the x value to it's original value in preparation for next row
  
  y=y+rowspacing+scale; //Code to create one column under another one
}




 
