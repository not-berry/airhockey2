void titletext(float size) {
  textAlign(CENTER, CENTER);
  textSize(size);
  fill(black);
}

void normaltext(float size) {
  textAlign(LEFT, TOP);
  textSize(size);
  fill(black);
}

void bold(float size, color c1) {
  strokeWeight(size);
  stroke(black);
  fill(c1);
}
