void makeBoard(){
  board = new Cell[15][15];
  for(int r=0; r<15; r++){
    for(int c=0; c<15; c++){
      board[r][c]=new Cell(r*50,c*50);
    }
  }
  board[0][0].setValue(3);
  board[1][1].setValue(2);
  board[2][2].setValue(2);
  board[3][3].setValue(2);
  board[4][4].setValue(2);
  board[5][5].setValue(6);
  board[6][6].setValue(5);
  board[7][7].setValue(2);
  board[8][8].setValue(5);
  board[9][9].setValue(6);
  board[10][10].setValue(2);
  board[11][11].setValue(2);
  board[12][12].setValue(2);
  board[13][13].setValue(2);
  board[14][14].setValue(3);
  board[0][14].setValue(3);
  board[1][13].setValue(2);
  board[2][12].setValue(2);
  board[3][11].setValue(2);
  board[4][10].setValue(2);
  board[5][9].setValue(6);
  board[6][8].setValue(5);
  board[8][6].setValue(5);
  board[9][5].setValue(6);
  board[10][4].setValue(2);
  board[11][3].setValue(2);
  board[12][2].setValue(2);
  board[13][1].setValue(2);
  board[14][0].setValue(3);
  board[0][3].setValue(5);
  board[0][7].setValue(3);
  board[0][11].setValue(5);
  board[1][5].setValue(6);
  board[2][6].setValue(5);
  board[3][7].setValue(5);
  board[2][8].setValue(5);
  board[1][9].setValue(6);
  board[3][0].setValue(5);
  board[3][14].setValue(5);
  board[5][1].setValue(6);
  board[5][13].setValue(6);
  board[6][2].setValue(5);
  board[7][3].setValue(5);
  board[8][2].setValue(5);
  board[9][1].setValue(6);
  board[7][0].setValue(3);
  board[11][0].setValue(5);
  board[14][3].setValue(5);
  board[14][7].setValue(3);
  board[14][11].setValue(5);
  board[13][5].setValue(6);
  board[12][6].setValue(5);
  board[11][7].setValue(5);
  board[12][8].setValue(5);
  board[13][9].setValue(6);
  board[11][14].setValue(5);
  board[9][13].setValue(6);
  board[8][12].setValue(5);
  board[7][11].setValue(5);
  board[7][14].setValue(3);
  board[6][12].setValue(5);
  //board[3][4].setValue(5);
  
      
}

void drawBoard(){
  for(int r=0;r<15;r++){
    for(int c=0; c<15; c++){
      fill(999);
      if(board[r][c].getValue() != 0){
    int val=board[r][c].getValue();
    if(val==2){
      if(board[r][c].getXCor()/50==7 && board[r][c].getYCor()/50==7){
        board[r][c].setColorValue(245,193,223);
      }else{
      board[r][c].setColorValue(193,245,217);
    }
    }
    if(val==3){
      board[r][c].setColorValue(252,92,92);
    }
    if(val==5){
      board[r][c].setColorValue(184,221,250);
    }
    if(val==6){
      board[r][c].setColorValue(106,121,250);
    }
      }
      board[r][c].display(board[r][c].getXCor(), board[r][c].getYCor());
    }
  }
}

void displayHands(){
  textSize(32);
  fill(0);  
  text("TEST",900,700);
  text(p1.getName(), 900,50);
  text(p2.getName(),900,150);
  for(int x=0; x<p1.getHand().size(); x++){
    p1.getHand().get(x).display(900+(55*x),100);
    
  }
  for(int x=0; x<p2.getHand().size(); x++){
    p2.getHand().get(x).display(900+(55*x),200);
  }
    
}

String printBoard(){
  String str="";
  for(int r=0; r<15; r++){
    for(int c=0; c<15; c++){
      if(board[r][c].getTile()==null){
        str+= "0 ";
      }else{
        str+=board[r][c].getTile().getLetter()+" ";
      }
    }
    str+="\n";
  }
  return str;
}

String printSpecialBoard(){
  String str="";
  for(int r=0; r<15; r++){
    for(int c=0; c<15; c++){
      str+=board[r][c].getValue()+" ";
    }
    str+="\n";
  }
  return str;
}