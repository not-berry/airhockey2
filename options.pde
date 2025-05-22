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
  
  
  stroke(black);
  pushMatrix();
  translate(60,60);
  for(int i = 0; i < 10; i++) {
    fill(colour[i]);
    stroke(black);
    if(dist(colourX[i]+60,colourY[i]+60, mouseX,mouseY) < 55) stroke(white);
    circle(colourX[i],colourY[i], 100);
  }
  popMatrix();
}

void optionsClicks() {
  if (mouseX > 5 && mouseX < 115 && mouseY > height-65 && mouseY < height-5) mode = INTRO;
  for(int i = 0; i < 10; i++) {
    //if(dist(colourX[i],colourY[i], mouseX,mouseY) < 55)
  }
}
