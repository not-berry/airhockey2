void gameover() {
  if(scorea == 3) background(red);
  if(scoreb == 3) background(blue);
  
  //who wins
  titletext(100);
  text("GAME OVER", width/2,height/2-40);
  titletext(70);
  if(scorea == 3) text("red wins", width/2,height/2+30);
  if(scoreb == 3) text("blue wins", width/2,height/2+30);
  
  //play button 
  pushMatrix();
  translate(width/2,height/2+150);
  bold(20,white);
  rect(-200,0, 400,100);
  titletext(70);
  text("PLAY AGAIN", 0,50);
  popMatrix();
}

void gameoverClicks() {
  if (mouseX > width/2 - 200 && mouseX < width/2 + 200 && mouseY > height/2+150 && mouseY < height/2+250) {
    mode = GAME;
    scorea = scoreb = 0;
    puckx = width/2 - 100;
    if(int(random(2)) == 0) puckx += 200;
  }
}
