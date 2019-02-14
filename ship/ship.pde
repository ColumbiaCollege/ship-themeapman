//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//variables 
float xPos =0;
float yPos = 0;
PImage ship;
//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

void setup() {
  //window modifications
  size(1000, 500);
  background(255);
ship = loadImage("ship.png");
  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(0, 0, 255);
}

void draw() {
  //wipe
  background(27,27,27);

  //update position
  if (left) {
    xPos = xPos - 3;
  }
  if (right) {
    xPos = xPos + 3;
  }
  if (up) {
    yPos = yPos - 3;
  }
  if (down) {
    yPos = yPos + 3;
  }
  if( xPos< 0 ){
    //to stop
    //xPos = 0;
    //to wrap left to right
    xPos = width;
  }
   // to stop
//  if(xPos> 980){
//xPos=980;

//to wrap right to left
if (xPos> width){
    xPos= 0;
    }
    //if (yPos> 480){
    //  //to stop
    //  yPos=480;
      //to wrap bottom to top
        if (yPos> 500){
    yPos= -25;
    }
    //to wrap top to bottom
    if (yPos< -25){
      yPos=500;
      //if (yPos<0){
      //  yPos=0;
    }
 //view position data
  println(xPos);
  println(yPos);
  //load ship
  image(ship,xPos, yPos, 60, 60);
}

//begin movement
void keyPressed() {
  if (key == 'a') {
    left = true;
  }

  if (key == 's') {
    down = true;
  } 
  if (key == 'd') {
    right = true;
  }
  if (key == 'w') {
    up = true;
  }
}

//stop movement
void keyReleased() {
  if (key == 'a') {
    left = false;
  }


  if (key == 'd') {
    right = false;
  }


  if (key == 'w') {
    up = false;
  }

  if (key == 's') {
    down = false;
  }
}
