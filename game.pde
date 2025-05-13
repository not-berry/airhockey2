void game() {
  background(blueblue);
  
  clockstop -= 1;
  
  if(puckx >= width-140 && clockstop < 0) {
    clockstop = 250;
    scorea += 1;
  }
  if(puckx <= 140 && clockstop < 0) {
    clockstop = 250;
    scoreb += 1;
  }
  
  if(clockstop == 0 && puckx >= width-140) {
    vx = vy = 0;
    puckx = width/2 + 100;
    pucky = height/2;
    x1 = 300;
    y1 = height/2;
    x2 = width - 300;
    y2 = height/2;
    if(scorea == 7) mode = GAMEOVER;
  }
  if(clockstop == 0 && puckx <= 140) {
    vx = vy = 0;
    puckx = width/2 - 100;
    pucky = height/2;
    x1 = 300;
    y1 = height/2;
    x2 = width - 300;
    y2 = height/2;
    if(scoreb == 7) mode = GAMEOVER;
  }
  
  //Arena Bottom
  bold(20,white);
  rect(100,50, width-200,height-100);
  stroke(redred);
  line(width/2,55, width/2,height-55);
  strokeWeight(0);
  fill(red);
  rect(100,50, 73,height-100);
  fill(blue);
  rect(width-100,50, -73,height-100);
  
  //puck
  stroke(black, 80);
  circle(puckx, pucky+3, 50);
  bold(15,grey);
  circle(puckx, pucky, 50);
  
  //player1
  pushMatrix();
  translate(x1,y1);
  stroke(black, 80);
  circle(0,7,100);
  bold(15,red);
  circle(0,0,100);
  circle(0,0,40);
  popMatrix();
  
  //player2
  pushMatrix();
  translate(x2,y2);
  stroke(black, 80);
  circle(0,7,100);
  bold(15,blue);
  circle(0,0,100);
  circle(0,0,40);
  popMatrix();
  
  //Arena Top
  bold(40,black);
  stroke(black, 80);
  line(110,80,width-110,80);
  bold(20,white);
  noFill();
  rect(100,50, width-200,height-100);
  
  //score
  strokeWeight(0);
  fill(white);
  stroke(white);
  circle(width/2,0, 150);
  fill(black);
  circle(width/2,30, 10);
  titletext(50);
  fill(red);
  text(scorea, width/2 - 25,28);
  fill(blue);
  text(scoreb, width/2 + 25,28);
  
  
  
  
  
  //moving
  vx *= 0.996;
  vy *= 0.996;
  if(clockstop < 0) puckx += vx;
  if(clockstop < 0) pucky += vy;
  
  //player moving
  
  if(aKey && wKey || aKey && sKey || dKey && wKey || dKey && sKey) div1 = 1.4;
  else div1 = 1;
  
  if(aKey2 && wKey2 || aKey2 && sKey2 || dKey2 && wKey2 || dKey2 && sKey2) div2 = 1.4;
  else div2 = 1;
  
  prevxa = x1;
  prevya = y1;
  prevxb = x2;
  prevyb = y2;
  
  if(aKey && clockstop < 0) x1 -= speeda/div1;
  if(dKey && clockstop < 0) x1 += speeda/div1;
  if(wKey && clockstop < 0) y1 -= speeda/div1;
  if(sKey && clockstop < 0) y1 += speeda/div1;
  
  if(aKey2 && clockstop < 0) x2 -= speedb/div2;
  if(dKey2 && clockstop < 0) x2 += speedb/div2;
  if(wKey2 && clockstop < 0) y2 -= speedb/div2;
  if(sKey2 && clockstop < 0) y2 += speedb/div2;
  
  
  //bouncing
  if (puckx < 140) {
    vx *= -1;
    puckx = 140;
  }
  if (puckx > width-140) {
    vx *= -1;
    puckx = width-140;
  }
  if (pucky < 90) {
    vy *= -1;
    pucky = 90;
  }
  if (pucky > height-90) {
    vy *= -1;
    pucky = height-90;
  }
  
  if(dist(x1,y1, puckx,pucky) <= 90) {
    hitshot.stop();
    hitshot.play();
    //hitshot.jump(hitshot.duration(1));
    vx = (puckx - x1)*(dist(x1,y1, prevxa,prevya)/50+0.02);
    vy = (pucky - y1)*(dist(x1,y1, prevxa,prevya)/50+0.02);
    if(dist(x1,y1, prevxa,prevya) > 0) {
      playerHit[0] = new hit();
      showthehit = true;
    }
  }
  if(dist(x2,y2, puckx,pucky) <= 90) {
    vx = (puckx - x2)*(dist(x2,y2, prevxb,prevyb)/50+0.02);
    vy = (pucky - y2)*(dist(x2,y2, prevxb,prevyb)/50+0.02);
    if(dist(x2,y2, prevxb,prevyb) > 0) {
      playerHit[0] = new hit();
      showthehit = true;
    }
  }
  
  
  
  if(x1 <= 165) x1 = 165;
  if(x1 >= width/2-60) x1 = width/2-60;
  if(y1 <= 115) y1 = 115;
  if(y1 >= height-115) y1 = height-115;
  
  if(x2 <= width/2+60) x2 = width/2+60;
  if(x2 >= width-165) x2 = width-165;
  if(y2 <= 115) y2 = 115;
  if(y2 >= height-115) y2 = height-115;
  
  
  //exit
  strokeWeight(10);
  stroke(grey);
  fill(grey, 50);
  if(dist(mouseX,mouseY, width/2,height) < 75 && isheld) held += 2;
  arc(width/2,height, 250,250, radians(180),radians(held));
  if(held == 360) exit();
  

  strokeWeight(0);
  fill(white);
  stroke(white);
  circle(width/2,height, 150);
  titletext(50);
  text("EXIT", width/2,height-30);
  
  
  
  if(showthehit) {
    playerHit[0].act();
  }
}

void gameClicks() {
    isheld = false;
    held = 180;
    if(dist(mouseX,mouseY, width/2,height) >= 75) mode = PAUSE;
}

void keyPressed() {
  if(key == 'a' || key == 'A') aKey = true;
  if(key == 'd' || key == 'D') dKey = true;
  if(key == 'w' || key == 'W') wKey = true;
  if(key == 's' || key == 'S') sKey = true;
    
  if(keyCode == LEFT) aKey2 = true;
  if(keyCode == RIGHT) dKey2 = true;
  if(keyCode == UP) wKey2 = true;
  if(keyCode == DOWN) sKey2 = true;
}
  
void keyReleased() {
  if(key == 'a' || key == 'A') aKey = false;
  if(key == 'd' || key == 'D') dKey = false;
  if(key == 'w' || key == 'W') wKey = false;
  if(key == 's' || key == 'S') sKey = false;
    
  if(keyCode == LEFT) aKey2 = false;
  if(keyCode == RIGHT) dKey2 = false;
  if(keyCode == UP) wKey2 = false;
  if(keyCode == DOWN) sKey2 = false;
}

void mousePressed() {
  isheld = true;
}
