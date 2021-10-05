//Vanessa Lu
//Oct. 4, 2021
//Asteroid Game

//mode framework----------------------------------------------------------------------------------------------
final int INTRO = 0;
final int GAME  = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
final int OPTIONS = 4;
int mode = GAME;

//game variables
boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList<Bullet> myBullets;
ArrayList<PImage> bg;
int nFrames = 0;
int frames;

void setup() {
  size(800,600);
  imageMode(CENTER);
  myShip = new Ship();
  myBullets = new ArrayList<Bullet>();
  bg = new ArrayList<PImage>();
  
  int i = 0;
  while (i < 67) {
    bg.add(loadImage("frame_" + i + "_delay-0.05s.gif.gif"));
    i++;
  }
}

void draw() {

//mode framework------------------------------------------------------------------------------------------------
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
