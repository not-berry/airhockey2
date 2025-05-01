void intro() {
  background(white);
  
  //play button 
  pushMatrix();
  translate(width/2,height/2+50);
  bold(20,white);
  rect(-100,0, 200,100);
  titletext(70);
  text("PLAY", 0,50);
  popMatrix();
}

void introClicks() {
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2+50 && mouseY < height/2+150) {
    mode = GAME;
  }
}
