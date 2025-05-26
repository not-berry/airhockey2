void mouseReleased() {
  if(mode == INTRO) {
    introClicks();
  } else if(mode == GAME) {
    gameClicks();
  } else if(mode == PAUSE) {
    pauseClicks();
  } else if(mode == GAMEOVER) {
    gameoverClicks();
  } else if(mode == OPTIONS) {
    optionsClicks();
  }
}

void mousePressed() {
  if(mode == INTRO) {
    introPressed();
  } else if(mode == GAME) {
    gamePressed();
  } else if(mode == PAUSE) {
    pausePressed();
  } else if(mode == GAMEOVER) {
    gameoverPressed();
  } else if(mode == OPTIONS) {
    optionsPressed();
  }
}
