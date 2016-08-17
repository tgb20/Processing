//Import the Serial Library
//Sketch->Import Library...->Serial
import processing.serial.*;

//We need to tell processing what port the serial is on
Serial myPort;
//We also need to store the information recieved over serial
String val;

//Setup your Project
void setup(){
  //Set Screen Size to 400x400
  size(400,400);
  //Set the Background to White
  background(255);
  
  //We need to setup the serial information
  //First we need to set the port name
  //On windows you use String portName = Serial.list("COM1");
  String portName = Serial.list()[0];
  
  //We then need to open the serial connection
  myPort = new Serial(this, portName, 9600); 
}
void draw(){
  
  //We need to check if we have a serial connection before doing anything
  if(myPort.available() > 0){
    //If their is data what is in the if statement will run
    //We need to get the information from serial and store it in our val
    //\n means the end of a line
    val = myPort.readStringUntil('\n');
  }
  //Now we need to do something with the value
  //I am going to make it rotate a square to paint an image
  //Set the sqaures color
  fill(random(0,255),random(0,255),random(0,255));
  //We need to make sure it rotates around the center of the screen
  //We are going to move it to the center for rotation
  translate(width/2, height/2); 
  //I want to rotate it around its z Axis by the value I recieve
  //We are recieving a string but want it as an int so we have to wrap it in int()
  //We also want it to rotate in degrees so we need to set it to radians()
  rotate(radians(int(val)));
  //Now we will make our square
  //We are going to set its position to negative half its width and height so it lands in the middle
  rect(-125,-125,250,250);
  //We dont want it to go super fast so we will have a 200ms delay
  delay(200);
}

//If you run it without the Arduino CounterPart you will recieve a NullPointerException