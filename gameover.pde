void gameover() {
  background(white);
  
  titletext(100);
  text("GAME OVER", width/2,height/2-40);
  titletext(70);
  if(scorea == 3) text("red wins", width/2,height/2+30);
  if(scoreb == 3) text("blue wins", width/2,height/2+30);
}

void gameoverClicks() {
  
}
