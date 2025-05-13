void gameover() {
  if(scorea == 7) background(red);
  if(scoreb == 7) background(blue);
  
  //who wins
  titletext(100);
  text("GAME OVER", width/2,height/2-40);
  titletext(70);
  if(scorea == 7) text("red wins", width/2,height/2+30);
  if(scoreb == 7) text("blue wins", width/2,height/2+30);
  
  //play button 
  pushMatrix();
  translate(width/2,height/2+150);
  bold(20,white);
  if (mouseX > width/2 - 210 && mouseX < width/2 + 210 && mouseY > height/2+140 && mouseY < height/2+260) fill(200);
  rect(-200,0, 400,100);
  titletext(70);
  text("PLAY AGAIN", 0,50);
  popMatrix();
}

void gameoverClicks() {
  if (mouseX > width/2 - 210 && mouseX < width/2 + 210 && mouseY > height/2+140 && mouseY < height/2+260) {
    isheld = false;
    mode = GAME;
    scorea = scoreb = 0;
    puckx = width/2 - 100;
    if(int(random(2)) == 0) puckx += 200;
  }
}
