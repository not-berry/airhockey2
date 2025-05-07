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
  rect(-100,0, 200,100);
  titletext(70);
  text("PLAY", 0,50);
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
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2+50 && mouseY < height/2+150) {
    mode = GAME;
  }
}
