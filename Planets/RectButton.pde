class RectButton{
  float x, y;
  PImage graphic;
  int value;
  
  RectButton(PImage graphic_){
    graphic = graphic_; 
  }
  
  void position(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  boolean hoover(){
    boolean hoover;
    
    if((mouseX > x-(graphic.width/2) && mouseX < x+(graphic.width/2)) && (mouseY > y-(graphic.height/2) && mouseY < y+(graphic.height/2)))
    hoover = true;
    else
    hoover = false;
    
    return hoover;
  }
  
  void display(){
    if(hoover() && mousePressed == false)
    image(graphic,x,y,graphic.width*1.05,graphic.height*1.05);
    else
    image(graphic,x,y);
  }
}
