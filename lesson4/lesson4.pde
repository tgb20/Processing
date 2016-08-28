//Import the Serial Library
//Sketch->Import Library...->Serial
import processing.serial.*;

//We need to tell processing what port the serial is on
Serial myPort;
//We also need to store the information recieved over serial
String val;

int valInt;
//Setup your Project
void setup(){
  //Set Screen Size to 400x400
  size(400,400);
  //Set the Background to White
  background(255);
  
  //We need to setup the serial information
  //First we need to set the port name
  //On windows you use String portName = Serial.list("COM1");
  String portName = Serial.list()[3];
  
  //We then need to open the serial connection
  myPort = new Serial(this, portName, 9600); 
}
void draw(){
  
  //We need to check if we have a serial connection before doing anything
  if(myPort.available() > 0){
    //If their is data what is in the if statement will run
    //We need to get the information from serial and store it in our val
    //\n means the end of a line
    //We also need to trim it as a lot of white space is generated
    val = myPort.readStringUntil('\n').trim();
    //Print the information we are getting
    valInt = int(val);
    println(valInt);
  }
  //Now we need to do something with the value
  //I am going to make it rotate a square to paint an image
  //Set the sqaures color
  fill(random(0,valInt), random(0,valInt), random(0,valInt));
  //We need to make sure it is in the center of the screen
  translate(width/2, height/2); 
  //Now we will make our square
  //We are going to set its position to negative half its width and height so it lands in the middle
  rect(-125,-125,250,250);
  //We dont want it to go super fast so we will have a 200ms delay
  delay(500);
}

//If you run it without the Arduino CounterPart you will recieve a NullPointerException