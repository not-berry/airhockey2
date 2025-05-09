import processing.sound.*;

//Christopher Bennett
//Block 2-3
//April 27, 2025

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//TARGET VARIABLES
float puckx, pucky;
float x,y, x2,y2;
float vx, vy; //target velocity
int scorea, scoreb;
float speeda, speedb;
float speedcapa, speedcapb;
float div1 = 1;
float div2 = 1;
float prevxa = 0, prevya = 0;
float prevxb = 0, prevyb = 0;
float clockstop = -1;
float held = 180;
boolean isheld;

//KEY VARIABLES
boolean aKey, dKey, wKey, sKey;
boolean aKey2, dKey2, wKey2, sKey2;

//COLOUR PALLETTE
color black = 0;
color grey = 50;
color white = 255;
color red = #ED685F;
color blue = #559DD2;
color redred = #D64343;
color blueblue = #172d44;

//sound
//SoundFile fail;

void setup() {
  //fail = new SoundFile(this, "FAILURE.wav");
  size(1200,600);
  frameRate(180);
  
  //textAlign(CENTER, CENTER);
  textAlign(CENTER, CENTER);
   
  mode = INTRO;
  
  //target initialization
  puckx = width/2 - 100;
  pucky = height/2;
  x = 300;
  y = height/2;
  x2 = width - 300;
  y2 = height/2;
  vx = 0;
  vy = 0;
  scorea = 0;
  scoreb = 0;
  speeda = speedb = 5;
  speedcapa = speedcapb = 5;
  
  
  //puck side
  if(int(random(2)) == 0) puckx += 200;
}

void draw() {
  if(mode == INTRO) {
    intro();
  } else if(mode == GAME) {
    game();
  } else if(mode == PAUSE) {
    pause();
  } else if(mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  } 

}
