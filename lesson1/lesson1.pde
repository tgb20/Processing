//Comments are made with two backslashes
//To Start You have to create a setup() Function
//The setup() function only runs once when you start the program

void setup(){
  //By default the resolution is 20x20
  //To change it you need to set the size using size()
  //The values are X,Y
  //Set the size to 400x400
  size(400,400);
  
  //To edit colors you need to tell processing not to apply the default stroke
  noStroke();
  
  //To set the background color you use background()
  //The values are Red, Green, and Blue
  //0,0,0 is Black and 255,255,255 is White
  //Set the background to a light blue
  background(0, 117, 180);
  
  //To draw a circle you first have to set what color you want
  //To set a shapes color you use fill()
  //The values are Red, Green, and Blue
  //Set the color to yellow
  fill(255,200,0);
  
  //You then need to draw the circle with ellipse()
  //The values are X, Y, Width, Height
  //Create a Circle that is in the center of the screen at is 25px away from every edge
  ellipse(200,200,375,375);
  //You can draw other shapes with arc(), line(), point(), quad(), rect(), and triangle()
  
  //Now we are going to add two more black circles
  fill(0);
  ellipse(125,125,70,70); 
  //Even though there are two circles we only have to set the fill once
  ellipse(275,125,70,70);
  
  //Now are are going to create an arc
  //The fill still does not have to be changed
  //The Values are X, Y, Width, Height, Starting Radian, and Ending Radian
  arc(200, 225, 200, 200, 0, PI);
  
  //You should now have a Happy Face!
}