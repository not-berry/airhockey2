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
final int OPTIONS = 4;

//TARGET VARIABLES
float puckx, pucky;
float x1,y1, x2,y2;
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
boolean showthehit = false;
float ps = 1;
float d = 100;
float sliderX1 = 400;
boolean change1 = false;
float speed = 0.8;
float sliderX2 = 235;
boolean change2 = false;
float brightness = 0;
float sliderX3 = 550;
boolean change3 = false;

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

//colour arrays
int[] colourX;
int[] colourY;
color[] colour;

//sound
SoundFile hitshot;
SoundFile hitboard;
SoundFile grug;

//class call
hit[] playerHit;
int numhits = 0;

void setup() {
  hitshot = new SoundFile(this, "mixkit-arrow-shot-through-air-2771.wav");
  hitboard = new SoundFile(this, "mixkit-game-gun-shot-1662-[AudioTrimmer.com].mp3");
  grug = new SoundFile(this, "grug-[AudioTrimmer.com].mp3");
  size(1200,600);
  frameRate(180);
  
  //textAlign(CENTER, CENTER);
  textAlign(CENTER, CENTER);
   
  mode = INTRO;
  
  numhits = 50;
  playerHit = new hit[1]; //constructor
  //for(int i = 0; i < numhits; i++) {
  //  playerHit[i] = new hit();
  //}
  
  //target initialization
  puckx = width/2 - 100;
  pucky = height/2;
  x1 = 300;
  y1 = height/2;
  x2 = width - 300;
  y2 = height/2;
  vx = 0;
  vy = 0;
  scorea = 0;
  scoreb = 0;
  speeda = speedb = 5;
  speedcapa = speedcapb = 5;
  
  colorMode(HSB);
  red = color(0, 150,300);
  blue = color(150, 150,300);
  
  //array cast
  for(int i = 0; i < 11; i++) {
    colourX = new int[i];
    colourY = new int[i];
    colour = new color[i];
  }
  
  for(int i = 0; i < 10; i++) {
    colour[i] = color(i*50, 150,300);
    colourY[i] = i*110;
    if(i < 5) colourX[i] = 0;
    if(i >= 5) {
      colourX[i] = 110;
      colourY[i] -= 550;
      colour[i] = color((i-5)*50, 150,300);
    }
  }
  
  //grug.play();
  
  
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
  } else if(mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  } 

}
