/*
   Use an Ultrasonic distance sensor

   The HC-SR04 Ultrasonic sensor has a trigger pin and an echo pin.
   Sending a signal to the trigger pin causes an ultrasonic
   sound to be broadcast. We can detect how long it takes for the echo
   to be heard and calculate the distance using the speed of sound.

*/
int echoPin = 7; // Listen for an echo on this pin
int triggerPin = 8; // Generate an ultrasonic sound with this pin

long duration, distance;

void setup() {
  // Use Serial to communicate from the Arduino.
  Serial.begin(9600);
  
  // Specify trigger and echo pins.
  pinMode(triggerPin, OUTPUT);
  pinMode(echoPin, INPUT);
}

void loop() {
  // Send a reset signal to the trigger pin.
  digitalWrite(triggerPin, LOW);
  delayMicroseconds(2);

  // Generate an ultrasonic sound for 10 microseconds.
  digitalWrite(triggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(triggerPin, LOW);

  // pulseIn measures the length of time (in microseconds) that
  // it takes for the echo to be heard.
  duration = pulseIn(echoPin, HIGH);

  /*
      Calculate the distance (in cm) based on the speed of sound.
      In air, sound travels 340 m/s = 34,000 cm/s = 0.034 cm/microsecond

      Elapsed time is for a round trip, so divide by 2:
      0.034 cm/microsecond / 2 = 0.017 cm/microsecond
  */
  distance = duration * 0.017;
  // Limit the distance to between 0 and 200 cm.
  distance = constrain(distance, 0, 50);
  // Print the distance to the serial port

  distance = map(distance,0,50,0,255);
  
  Serial.println(distance);

  // Wait 100 milliseconds to not overload processing
  delay(100);

  /*
      Run this sketch and select the "Serial Monitor" from the Tools menu.
      You should now be getting information from the Arduino!
  */
}
