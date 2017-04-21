// This file is not designed to be run, just examples

// Core 2D Shapes
ellipse(X_POS,Y_POS,WIDTH,HEIGHT);
line(X_POS1,Y_POS1,X_POS2,Y_POS2);
point(X_POS,Y_POS)
rect(X_POS,Y_POS,WIDTH,HEIGHT);

// Core 3D Shapes
// You have to change the rendering mode
size(200,200,P3D);
// or
fullScreen(P3D);
box(SCALE);
sphere(RADIUS);

// To set the position of a 3D object you use
translate(X_DISTANCE,Y_DISTANCE,Z_DISTANCE);
// To change its rotation you use
rotateX(radians(DEGREES));
rotateY(radians(DEGREES));
rotateZ(radians(DEGREES));

// To set the colors of any shape
// Change its fill 0-255
fill(R,G,B);
// Change its stroke 0-255
stroke(R,G,B);
// Disable the inside (wireframe)
noFill();
// Change the size of the stroke
strokeWeight(SIZE);
// Make a fill with random colors
float r = random(255);
float g = random(255);
float b = random(255);
fill(r,g,b);