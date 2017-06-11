class Tile{
    String letter;
    boolean selected = false;
    boolean locked = false;
    int value;
    int xcor;
    int ycor;
    Tile(String s, int v){
  letter = s;
  value = v;
    }
    
    int getXCor(){
      return xcor;
    }
    int getYCor(){
      return ycor;
    }
    void setBool(boolean b){
      selected=b;
    }
    boolean mouseDragged(){
      return true;
    }
    
    boolean mouseReleased(){
      return true;
    }
    
    
    
    boolean getBool(){
      return selected;
    }
    
    void setXYCor(int x, int y){
      xcor=x + 25;
      ycor=y + 35;
    }
    
    String getLetter(){
  return letter;
    }

    int getValue(){
  return value;
    }
    
    void display(int x, int y){
   xcor = x;
   ycor = y;
   textAlign(CENTER);
   fill(0);
   textSize(32);
   text(letter, x, y);
   fill(999);
   rect (x-25, y-36.5, 50, 50);
   
  }
}