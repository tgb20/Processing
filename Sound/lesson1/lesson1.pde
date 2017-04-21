// Import the Sound Library
import processing.sound.*;

// Make a new sound file
SoundFile file;
// Make a boolean to control play pause
// By default it will be true
boolean play = true;

// The Setup Function runs when you first hit play
void setup(){
  // We want to set the resolution of our screen
  size(200,200);
  // We want to set the background color
  background(255);
  // Now we want to setup our audio file
  // Your soundfile must be in the data folder
  file = new SoundFile(this,"MegaHyperUltrastorm.mp3");
  // Now we can play our song on a loop
  file.play();
}

// The draw function runs once a frame
// You need it to keep the program running
void draw(){
  
  // To make our music pause and play we need to check when the keyboard is pressed.
  if(keyPressed){
    // We now need to check if it was the Space key
    if(key == ' '){
      play = !play;
    }
  }

  // We need to control the rate of the song to pause or play it
  if (play){
    // If play is true play the song
    file.rate(1);
  }else{
    // If play is false pause the song
    file.rate(0);
  }
  
}