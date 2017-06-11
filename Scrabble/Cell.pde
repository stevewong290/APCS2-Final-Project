class Cell{
  Tile t;
  String letter;
  int value;
  int xcor;
  int ycor;
  int fill1;
  int fill2;
  int fill3;
  boolean taken=false;
  //may cause further problems
  Cell(int r, int c){
    t=null;
    letter="";
    value=0;
    xcor=r;
    ycor=c;
  }
  
  void setValue(int x){
    value = x;
  }
  
  int getValue(){
    return value;
  }
  Tile getTile(){
    return t;
  }
  
  int getXCor(){
    return xcor;
  }
  
  int getYCor(){
    return ycor;
  }
  
  void placeTile(Tile ti){
    if(t == null){
      t = ti;
    }
  }

  void removeTile(){
    t = null;
  }

void setColorValue(int f1, int f2, int f3){
  fill1=f1;
  fill2=f2;
  fill3=f3;
}

void display(int x, int y){
  if(value==0){
    fill(999);
  }else{
  fill(fill1,fill2,fill3);
  }
  rect(x,y,50,50);
  textAlign(CENTER);
  textSize(32);
  fill(0);
  if(t!=null){
  text(t.getLetter(),x+25,y+40);
  }else{
    text(letter,x+25,y+40);
}  
}
}