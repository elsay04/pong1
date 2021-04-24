void reset() {
  //scores
  leftscore = 0;
  rightscore = 0;
  
  //paddles;
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  stroke(119, 131, 128);
  fill(255);
  circle(leftx, lefty, leftd);
  stroke(19, 76, 118);
  circle(rightx, righty, rightd);
}
