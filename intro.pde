void intro() {
  background(blue);
  fill(red);
  strokeWeight(0);
  rect(0,0, 600,600);
  
  
  //game text
  titletext(100);
  text("AIR HOCKEY", width/2-5,height/2-40);
  
  //play button 
  pushMatrix();
  translate(width/2,height/2+50);
  bold(20,white);
  if (mouseX > width/2 - 110 && mouseX < width/2 + 110 && mouseY > height/2+40 && mouseY < height/2+160) fill(150);
  rect(-100,0, 200,100);
  titletext(70);
  text("PLAY", 0,50);
  popMatrix();
  
  //options button
  pushMatrix();
  translate(width/2,height/2+180);
  bold(15,white);
  if (mouseX > width/2 - 85 && mouseX < width/2 + 85 && mouseY > height/2+170 && mouseY < height/2+240) fill(150);
  rect(-75,0, 150,50);
  titletext(35);
  text("options", 0,23);
  popMatrix();
  
  //design
  pushMatrix();
  translate(100,400);
  scale(2);
  stroke(black, 80);
  circle(0,7,100);
  bold(15,red);
  circle(0,0,100);
  circle(0,0,40);
  popMatrix();
  
  pushMatrix();
  translate(1000,200);
  scale(2);
  stroke(black, 80);
  circle(0,7,100);
  bold(15,blue);
  circle(0,0,100);
  circle(0,0,40);
  popMatrix();
  
}

void introClicks() {
  if (mouseX > width/2 - 110 && mouseX < width/2 + 110 && mouseY > height/2+40 && mouseY < height/2+160) {
    isheld = false;
    mode = GAME;
  }
  if (mouseX > width/2 - 85 && mouseX < width/2 + 85 && mouseY > height/2+170 && mouseY < height/2+240) {
    mode = OPTIONS;
  }
}
