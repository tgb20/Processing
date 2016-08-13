//Setup your program with a setup() function and a draw() fuction.

//Create 4 ints for different shapes
//We start a variable with a lower case and follow with upper case
int numOfSquares = 100;
int numOfCircles = 50;
//Set the number of triangles to a lower number
int numOfTriangles = 5;
int numOfLines = 2;

//Create a int for the max size
int maxSize = 60;

void setup(){
  //Set the screen size to 400x400
  size(400,400);
  //Set the Background to white
  background(255); 
  
  
  //We are going to want a loop that will stop when the max number of our shape has been created.
  //For loops run until i is equal to your modifier
  //This will be our Rectangle Loop
  for (int i=0; i < numOfSquares; i++){
    //Rotate changes the next shapes rotation. We will set it to the maxSize
    rotate(maxSize);
    //Once the loop starts we want to set our rectangles to a random color
    fill(random(0,255),random(0,255),random(0,255));
    //We then want to set them to a random position on the screen.
    //We will get the size of our screen as the max for X and Y
    //The max size of the shape will be what we set in our start
    rect(random(0,width),random(0,height),random(0,maxSize),random(0,maxSize));  
  }
  //We can copy the loop for each shape and switch out the values
  for (int i=0; i < numOfCircles; i++){
    rotate(maxSize);
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(random(0,width),random(0,height),random(0,maxSize),random(0,maxSize));  
  }
    for (int i=0; i < numOfTriangles; i++){
      rotate(maxSize);
      fill(random(0,255),random(0,255),random(0,255));
      //Triangles have more values as you have to set each point
      triangle(random(0,width),random(0,height),random(0,width),random(0,height),random(0,width),random(0,height));
  }
    for (int i=0; i < numOfLines; i++){
      rotate(maxSize);
      //Instead of changing the fill we want to change the stroke
      stroke(random(0,255),random(0,255),random(0,255));
      //For lines we have to set how thick we want them to be
      strokeWeight(maxSize);
      //Lines are very simple as they just have two points
      line(random(0,width),random(0,height),random(0,width),random(0,height));
  }
}