class PlanetObject{
  float orbitRadius;
  float dayDuration;
  float yearDuration;
  float size;
  float day = 0.0;
  float year = 0.0;
  PImage graphic;
  PImage tag;
  float tagx;
  float tagy;
  float mr = 0, moonx, moony;
  
  PlanetObject(float orbitRadius_, float dayDuration_, float yearDuration_, float size_, PImage graphic_, PImage tag_){
    orbitRadius = orbitRadius_;
    dayDuration = dayDuration_*60.0;
    yearDuration = yearDuration_*21900.0;
    size = size_;
    graphic = graphic_;
    tag = tag_;
  }
  
  boolean orbitHoover(){
    boolean hoover = false;
    
    if(dist(mouseX,mouseY,sx[12],sy[9])<orbitRadius+5&&dist(mouseX,mouseY,sx[12],sy[9])>orbitRadius-5)
    hoover = true;
    else
    hoover = false;
    
    return hoover;
  }
  
  void orbitCircle(){
    if(orbitHoover()){
      if(mousePressed){
        stroke(200);
        strokeWeight(2);
      }
      else{
        stroke(200);
        strokeWeight(4);
      }
    }
    else{
      strokeWeight(1);
      stroke(50);
      noFill();
    }
    circle(0,0,orbitRadius*2.0);
    noStroke();
  }
  
  void reset(){
    day  = 0;
    year = 0;
  }
  
  void run(){
    day  += simvm;
    year += simvm;
    
    //Reset values
    if(day>=dayDuration)
    day = 0.0;
    if(year>=yearDuration)
    year = 0.0;
  }
  
  void nameTag(){
    float myear = map(year,0.0,yearDuration,0.0,360.0);
    
    tagx = 0 + cos(radians(-myear)) * orbitRadius;
    tagy = 0 + sin(radians(-myear)) * orbitRadius;
    
    if(orbitHoover())
    image(tag,tagx,tagy);
  }
  
  void display(){
    float mday  = map(day,0.0,dayDuration,0.0,360.0);
    float myear = map(year,0.0,yearDuration,0.0,360.0);
    
    tagx = 0 + cos(radians(-myear)) * orbitRadius;
    tagy = 0 + sin(radians(-myear)) * orbitRadius;
    
    pushMatrix();
      rotate(radians(-myear));
      translate(orbitRadius,0);
      pushMatrix();
        rotate(radians(-mday));
        if(orbitHoover()){
          if(mousePressed){
            image(graphic,0,0,graphic.width+2,graphic.height+2);
            
            //Rotation guide
            stroke(0,255,0);
            strokeWeight(3);
            line(-graphic.width/2,0,graphic.width/2,0);
            noStroke();
          }
          else{
            image(graphic,0,0,graphic.width+4,graphic.height+4);
            
            //Rotation guide
            stroke(0,255,0);
            strokeWeight(3);
            line(-graphic.width/2,0,graphic.width/2,0);
            noStroke();
          }
        }
        else{
          image(graphic,0,0);
        }
        
      popMatrix();
      
      //Moon only for earth
      if(size==12){
        moonx = 0 + cos(radians(-mr)) * 16;
        moony = 0 + sin(radians(-mr)) * 16;
        image(m1,moonx,moony);
        mr+=0.21962*simvm;
        if(mr>360)
        mr = 0;
      }
        
      //Shadow
      fill(0,0,0,200);
      if(orbitHoover()){
        if(mousePressed){
          quad(0,size*0.5+2,50,size*0.75+2,50,-size*0.75-2,0,-size*0.5-2);
        }
        else{
          quad(0,size*0.5+4,50,size*0.75+4,50,-size*0.75-4,0,-size*0.5-4);
        }
      }
      else{
        quad(0,size*0.5,50,size*0.75,50,-size*0.75,0,-size*0.5);
      }
      noFill();
    popMatrix();
  }
}
