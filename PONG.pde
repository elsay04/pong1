// Elsa You
// pong 

//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//images
PImage intro;
PImage game;
PImage ball;

//fonts
PFont carto;
PFont font;

//circle radius, diameters,...
float ld;
float rd;
float leftr;
float R;
float rightr;


//entity variables 
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy; //target velocity

//keyboard variables
boolean wkey, skey, upkey, downkey; 


//scoring
int leftscore, rightscore, timer;




boolean AI;





void setup() {
  size(800, 600);
  mode = INTRO;
  
  //font 
  carto = createFont("CartooNature.ttf", 100);
  font = createFont("game_over.ttf", 100);
  
  //images
  intro = loadImage("intro.jpg");
  game = loadImage("game.png");
  ball = loadImage("totoro1.png");
 
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //initialize score
  rightscore = leftscore = 0;
  timer = 50;
  
   
  //initialize keyboard varibles
  wkey = skey = upkey = downkey = false;
  
  
 
  
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
  
  
