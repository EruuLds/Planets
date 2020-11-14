void homeButtonSound(){
  if(startButton.hoover())
  press.play();
  if(simButton.hoover())
  press.play();
  if(exitButton.hoover())
  press.play();
  if(infoButton.hoover())
  press.play();
}

void infoCardSound(){
  if(closeButton.hoover())
  press.play();
  if(seeButton.hoover())
  press.play();
}

void infoButtonSound(){
  if(backButton.hoover())
  press.play();
  if(nextButton.hoover())
  press.play();
  if(indexButton.hoover())
  press.play();
}

void lastSlideButtonSound(){
  if(backButton.hoover())
  press.play();
  if(simButton.hoover())
  press.play();
  if(indexButton.hoover())
  press.play();
}

void simButtonSound(){
  if(indexButton.hoover())
  press.play();
  if(addButton.hoover()&&simv<10)
  press.play();
  if(resetButton.hoover()&&simv!=2)
  press.play();
  if(lessButton.hoover()&&simv>0)
  press.play();
}

void pinfoCardSound(){
  if(closeButton.hoover())
  press.play();
  if(goButton.hoover())
  press.play();
}
