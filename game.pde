void game() {
  background(blueblue);
  
  if(puckx >= width-140 && pucky >= 200 && pucky <= height-200) {
    vx = vy = 0;
    puckx = width/2 + 100;
    pucky = height/2;
    x = 300;
    y = height/2;
    x2 = width - 300;
    y2 = height/2;
    scorea += 1;
    if(scorea == 3) mode = GAMEOVER;
  }
  if(puckx <= 140 && pucky >= 200 && pucky <= height-200) {
    vx = vy = 0;
    puckx = width/2 - 100;
    pucky = height/2;
    x = 300;
    y = height/2;
    x2 = width - 300;
    y2 = height/2;
    scoreb += 1;
    if(scoreb == 3) mode = GAMEOVER;
  }
  
  //Arena Bottom
  bold(20,red);
  circle(300,height/2, 500);
  bold(20,blue);
  circle(width-300,height/2, 500);
  bold(20,white);
  rect(100,50, width-200,height-100);
  stroke(redred);
  line(width/2,55, width/2,height-55);
  
  //puck
  stroke(black, 80);
  circle(puckx, pucky+3, 50);
  bold(15,grey);
  circle(puckx, pucky, 50);
  
  //player1
  pushMatrix();
  translate(x,y);
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
  
  //exit
  strokeWeight(0);
  fill(white);
  stroke(white);
  circle(width/2,height, 150);
  titletext(50);
  text("EXIT", width/2,height-30);
  
  
  
  
  //moving
  //vx *= 0.995;
  //vy *= 0.995;
  puckx += vx;
  pucky += vy;
  
  //player moving
  
  if(aKey && wKey || aKey && sKey || dKey && wKey || dKey && sKey) div1 = 1.3;
  else div1 = 1;
  
  if(aKey2 && wKey2 || aKey2 && sKey2 || dKey2 && wKey2 || dKey2 && sKey2) div2 = 1.3;
  else div2 = 1;
  
  if(aKey) x -= speeda/div1;
  if(dKey) x += speeda/div1;
  if(wKey) y -= speeda/div1;
  if(sKey) y += speeda/div1;
  
  if(aKey2) x2 -= speedb/div2;
  if(dKey2) x2 += speedb/div2;
  if(wKey2) y2 -= speedb/div2;
  if(sKey2) y2 += speedb/div2;
  
  
  //if(aKey && speeda < 2 || dKey && speeda < 2 || wKey && speeda < 2 || sKey && speeda < 3) {
  //  speeda = 2;
  //} else {
  //  speeda = 0.01;
  //}
  
  //if(aKey2 && speedb < 2 || dKey2 && speedb < 2 || wKey2 && speedb < 2 || sKey2 && speedb < 3) {
  //  speedb = 2;
  //} else {
  //  speedb = 0.01;
  //}
  
  
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
  
  if(dist(x,y, puckx,pucky) <= 75) {
    //vx = vy = 0;
    vx = (puckx - x)/10;
    vy = (pucky - y)/10;
  }
  if(dist(x2,y2, puckx,pucky) <= 75) {
    //vx = vy = 0;
    vx = (puckx - x2)/10;
    vy = (pucky - y2)/10;
  }
  
  
  
  if(x <= 165) x = 165;
  if(x >= width/2-60) x = width/2-60;
  if(y <= 115) y = 115;
  if(y >= height-115) y = height-115;
  
  if(x2 <= width/2+60) x2 = width/2+60;
  if(x2 >= width-165) x2 = width-165;
  if(y2 <= 115) y2 = 115;
  if(y2 >= height-115) y2 = height-115;
  
  //stroke(red);
  //strokeWeight(15);
  //circle(140,200, 50);
}

void gameClicks() {
    
}

void keyPressed() {
  if(key == 'a') aKey = true;
  if(key == 'd') dKey = true;
  if(key == 'w') wKey = true;
  if(key == 's') sKey = true;
    
  if(keyCode == LEFT) aKey2 = true;
  if(keyCode == RIGHT) dKey2 = true;
  if(keyCode == UP) wKey2 = true;
  if(keyCode == DOWN) sKey2 = true;
}
  
void keyReleased() {
  if(key == 'a') aKey = false;
  if(key == 'd') dKey = false;
  if(key == 'w') wKey = false;
  if(key == 's') sKey = false;
    
  if(keyCode == LEFT) aKey2 = false;
  if(keyCode == RIGHT) dKey2 = false;
  if(keyCode == UP) wKey2 = false;
  if(keyCode == DOWN) sKey2 = false;
}
