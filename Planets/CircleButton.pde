class CircleButton{
  float x, y;
  PImage graphic;
  int value;
  
  CircleButton(PImage graphic_){
    graphic = graphic_;
  }
  
  void position(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  boolean hoover(){
    boolean click = false;
    
    if(dist(mouseX,mouseY,x,y) < graphic.width/2)
    click = true;
    else
    click = false;
    
    return click;
  }
  
  void display(){
    if(hoover() && mousePressed == false)
      image(graphic,x,y,graphic.width*1.1,graphic.height*1.1);
    else
    image(graphic,x,y);
  }
}
