class hit {
  //instance variables
  float x, y, out, size, lives, clock;
  
  //constructor: defines how object is "born"
  hit() {
    x = puckx;
    y = pucky;
    size = 5;
    out = -5;
    lives = 1;
    clock = 10;
  }
  
  //behaviour functions: how it acts
  void act() {
    fill(black);
    stroke(black);
    if(clockstop == 0 || clock == 0) showthehit = false;
    clock--;
    pushMatrix();
    translate(x,y);
    for(int i = 0; i < 5; i++) {
      rotate(radians(360/5));
      if(clockstop < 0) out += 0.4;
      triangle(-size*2,size*15+out, size*2,size*15+out, 0,size*8+out);
    }
    popMatrix();
  }
}
