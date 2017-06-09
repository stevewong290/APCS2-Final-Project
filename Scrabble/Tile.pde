class Tile{
    String letter;
    int value;
    Tile(String s, int v){
  letter = s;
  value = v;
    }

    String getLetter(){
  return letter;
    }

    int getValue(){
  return value;
    }
    
    void display(int x, int y){
   rect (x, y, 50, 50);
   fill(255);
   textAlign(CENTER,CENTER);
   fill(100);
   textSize(10);
   text(letter, x, y);
  }
}