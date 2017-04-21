// Complete the same basic setup as before
import processing.sound.*;

SoundFile file;
// We also now want to see the amplitude of our sound
Amplitude amp;
// And we need a way to store it
float curAmp;
// We also need to boost the scale of the amp
float boost = 500;

boolean play = true;

void setup(){
  // Instead of a set size we want our project to be full screen
  fullScreen();
  background(255);
  file = new SoundFile(this,"MegaHyperUltrastorm.mp3");
  // We need to setup our amplitude
  amp = new Amplitude(this);
  file.play();
  // We need our amplitude to listen to our file
  amp.input(file);
}

void draw(){
  // We want our animation to draw a new frame every draw
  background(255);
  
  // We need to get the current amp and scale it
  curAmp = amp.analyze() * boost;
  
  // Now we can draw our shape
  // We need to choose a color
  fill(0,255,0);
  // Then draw the shape
  // This is a circle, more examples can be found in the shape section
  ellipse(width/2,height/2,curAmp,curAmp);
  

  if(keyPressed){
    if(key == ' '){
      play = !play;
    }
  }
  if (play){
    file.rate(1);
  }else{
    file.rate(0);
  }
  
}