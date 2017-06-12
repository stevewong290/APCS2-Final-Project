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
  if(turn == 1 && board[7][7].getTile()==null){
    fill(0);
  text("INVALID PLACEMENT: First Move Must Be On Pink", 400,850);
  }
  else {
    if(xvals.size()>0){
    placement= (checkPlacement() && checkNeighbor()) ;
    }
    if(!(xvals.size() == 0) && !placement){
    fill(0);
    text("INVALID PLACEMENT", 250,850);
    }
  }  
}

boolean checkPlacement(){
  boolean goodX = true;
  boolean goodY = true;
  if(xvals.size() > 0){
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
  }
  return goodX || goodY;
}

boolean checkNeighbor(){
  boolean xDir = true;
  boolean yDir = true;
  for(int x = 0; x<xvals.size()-1;x++){
    if(Math.abs(xvals.get(x)-xvals.get(x+1)) != 1){
      xDir = false;
    }
  }
  for(int y = 0; y<yvals.size()-1;y++){
    if(Math.abs(yvals.get(y)-yvals.get(y+1)) != 1){
      yDir = false;
    }
  }
  return xDir || yDir;
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

void p1scramble(){
  if(current.equals(p1)){
  p1.scramble();
  }
}

void p2scramble(){
  if(current.equals(p2)){
  p2.scramble();
  }
}

void endTurn(){
  if(checkPlacement() && checkNeighbor()){
    updateTurn();
  }
}

void displayTurn(){
  text("Turn: "+turn, 900, 900);
  text(current.getName(), 900, 950);
}

void updateTurn(){
  calcPoints();
  for(int r = 0; r < 15; r++){
    for(int c = 0; c < 15; c++){
       if(board[r][c].getTile() != null){
          if(board[r][c].getTile().getLocked() == false){
             board[r][c].getTile().setLocked(true);
          }
       }
    }
  }
  
  turn++;
  //test later
  xvals.clear();
  yvals.clear();
  if(current.getName().equals("Player 1")){
    p1.drawTile();
    p1.setScore(p1.getScore()+finalWordScore);
  }else{
    p2.drawTile();
    p2.setScore(p2.getScore()+finalWordScore);
  }
  if(turn%2 == 0){
    current = p2;
  }else{
    current = p1;
  }
  rawWordScore = 0;
  finalWordScore = 0;
  multiplier = 1;
}

void displayScores(){
  text(p1.getName() + ": "+p1.getScore(), 900,600);
  text(p2.getName() + ": "+p2.getScore(), 900,700);
}
void calcPoints(){
  for(int r = 0; r < 15; r++){
    for(int c = 0; c < 15; c++){
       if(board[r][c].getTile() != null){
         if(board[r][c].getTile().getLocked()==false){
           if(board[r][c].getValue() == 0){
             rawWordScore += board[r][c].getTile().getValue();
           }
           if(board[r][c].getValue() == 5){
             rawWordScore += board[r][c].getTile().getValue() * 2;
           }
           if(board[r][c].getValue() == 6){
             rawWordScore += board[r][c].getTile().getValue() * 3;
           }
           if(board[r][c].getValue() == 2){
             multiplier = 2;
             rawWordScore += board[r][c].getTile().getValue();
           }
           if(board[r][c].getValue() == 3){
             multiplier = 3;
             rawWordScore += board[r][c].getTile().getValue();
           }
         }
       }
    }
  }
  finalWordScore = multiplier * rawWordScore;
}
  
           

void displayBagCount(){
  text("Bag Count: "+bag.size(), 900,500);
}

void displayDictionary(){
  text("Check Dictionary:", 1200, 500);
}