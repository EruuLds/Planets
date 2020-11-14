void homeButtonSet(){
  startButton.position(sx[12],sy[13]);
  startButton.display();
  simButton.position(sx[20],sy[13]);
  simButton.display();
  musicButton.position(sx[30],sy[2]);
  musicButton.display();
  exitButton.position(sx[2],sy[2]);
  exitButton.display();
  infoButton.position(sx[30],sy[16]);
  infoButton.display();
}

void homeButtonSystem(){
  if(startButton.hoover()){
    screen = 1;
    release.play();
  }
  if(simButton.hoover()){
    screen = 14;
    release.play();
    if(music){
      song2.loop();
      song1.stop();
    }
  }
  if(exitButton.hoover()){
    release.play();
    exit();
  }
  if(infoButton.hoover()){
    release.play();
    infoa = true;
  }
}

void infoCardSet(){
  fill(0,128);
  rect(0,0,width,height);
  noFill();
  image(infoCard,centerDisplay.x,centerDisplay.y);
  closeButton.position(sx[20],sy[3]);
  closeButton.display();
  seeButton.position(sx[16],sy[15]);
  seeButton.display();
}

void infoCardSystem(){
  if(closeButton.hoover()){
    infoa = false;
    release.play();
  }
  if(seeButton.hoover()){
    link("https://creativecommons.org/licenses/by/3.0/");
    release.play();
  }
}

void infoButtonSet(){
  backButton.position(sx[3],sy[15]);
  backButton.display();    
  nextButton.position(sx[29],sy[15]);
  nextButton.display();
  musicButton.position(sx[29],sy[3]);
  musicButton.display();
  indexButton.position(sx[3],sy[3]);
  indexButton.display();
}

void infoButtonSystem(){
  if(backButton.hoover()){
    screen--;
    release.play();
  }
  if(nextButton.hoover()){
    screen++;
    release.play();
  }
  if(indexButton.hoover()){
    screen = 0;
    release.play();
  }
}

void lastSlideButtonSet(){
  backButton.position(sx[3],sy[15]);
  backButton.display();
  musicButton.position(sx[29],sy[3]);
  musicButton.display();
  indexButton.position(sx[3],sy[3]);
  indexButton.display();
  simButton.position(sx[16],sy[12]);
  simButton.display();
}

void lastSlideButtonSystem(){
  if(backButton.hoover()){
    screen = 12;
    release.play();
  }
  if(simButton.hoover()){
    screen = 14;
    release.play();
    if(music){
      song2.loop();
      song1.stop();
    }
  }
  if(indexButton.hoover()){
    screen = 0;
    release.play();
  }
}

void simButtonSet(){
  indexButton.position(sx[2],sy[2]);
  indexButton.display();
  addButton.position(sx[2],sy[6]);
  if(simv<10)
  addButton.display();
  else
  image(addl,sx[2],sy[6]);
  resetButton.position(sx[2],sy[9]);
  if(simv!=2)
  resetButton.display();
  else
  image(resetl,sx[2],sy[9]);
  lessButton.position(sx[2],sy[12]);
  if(simv>0)
  lessButton.display();
  else
  image(lessl,sx[2],sy[12]);
  musicButton.position(sx[2],sy[16]);
  musicButton.display();
}

void simButtonSystem(){
  if(indexButton.hoover()){
    infob = false;
    screen = 0;
    release.play();
    song2.stop();
    if(music)
    song1.loop();
  }
  if(addButton.hoover()&&simv<10){
    simv++;
    infob = false;
    release.play();
  }
  if(resetButton.hoover()&&simv!=2){
    simv=2;
    infob = false;
    release.play();
  }
  if(lessButton.hoover()&&simv>0){
    simv--;
    infob = false;
    release.play();
  }
}

void orbitSelectSystem(){
  if(sunHoover()){
    planetInfo = 2;
    cards.play();
    infob = false;
  }
  if(mercury.orbitHoover()){
    planetInfo = 3;
    cards.play();
    infob = false;
  }
  if(venus.orbitHoover()){
    planetInfo = 4;
    cards.play();
    infob = false;
  }
  if(earth.orbitHoover()){
    planetInfo = 5;
    cards.play();
    infob = false;
  }
  if(mars.orbitHoover()){
    planetInfo = 7;
    cards.play();
    infob = false;
  }
  if(jupiter.orbitHoover()){
    planetInfo = 9;
    cards.play();
    infob = false;
  }
  if(saturn.orbitHoover()){
    planetInfo = 11;
    cards.play();
    infob = false;
  }
  if(uranus.orbitHoover()){
    planetInfo = 13;
    cards.play();
    infob = false;
  }
  if(neptune.orbitHoover()){
    planetInfo = 15;
    cards.play();
    infob = false;
  }
}

void cardButtonSet(){
  pinfoButton.position(sx[30],sy[3]+(sy[1]/2));
  pinfoButton.display();
  
  closeButton.position(sx[30],sy[2]);
  closeButton.display();
  if(planetInfo>4 && planetInfo%2!=0){
  seeButton.position(sx[28],sy[16]);
  seeButton.display();
  }
}

void cardButtonSystem(){
  if(pinfoButton.hoover()){
    infob = true;
    cards.play();
  }
  if(closeButton.hoover() && infob == false){
    planetInfo = 1;
    release.play();
  }
  if(asteroidsHoover()){
    planetInfo = 18;
    cards.play();
  }
  if(planetInfo>4 && planetInfo%2!=0 && seeButton.hoover()){
    planetInfo++;
    cards.play();
  }
}

void pinfoCardSet(){
  fill(0,128);
  rect(sx[21],sy[1],sx[31],sy[17],30);
  noFill();
  image(pinfoCard,sx[26],sy[9]);
  closeButton.position(sx[30],sy[7]);
  closeButton.display();
  goButton.position(sx[26],sy[10]);
  goButton.display();
}

void pinfoCardSystem(){
  if(closeButton.hoover()){
    infob = false;
    release.play();
  }
  
  if(goButton.hoover()){
    if(planetInfo==1)
    link("https://spaceplace.nasa.gov/menu/solar-system/sp/");
    if(planetInfo==2)
    link("https://spaceplace.nasa.gov/menu/sun/sp/");
    if(planetInfo==3)
    link("https://spaceplace.nasa.gov/all-about-mercury/sp/");
    if(planetInfo==4)
    link("https://spaceplace.nasa.gov/all-about-venus/sp/");
    if(planetInfo==5)
    link("https://spaceplace.nasa.gov/all-about-earth/sp/");
    if(planetInfo==6)
    link("https://spaceplace.nasa.gov/how-many-moons/sp/");
    if(planetInfo==7)
    link("https://spaceplace.nasa.gov/all-about-mars/sp/");
    if(planetInfo==8)
    link("https://spaceplace.nasa.gov/how-many-moons/sp/");
    if(planetInfo==9)
    link("https://spaceplace.nasa.gov/all-about-jupiter/sp/");
    if(planetInfo==10)
    link("https://spaceplace.nasa.gov/how-many-moons/sp/");
    if(planetInfo==11)
    link("https://spaceplace.nasa.gov/all-about-saturn/sp/");
    if(planetInfo==12)
    link("https://spaceplace.nasa.gov/how-many-moons/sp/");
    if(planetInfo==13)
    link("https://spaceplace.nasa.gov/all-about-uranus/sp/");
    if(planetInfo==14)
    link("https://spaceplace.nasa.gov/how-many-moons/sp/");
    if(planetInfo==15)
    link("https://spaceplace.nasa.gov/all-about-neptune/sp/");
    if(planetInfo==16)
    link("https://spaceplace.nasa.gov/how-many-moons/sp/");
    if(planetInfo==18)
    link("https://spaceplace.nasa.gov/asteroid/sp/");
    
    release.play();
  }
}

void simVSystem_Display(){
  switch(simv){
    case 0:
      simvm = 0.25;
      image(v1,sx[19],sy[17]);
    break;
    case 1:
      simvm = 0.5;
      image(v2,sx[19],sy[17]);
    break;
    case 2:
      simvm = 1.0;
      image(v3,sx[19],sy[17]);
    break;
    case 3:
      simvm = 2.0;
      image(v4,sx[19],sy[17]);
    break;
    case 4:
      simvm = 4.0;
      image(v5,sx[19],sy[17]);
    break;
    case 5:
      simvm = 7.0;
      image(v6,sx[19],sy[17]);
    break;
    case 6:
      simvm = 14.0;
      image(v7,sx[19],sy[17]);
    break;
    case 7:
      simvm = 31.4566;
      image(v8,sx[19],sy[17]);
    break;
    case 8:
      simvm = 91.25;
      image(v9,sx[19],sy[17]);
    break;
    case 9:
      simvm = 182.5;
      image(v10,sx[19],sy[17]);
    break;
    case 10:
      simvm = 365;
      image(v11,sx[19],sy[17]);
    break;
    default:
      if(simv<0){
        image(v1,sx[19],sy[17]);
        simv = 0;
      }
      if(simv>10){
        image(v11,sx[19],sy[17]);
        simv = 10;
      }
    break;
  }
}

boolean sunHoover(){
  boolean hoover;
  
  if(dist(mouseX,mouseY,sx[12],sy[9])<22)
  hoover = true;
  else
  hoover = false;
  
  return hoover;
}

void solarSystem(){
  pushMatrix();
    translate(sx[12],sy[9]);
    
    if(sunHoover()){
      if(mousePressed==true)
      image(star,0,0,47,47);
      else
      image(star,0,0,50,50);
    }
    else
    image(star,0,0);
    
    mercury.orbitCircle();
    mercury.run();
    mercury.display();
    
    venus.orbitCircle();
    venus.run();
    venus.display();
    
    earth.orbitCircle();
    earth.run();
    earth.display();
    
    mars.orbitCircle();
    mars.run();
    mars.display();
    
    asteroids();
    
    jupiter.orbitCircle();
    jupiter.run();
    jupiter.display();
    
    saturn.orbitCircle();
    saturn.run();
    saturn.display();
    
    uranus.orbitCircle();
    uranus.run();
    uranus.display();
    
    neptune.orbitCircle();
    neptune.run();
    neptune.display();
    
    mercury.nameTag();
    venus.nameTag();
    earth.nameTag();
    mars.nameTag();
    jupiter.nameTag();
    saturn.nameTag();
    uranus.nameTag();
    neptune.nameTag();
    
    if(sunHoover())
    image(tag1,0,0);
    if(asteroidsHoover())
    image(tag6,0,-170);
  popMatrix();
}

void asteroids(){
  pushMatrix();
    rotate(radians(-ir));
    
    if(asteroidsHoover()){
      if(mousePressed){
        stroke(200);
        strokeWeight(2);
      }
      else{
        strokeWeight(3);
        stroke(200);
      }
    }
    for (int i=0; i<200; i++){
      fill(128);
      circle(ax[i],ay[i],as[i]);
      noFill();
    }
    ir+=0.005*simvm;
    if(ir>=360)
    ir = 0;
    noStroke();
  popMatrix();
}

boolean asteroidsHoover(){
  boolean hoover;
  
  if(dist(mouseX,mouseY,sx[12],sy[9])<180 && dist(mouseX,mouseY,sx[12],sy[9])>160)
  hoover = true;
  else
  hoover = false;
  
  return hoover;
}
