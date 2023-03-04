// by "chain" it means row
// Portfolio 2 Traffic Jam

void setup()
{
    size(1500,1500); // this is the size of the screen      
    
     float axisX=200, axisY=100, CarSize=25, ChainRepeat=7;// this is the start point of where the first car design will start from, the CarSize is the size of car in first row, the ChainRepeat is number of cars in the first chain
    
    float dimension = 8; // this code is for the gap between the first and second chain

    float secondChainProportion = 45; // this code is to resize the second chain 

    float ChainDistance = secondChainProportion/dimension; // set the size of gap between the first and second chain 
    
    float axisX2=axisX, axisY2=axisY+CarSize*ChainDistance,  Carsize2=60, ChainRepeat2 = 5; // this is the start point of where the second row first car design will start from, the CarSize is the size of cars in second row, the ChainRepeat is number of cars in the second chain
    
    
    CarChain(axisX,axisY,CarSize, ChainRepeat); // this is the code to create the first chain of cars
    CarChain(axisX2,axisY2,Carsize2,ChainRepeat2); // this is the code to create the second chain of cars
    
}

void CarChain(float axisX, float axisY, float CarSize, float ChainRepeat) // this code is to design cars in a straight line 
{
    float revalueX= axisX; // this code is to revalue X so both chains are in the same starting location

    float disCar = 3.5; // this code is used to allocate distance between each car in both rows      
    
    for (int chain=0;chain<ChainRepeat;chain++) // this code is for the creation of the loop to create the cars in a row 
    {
        vehicle(axisX,axisY,CarSize); // this code sets the car code to the previous car procedure
        axisX=axisX+CarSize*disCar; // this code is to design the second car in the same line as the first one to make a row
    }

    axisX=revalueX; // this code revalue the x so the next row created is in the same position as the other rows
   
}

void vehicle (float axisX, float axisY, float CarSize) // this is the code to create the one car
{
    float vehicleTyrePosition = CarSize*1.5; // this code is to position the tyre of at the corner of all the vehicles
    float vehicleTyreSize = 2.0; // this code is for the size of tyre by increasing the value, the type will become smaller and by decreasing the value, the tyre will become bigger 
    float tyreDisCar = 1.5; // this is the distance of the 2 wheels in a car "this applies to all cars"    

    carRoofPart(axisX,axisY,CarSize); // this is the code to create the top side of the car
    carLowerPart(axisX,axisY+CarSize,CarSize); // this is the code to create the bottom side of the car 
    tyre(axisX+CarSize*tyreDisCar,axisY+vehicleTyrePosition,CarSize/vehicleTyreSize); // this is the code to create the right-hand tyre "this applies to all cars"
    tyre(axisX-CarSize*tyreDisCar,axisY+vehicleTyrePosition,CarSize/vehicleTyreSize); // this is the code to create the left-hand tyre "this applies to all cars"
}

void carLowerPart(float x, float y, float size) // this code is to create the lower side of the car "long rectangle for each car"
{
    float length = size*2.5; // this code is to allocate the length of the lower part of the car "long rectangle for each car"

    rectMode(CENTER); // this code is to place the rectangle in the middle
    rect(x,y,length,size); // this code is to make the rectangle
}

void tyre(float x, float y, float wheel_diameter) // this code is for the white colour overlapping black colour 
{
    float insideWheel = wheel_diameter/2.2; // this code is for the white colour diameter 

    fill(0,0,0); //  this code is to fill the black colour
    ellipse(x,y,wheel_diameter,wheel_diameter); // this code is to make the black tyre

    fill(255,255,255); // this code is to fill the white colour
    ellipse(x,y,insideWheel,insideWheel); // this code makes the white circle
}

void carRoofPart(float axisX, float axisY, float CarSize) // this code is to create the roof of the car "top rectangle for each car" 
{
    rectMode(CENTER); // this makes it so that the first 2 coordinates in the rect command are set to the center point of the rectangle instead of the top left one 
    fill(155); // this code is to fill the roof "top rectangle"
    rect(axisX,axisY,CarSize,CarSize); // this code makes the top roof
}
