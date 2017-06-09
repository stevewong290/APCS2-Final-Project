class Cell{
  Tile t;
  String letter;
  int value;
  int xcor;
  int ycor;
  
  Cell(){
    t=null;
    letter="";
    value=0;
    xcor=0;
    ycor=0;
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
  
  void placeTile(Tile ti){
    if(t == null){
      t = ti;
    }
}

}