void pause() {
  fill(255);
  textSize(80);
  textFont(font);
  text("PAUSE", 350, 500);
  noFill();
  strokeWeight(5);
  stroke(255);
  rect(340, 450, 150, 70);
  
}

void pauseClicks() {
  mode = GAME;
}
