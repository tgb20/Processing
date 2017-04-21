import processing.sound.*;

// This time instead of an audio file we want an AudioIn
AudioIn in;

Amplitude amp;
float curAmp;
// We need to change the boost to fit your mic
// Mine requires 10000
float boost = 10000;

boolean play = true;

void setup(){
  fullScreen();
  background(255);
  // Setup the AudioIn to be mic 0
  in = new AudioIn(this,0);
  amp = new Amplitude(this);
  // Play the audio in
  in.play();
  // Tell the amp to listen to the mic
  amp.input(in);
}

void draw(){
  background(255);
  
  curAmp = amp.analyze() * boost;
  
  fill(0,255,0);
  ellipse(width/2,height/2,curAmp,curAmp);
  
  // Also because it is live audio there is no play/pause
}