//Setup your program like before
void setup(){
  //Set the screen size to 400x400
  size(400,400);
  
  //Set the background to white
  //If you just use one int it changes the brightness
  background(255); 
}

//The function mouseClicked() checks when someone has clicked on the program.
//We are going to use it to edit our background
void mouseClicked(){
  //We are going to set our background to a random color
  //To do so we are going to generate a random float between 0 and 255 
  //for Red, Green, and Blue
  float R = random(0,255);
  float G = random(0,255);
  float B = random(0,255);
  
  //We then want to set the background to this color
  background(R,G,B);
}

//If you run the program now you will find that nothing is happening
//This is because our current program runs then stops
//We need to add a function that will loop forever
//draw() is a function that runs once every tick and executes what is running inside of it
void draw(){
  //We are going to leave it blank as we just need it to keep the program running
  //If you run your script now you will be able to randomly change the background color
}