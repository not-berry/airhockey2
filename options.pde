void options() {
  background(blue);
  fill(red);
  noStroke();
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
  
  stroke(black);
  fill(black);
  textSize(30);
  text("player 2", width-60,25);
  text("player 1", width-170,25);
  pushMatrix();
  translate(width-170,100);
  for(int i = 0; i < 10; i++) {
    fill(colour[i]);
    stroke(black);
    if(dist(colourX[i]+width-170,colourY[i]+100, mouseX,mouseY) < 55 || red == colour[i] && i < 5|| blue == colour[i] && i >= 5) stroke(white);
    circle(colourX[i],colourY[i], 100);
  }
  popMatrix();
}

void optionsClicks() {
  if (mouseX > 5 && mouseX < 115 && mouseY > height-65 && mouseY < height-5) mode = INTRO;
  for(int i = 0; i < 10; i++) {
    if(dist(colourX[i]+width-170,colourY[i]+100, mouseX,mouseY) < 55 && i < 5) red = colour[i];
    if(dist(colourX[i]+width-170,colourY[i]+100, mouseX,mouseY) < 55 && i >= 5) blue = colour[i];
  }
}
