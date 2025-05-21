void options() {
  background(blue);
  fill(red);
  strokeWeight(0);
  rect(0,0, 600,600);
  
  //play button 
  pushMatrix();
  translate(60,height-60);
  bold(10,white);
  if (mouseX > 5 && mouseX < 115 && mouseY > height-65 && mouseY < height-5) fill(150);
  rect(-50,0, 100,50);
  strokeWeight(7);
  line(30,18, 30,28);
  line(30,28, -25,28);
  line(-20,23, -30,28);
  line(-20,33, -30,28);
  popMatrix();
}

void optionsClicks() {
  if (mouseX > 5 && mouseX < 115 && mouseY > height-65 && mouseY < height-5) mode = INTRO;
}
