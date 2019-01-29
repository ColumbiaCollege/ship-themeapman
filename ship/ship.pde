//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//variables for position
float xPos =0;
float yPos = 0;

//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

void setup() {
  //window modifications
  size(1000, 800);
  background(255);

  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(0, 0, 255);
}

void draw() {
  //wipe
  background(0,0,0);

  //update position
  if (left) {
    xPos = xPos - 1;
  }
  if (right) {
    xPos = xPos + 1;
  }
  if (up) {
    yPos = yPos - 1;
  }
if (down) {
  yPos = yPos + 1;
}
  //draw shape
  rect(xPos, yPos, 20, 20);
}

void keyPressed() {
  if (key == 'a') {
    left = true;
  }
}
