void gameover() {
  
 if (leftscore == 3){
   fill(255);
   textSize(80);
   textFont(font, 100);
   text("LEFT WINS!", 200, 500);
 } else if (rightscore == 3) {
   fill(255);
   textSize(80);
   textFont(font, 100);
   text("RIGHT WINS!", 400, 500);
 }
  
  
  
}

void gameoverClicks() {
  reset();
  mode = INTRO;
  
}
