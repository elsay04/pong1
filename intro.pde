void intro() {
  //background
  image(intro, 0, 0, 800, 600);
  fill(234, 217, 185);
  textSize(70);
  textFont(carto, 100);
  text("PONG", 200, 270);
  
  
  //button for single player 
  tactile1(100, 500, 150, 80);
  fill(237, 199, 168);
  rect(100, 500, 150, 80);
  fill(0);
  textSize(20);
  text("ONE PLAYER", 125, 550);
  
  
  //button for two players
  tactile1(500, 500, 150, 80);
  fill(237, 199, 168);
  rect(500, 500, 150, 80);
  fill(0);
  textSize(20);
  text("TWO PLAYERS", 520, 550);
}

void tactile1(int x, int y, int f, int d) {
  if (mouseX > x && mouseX < x+f && mouseY > y && mouseY < y+f) {
    stroke(255);
    strokeWeight(10); 
  } else {
    strokeWeight(10);
    stroke(222, 175, 136);
  }
}

void introClicks() {
  //one player click 100, 500, 150, 80
    if (mouseX > 100 && mouseX < 250 && mouseY > 500 && mouseY < 580) {
    mode = GAME;
    AI = true;
    }
  
  //two players click 
    if (mouseX > 500 && mouseX < 650 && mouseY > 500 && mouseY < 580) {
      mode = GAME;
      AI = false;
  } 
}
