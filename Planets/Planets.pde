import processing.sound.*;

//Music variables
SoundFile song1;
SoundFile song2;
SoundFile press;
SoundFile release;
SoundFile cards;


//State variables
boolean music;
float ir = 0;
int simv = 2;
float simvm = 1;
float count = 300;
boolean infoa = false;
boolean infob = false;

//Grid coordinates array
float [] sx = new float [33];
float [] sy = new float [19];
PVector centerDisplay;

//Cursor graphic
PImage cursorGraphic;

//Button image variables
PImage start;
PImage sim;
PImage ok;
PImage close;
PImage add;
PImage less;
PImage reset;
PImage sound;
PImage mute;
PImage back;
PImage next;
PImage index;
PImage exit;
PImage see;
PImage addl;
PImage resetl;
PImage lessl;
PImage info;
PImage pinfo;
PImage go;

//Screens image variables
PImage startScreen;
PImage home;
PImage s1;
PImage s1_1;
PImage s2;
PImage s2_1;
PImage s3;
PImage s3_1;
PImage s4;
PImage s4_1;
PImage s5;
PImage s5_1;
PImage s6;
PImage s6_1;
PImage s7;

//Simulator cards image variables

PImage container;
PImage c1;
PImage c2;
PImage c3;
PImage c4;
PImage c5;
PImage c6;
PImage c6_1;
PImage c7;
PImage c7_1;
PImage c8;
PImage c8_1;
PImage c9;
PImage c9_1;
PImage c10;
PImage c10_1;
PImage c11;
PImage c11_1;
PImage c12;
PImage infoCard;
PImage pinfoCard;

//Sim vel display cards variables
PImage v1;
PImage v2;
PImage v3;
PImage v4;
PImage v5;
PImage v6;
PImage v7;
PImage v8;
PImage v9;
PImage v10;
PImage v11;

//Sim tags image variables
PImage tag1;
PImage tag2;
PImage tag3;
PImage tag4;
PImage tag5;
PImage tag6;
PImage tag7;
PImage tag8;
PImage tag9;
PImage tag10;

//RectButon variables
RectButton startButton;
RectButton simButton;
RectButton seeButton;
RectButton goButton;

//CircleButton variables

CircleButton indexButton;
CircleButton exitButton;
CircleButton musicButton;
CircleButton backButton;
CircleButton nextButton;
CircleButton addButton;
CircleButton lessButton;
CircleButton resetButton;
CircleButton okButton;
CircleButton closeButton;
CircleButton infoButton;
CircleButton pinfoButton;

//Screen display variables
int screen = 0;
int planetInfo = 0;

//Planet image variables
PImage star;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
PImage p7;
PImage p8;
PImage m1;

//PlanetObject variables
PlanetObject mercury;
PlanetObject venus;
PlanetObject earth;
PlanetObject mars;
PlanetObject jupiter;
PlanetObject saturn;
PlanetObject uranus;
PlanetObject neptune;

//Asteroids belt array coords
float [] ax = new float [200];
float [] ay = new float [200];
float [] at = new float [200];
float [] ar = new float [200];
float [] as = new float [200];

//Setup code
void setup(){
  fullScreen();
  imageMode(CENTER);
  
  //Music loading
  song1 = new SoundFile(this, "song1.mp3");
  song1.amp(0.5);
  song2 = new SoundFile(this, "song2.mp3");
  
  //Button sounds loading
  press = new SoundFile(this, "press.wav");
  release = new SoundFile(this, "release.wav");
  cards = new SoundFile(this, "click.wav");
  cards.amp(0.5);
  
  //Initial music playing
  music = true;
  
  //Grid coordinates loops
  for(int i = 0; i<sx.length; i++){
    sx[i] = (width/32.00)*i;
  }
  for(int i = 0; i<sy.length; i++){
    sy[i] = (height/18.00)*i;
  }
  centerDisplay = new PVector(width/2,height/2);
  
  //Button images loading
  start = loadImage("start.png");
  sim   = loadImage("sim.png");
  ok    = loadImage("ok.png");
  close = loadImage("close.png");
  add   = loadImage("add.png");
  less  = loadImage("less.png");
  reset = loadImage("reset.png");
  sound = loadImage("sound.png");
  mute  = loadImage("mute.png");
  back  = loadImage("back.png");
  next  = loadImage("next.png");
  index = loadImage("index.png");
  exit  = loadImage("exit.png");
  see   = loadImage("see.png");
  addl  = loadImage("addl.png");
  resetl = loadImage("resetl.png");
  lessl = loadImage("lessl.png");
  info = loadImage("info.png");
  pinfo = loadImage("pinfo.png");
  go = loadImage("go.png");
  
  //Screens images loading
  startScreen = loadImage("startScreen.png");
  home = loadImage("home.png");
  s1   = loadImage("sp.png");
  s1_1 = loadImage("spd.png");
  s2   = loadImage("g.png");
  s2_1 = loadImage("gd.png");
  s3   = loadImage("o.png");
  s3_1 = loadImage("od.png");
  s4   = loadImage("rt.png");
  s4_1 = loadImage("rtd.png");
  s5   = loadImage("sn.png");
  s5_1 = loadImage("snd.png");
  s6   = loadImage("um.png");
  s6_1 = loadImage("umd.png");
  s7   = loadImage("es.png");
    
  //Planet images loading
  star = loadImage("sun.png");
  p1 = loadImage("mercury.png");
  p2 = loadImage("venus.png");
  p3 = loadImage("earth.png");
  p4 = loadImage("mars.png");
  p5 = loadImage("jupiter.png");
  p6 = loadImage("saturn.png");
  p7 = loadImage("uranus.png");
  p8 = loadImage("neptune.png");
  m1 = loadImage("moon.png");
  
  //Simulator cards image loading
  container = loadImage("container.png");;
  c1        = loadImage("card1.png");
  c2        = loadImage("card2.png");
  c3        = loadImage("card3.png");
  c4        = loadImage("card4.png");
  c5        = loadImage("card5.png");
  c6        = loadImage("card6.png");
  c6_1      = loadImage("card6_1.png");
  c7        = loadImage("card7.png");
  c7_1      = loadImage("card7_1.png");
  c8        = loadImage("card8.png");
  c8_1      = loadImage("card8_1.png");
  c9        = loadImage("card9.png");
  c9_1      = loadImage("card9_1.png");
  c10       = loadImage("card10.png");
  c10_1     = loadImage("card10_1.png");
  c11       = loadImage("card11.png");
  c11_1     = loadImage("card11_1.png");
  c12       = loadImage("card12.png");
  infoCard  = loadImage("infocard.png");
  pinfoCard  = loadImage("pinfocard.png");
  
  //SimVel display images loading
  v1  = loadImage("v1.png");
  v2  = loadImage("v2.png");
  v3  = loadImage("v3.png");
  v4  = loadImage("v4.png");
  v5  = loadImage("v5.png");
  v6  = loadImage("v6.png");
  v7  = loadImage("v7.png");
  v8  = loadImage("v8.png");
  v9  = loadImage("v9.png");
  v10  = loadImage("v10.png");
  v11  = loadImage("v11.png");
  
  //Sim tags image loading
  tag1 = loadImage("tag1.png");
  tag2 = loadImage("tag2.png");
  tag3 = loadImage("tag3.png");
  tag4 = loadImage("tag4.png");
  tag5 = loadImage("tag5.png");
  tag6 = loadImage("tag6.png");
  tag7 = loadImage("tag7.png");
  tag8 = loadImage("tag8.png");
  tag9 = loadImage("tag9.png");
  tag10 = loadImage("tag10.png");
  
  //Small screens resize
  if(width<1920||height<1920){
    startScreen.resize(width,height);
    home.resize(width,height);
    s1.resize(width,height);
    s1_1.resize(width,height);
    s2.resize(width,height);
    s2_1.resize(width,height);
    s3.resize(width,height);
    s3_1.resize(width,height);
    s4.resize(width,height);
    s4_1.resize(width,height);
    s5.resize(width,height);
    s5_1.resize(width,height);
    s6.resize(width,height);
    s6_1.resize(width,height);
    s7.resize(width,height);
    
    container.resize(425,680);
    c1.resize(425,680);
    c2.resize(425,680);
    c3.resize(425,680);
    c4.resize(425,680);
    c5.resize(425,680);
    c6.resize(425,680);
    c6_1.resize(425,680);
    c7.resize(425,680);
    c7_1.resize(425,680);
    c8.resize(425,680);
    c8_1.resize(425,680);
    c9.resize(425,680);
    c9_1.resize(425,680);
    c10.resize(425,680);
    c10_1.resize(425,680);
    c11.resize(425,680);
    c11_1.resize(425,680);
    c12.resize(425,680);
    infoCard.resize(425,680);
    pinfoCard.resize(425,680);
  }
  
  //RectButton objects
  startButton = new RectButton(start);
  simButton   = new RectButton(sim);
  seeButton   = new RectButton(see);
  goButton    = new RectButton(go);
  
  //CircleButton objects
  indexButton = new CircleButton(index);
  exitButton  = new CircleButton(exit);
  musicButton = new CircleButton(mute);
  backButton  = new CircleButton(back);
  nextButton  = new CircleButton(next);
  addButton   = new CircleButton(add);
  lessButton  = new CircleButton(less);
  resetButton = new CircleButton(reset);
  okButton = new CircleButton(ok);
  closeButton = new CircleButton(close);
  infoButton = new CircleButton(info);
  pinfoButton = new CircleButton(pinfo);
  
  //Planet objects
  mercury = new PlanetObject(54  ,58.65              ,0.24   ,6  ,p1 ,tag2);
  venus   = new PlanetObject(72  ,243.00             ,0.62   ,10 ,p2 ,tag3);
  earth   = new PlanetObject(99  ,1.00               ,1.00   ,12 ,p3 ,tag4);
  mars    = new PlanetObject(126 ,1.03               ,1.88   ,8  ,p4 ,tag5);
  jupiter = new PlanetObject(216 ,0.41               ,11.86  ,36 ,p5 ,tag7);
  saturn  = new PlanetObject(270 ,0.45               ,29.47  ,22 ,p6 ,tag8);
  uranus  = new PlanetObject(324 ,60.00*365.00*84.32 ,84.32  ,18 ,p7 ,tag9);
  neptune = new PlanetObject(360 ,0.67               ,164.79 ,24 ,p8 ,tag10);
  
  //Asteroids positions
  for (int i=0; i<200; i++){
    at[i] = random(360);
    ar[i] = random(160,180);
    as[i] = random(3,5);
    ax[i] = 0 + cos(radians(at[i])) * ar[i];
    ay[i] = 0 + sin(radians(at[i])) * ar[i];
  }
}

void draw(){
  background(0);
  //cursor(cursorGraphic,1,1);
  
  switch (screen){
    case 0:
      if(count>=1){
        image(startScreen,centerDisplay.x,centerDisplay.y);
        count--;
        if(count==1)
        song1.loop();
      }
      else{
        image(home,centerDisplay.x,centerDisplay.y);
        homeButtonSet();
        if(infoa)
        infoCardSet();
      }
    break;
    case 1:
      image(s1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 2:
      image(s1_1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 3:
      image(s2,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 4:
      image(s2_1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 5:
      image(s3,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 6:
      image(s3_1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 7:
      image(s4,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 8:
      image(s4_1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 9:
      image(s5,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 10:
      image(s5_1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 11:
      image(s6,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 12:
      image(s6_1,centerDisplay.x,centerDisplay.y);
      infoButtonSet();
    break;
    case 13:
      image(s7,centerDisplay.x,centerDisplay.y);
      lastSlideButtonSet();
    break;
    case 14:
      solarSystem();
      
      image(container,sx[26],sy[9]);
      switch(planetInfo){
        case 0:
          okButton.position(sx[26],sy[16]);
          okButton.display();
          image(c1,sx[26],sy[9]);
        break;
        case 1:
          image(c2,sx[26],sy[9]);
          pinfoButton.position(sx[30],sy[5]);
          pinfoButton.display();
        break;
        case 2:
          image(c3,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 3:
          image(c4,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 4:
          image(c5,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 5:
          image(c6,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 6:
          image(c6_1,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 7:
          image(c7,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 8:
          image(c7_1,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 9:
          image(c8,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 10:
          image(c8_1,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 11:
          image(c9,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 12:
          image(c9_1,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 13:
          image(c10,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 14:
          image(c10_1,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 15:
          image(c11,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 16:
          image(c11_1,sx[26],sy[9]);
          cardButtonSet();
        break;
        case 18:
          image(c12,sx[26],sy[9]);
          cardButtonSet();
        break;
      }
      
      simButtonSet();
      simVSystem_Display();
      
      if(infob)
      pinfoCardSet();
    break;
  }
  
  //Sim variables reset
  if(screen == 0){
    mercury.reset();
    venus.reset();
    earth.reset();
    mars.reset();
    jupiter.reset();
    saturn.reset();
    uranus.reset();
    neptune.reset();
    simv = 2;
    planetInfo = 0;
  }
  
  //Grid
  
  /*strokeWeight(2);
  stroke(255,0,0);
  for(int i=1; i<32; i++){
    line((width/32.00)*i,0,(width/32.00)*i,height);
  }
  for(int i=1; i<18; i++){
    line(0,(height/18.00)*i,width,(height/18.00)*i);
  }*/
  
  println(neptune.year, neptune.day);
}

void mouseReleased(){
  //Buttons conditionals
    if(musicButton.hoover() && music==false && infoa == false && infob == false){
      music = true;
      musicButton.graphic = mute;
      if(screen==14)
      song2.loop();
      if(screen!=14)
      song1.loop();
      release.play();
    }
    else if(musicButton.hoover() && music && infoa == false && infob == false){
      music = false;
      musicButton.graphic = sound;
      song2.stop();
      song1.stop();
      release.play();
    }
    
    switch(screen){
      case 0:
        if(infoa)
        infoCardSystem();
        else
        homeButtonSystem();
      break;
      case 1:
        infoButtonSystem();
      break;
      case 2:
        infoButtonSystem();
      break;
      case 3:
        infoButtonSystem();
      break;
      case 4:
        infoButtonSystem();
      break;
      case 5:
        infoButtonSystem();
      break;
      case 6:
        infoButtonSystem();
      break;
      case 7:
        infoButtonSystem();
      break;
      case 8:
        infoButtonSystem();
      break;
      case 9:
        infoButtonSystem();
      break;
      case 10:
        infoButtonSystem();
      break;
      case 11:
        infoButtonSystem();
      break;
      case 12:
        infoButtonSystem();
      break;
      case 13:
        lastSlideButtonSystem();
      break;
      case 14:
        if(okButton.hoover()&&planetInfo==0){
          planetInfo = 1;
          release.play();
        }
        
        simButtonSystem();
        orbitSelectSystem();
        if(infob==false)
        cardButtonSystem();
        pinfoCardSystem();
      break;
    }
}

void mousePressed(){
  if(musicButton.hoover())
  press.play();
    
  switch(screen){
    case 0:
      if(infoa)
      infoCardSound();
      else
      homeButtonSound();
    break;
    case 1:
      infoButtonSound();
    break;
    case 2:
      infoButtonSound();
    break;
    case 3:
      infoButtonSound();
    break;
    case 4:
      infoButtonSound();
    break;
    case 5:
      infoButtonSound();
    break;
    case 6:
      infoButtonSound();
    break;
    case 7:
      infoButtonSound();
    break;
    case 8:
      infoButtonSound();
    break;
    case 9:
      infoButtonSound();
    break;
    case 10:
      infoButtonSound();
    break;
    case 11:
      infoButtonSound();
    break;
    case 12:
      infoButtonSound();
    break;
    case 13:
      lastSlideButtonSound();
    break;
    case 14:
      if(okButton.hoover()&&planetInfo==0)
      press.play();
      
      simButtonSound();
      pinfoCardSound();
    break;
  }
}
