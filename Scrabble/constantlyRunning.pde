void wordChecker(){
  wordCheck=checkWord.getText().toUpperCase();
  //println(dict.search(wordCheck));
  fill(0);
  //text(wordCheck,850,850);
  if(dict.search(wordCheck)){
    text(wordCheck+" is a word.",950,850);
  }else{
    if(wordCheck.length()>0){
      text(wordCheck+" is not a word.",950,850);
    }
  }
}

void placeChecker(){
  if(xvals.size()>0){
  placement=checkPlacement();
  }
  if(!(xvals.size() == 0) && !placement){
  fill(0);
  text("INVALID PLACEMENT", 250,850);
  }
}

boolean checkPlacement(){
  boolean goodX = true;
  boolean goodY = true;
  int xval = xvals.get(0);
  int yval = yvals.get(0);
  for(int x = 0; x<xvals.size(); x++){
    if(xvals.get(x)!=xval){
       goodX = false;
    }
  }
  for(int y =0; y<yvals.size(); y++){
    if(yvals.get(y)!=yval){
      goodY = false;
    }
  }
  return goodX || goodY;
}

//method for updating the xvals and yvals
int findIndex(int cor, ArrayList<Integer> list){
  for(int i=0; i<list.size(); i++){
    if(list.get(i).intValue() == cor){
      return i;
    }
  }
  return -1;
}

void endTurn(){
  updateTurn();
}

void displayTurn(){
  text("Turn: "+turn, 800, 800);
  text(current.getName(), 800, 825);
}

void updateTurn(){
  turn++;
  //test later
  xvals.clear();
  yvals.clear();
  if(current.getName().equals("Player 1")){
    p1.drawTile();
  }else{
    p2.drawTile();
  }
  if(turn%2 == 0){
    current = p2;
  }else{
    current = p1;
  }
}
/*void updateTurn(){
  turn+=buttonVal;
  println("Button pressed.");
  fill(0);
  text(turn,800,800);
  
}*/
  