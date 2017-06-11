void makeGUI(){
  PFont font = createFont("arial",20);

  cp5 = new ControlP5(this);
  //fill(999);
  checkWord=cp5.addTextfield("input")
     .setPosition(1200,600)
     .setSize(200,40)
     .setFont(font)
     .setFocus(true)
     .setVisible(false)
     ;
     
  endTurn=cp5.addButton("endTurn")
    .setPosition(1200,750)
    .setSize(100,50)
    .setValue(0)
    .setVisible(false)
    ;
}

void updateGUI(){
  checkWord.setVisible(true);
  endTurn.setVisible(true);
}