void makeGUI(){
  PFont font = createFont("arial",20);

  cp5 = new ControlP5(this);
  //fill(999);
  checkWord=cp5.addTextfield("input")
     .setPosition(1100,550)
     .setSize(200,40)
     .setFont(font)
     .setFocus(true)
     .setVisible(false)
     ;
     
  endTurn=cp5.addButton("endTurn")
    .setPosition(1300,600)
    .setSize(100,50)
    .setValue(0)
    .setVisible(false)
    ;
    
  p1scramble=cp5.addButton("p1scramble")
    .setPosition(1300,50)
    .setSize(100,50)
    .setValue(0)
    .setVisible(false)
    ;
  p2scramble=cp5.addButton("p2scramble")
    .setPosition(1300,150)
    .setSize(100,50)
    .setValue(0)
    .setVisible(false)
    ;
}

void updateGUI(){
  checkWord.setVisible(true);
  endTurn.setVisible(true);
  p1scramble.setVisible(true);
  p2scramble.setVisible(true);
}