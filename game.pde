void game() {
   image(game, 0, 0, 800, 600);
   
   fill(0);
   line(400, 100, 400, 500);
   
   //scoreboard
   textSize(255);
   textFont(font, 100);
   fill(200, 206, 204);
   text("SCORE: " + leftscore, width/4, 100);
   fill(194, 218, 240);
   text("SCORE: " + rightscore, 2.5*width/4, 100);
   //text(timer, 3*width/4, 550);
   timer = timer - 1;
   
   
   
   //draw paddles
   stroke(119, 131, 128);
   fill(255);
   circle(leftx, lefty, leftd);
    if (lefty < 100) {
     lefty = 100;
   }
    if (lefty > 500) {
     lefty = 500;
   }
   stroke(19, 76, 118);
   circle(rightx, righty, rightd);
     if (righty < 100) {
     righty = 100;
   }
     if (righty > 500) {
     righty = 500;
   }
   
   //move paddles
   if (wkey == true) lefty = lefty - 10;
   if (skey == true) lefty = lefty + 10;
   
   if (AI == false) {
     if (upkey == true) righty = righty - 10;
     if (downkey == true) righty = righty + 10;
   } else {
     if (bally < righty) {
       righty = righty-1.5;
     }
     if (bally > righty) {
       righty = righty+ 1.5;
     }
   }
   
   //ball
   stroke(19, 76, 118);
   strokeWeight(10);
   fill(38, 109, 162);
   circle(ballx, bally, balld);
   image(ball, 370, 250);
   
   //ball moving
   if (timer < 0) {
   ballx = ballx + vx;
   bally = bally + vy;
   }
   
   //bouncing 
   if (bally < balld/2 || bally > height -balld/2) {
     vy = vy * -1;
   }
   
   //scoring
   if (ballx < 0) {
     rightscore++;
     ballx = width/2;
     bally = height/2;
     timer = 50;
   }
   
   if (ballx > 800) {
     leftscore++;
     ballx = width/2;
     bally = height/2;
     timer = 50;
   }
  
  
   
   //boucing off the paddle 
  ld = dist(leftx, lefty, ballx, bally);
  rd = dist(rightx, righty, ballx, bally);
  leftr = leftd/2;
  R = balld/2;
  rightr = rightd/2;
  
  
   if (ld <= leftr + R) {
     vx = (ballx - leftx)/10;
     vy = (bally - lefty)/10;
   } 
   if (rd <= rightr + R) {
     vx = (ballx - rightx)/10;
     vy = (bally - righty)/10;
   }
   
   //gameover 
   if (leftscore == 3) {
     mode = GAMEOVER;
   } else if (rightscore == 3) {
     mode = GAMEOVER;
   }
   
   
}



void gameClicks() {
  mode = PAUSE;
}
