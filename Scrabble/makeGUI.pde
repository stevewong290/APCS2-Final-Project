void makeGUI(){
  PFont font = createFont("arial",20);

  cp5 = new ControlP5(this);
  fill(999);
  checkWord=cp5.addTextfield("input")
     .setPosition(1200,600)
     .setSize(200,40)
     .setFont(font)
     .setFocus(true)
     ;
    
}