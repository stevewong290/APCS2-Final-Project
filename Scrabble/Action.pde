import java.util.*;
import java.io.*;
class Action{
    String[][] tileBag;
    ArrayList<Tile> bag;
    Player p1;
    Player p2;
    Board gameBoard;
    Tile[][] tileBoard;

    // figure out used tile situation
    Action(){
  readBag("tileBag.txt");
  makeBag();
  p1 = new Player();
  p2 = new Player();
  Board b = new Board();
  tileBoard = b.get();
    }

    Tile getBag(int index){
  return bag.get(index);
    }
    
    void readBag(String filename){
  try{
      File text= new File(filename);
      Scanner data = new Scanner(text);
      tileBag=new String[27][3];
      for(int r=0;r<27;r++){
    String line=data.nextLine();
    String[] lineList = line.split(" ");
    for(int c=0; c<3; c++){
        tileBag[r][c]=lineList[c];
    }
      }
  }
  catch(FileNotFoundException e){
      System.out.println("File not found.");
      System.exit(0);
  }
    }

    void makeBag(){
  bag=new ArrayList<Tile>();
  int index=0;
  for(int r=0; r<27; r++){
      Tile t = new Tile(tileBag[r][0], Integer.parseInt(tileBag[r][1]));
      for(int x = Integer.parseInt(tileBag[r][2]); x>0; x--){
    bag.add(t);
    index++;
      }
  }
  
    }

    void draw(ArrayList<Tile> hand){
  int num = 7 - (hand.size());
  if(num == 0){
      return;
  }else{
      for(int x = 0; x<num; x++){
    int index = (int)(Math.random() * (bag.size()));
    Tile t = bag.get(index);
    hand.add(t);
    bag.remove(index);
      }
  }
    }
  

    void updateBag(ArrayList<Tile> tilesDrawn){
  int num=0;
  for(int x=0; x<tilesDrawn.size(); x++){
      for(int y=0; y<bag.size() && num==0; y++){
    if(tilesDrawn.get(x).getLetter().equals(bag.get(y).getLetter())){
        bag.remove(y);
        num=1;
    }
      }
      num=0;
  }
    
    }
        
    void playTile(int x, int y, Tile t){
  if(tileBoard[x][y] == null){
      tileBoard[x][y] = t;
  }else{
      System.out.println("Invalid Move");
  }
    }
    
    ArrayList<Tile> scramble(ArrayList<Tile> hand){
  ArrayList<Tile> newHand = new ArrayList<Tile>();
  for(int x = 0; x<7; x++){
      int index = (int)(Math.random() * (hand.size()));
      Tile t = hand.get(index);
      newHand.add(t);
      hand.remove(index);
  }
  return newHand;
    }

    void exchange(ArrayList<Tile> hand, Tile t){
  int index = -1;
  for(int x=0; x<hand.size(); x++){
      if(hand.get(x).getLetter().equals(t.getLetter())){
    index = x;
    x = 8;
    hand.remove(index);
      }
  }
  bag.add(t);
  draw(hand);
    }
      
    
    String toString(){
  String str="";
  for(int r=0; r<tileBag.length; r++){
      for(int c=0; c<tileBag[0].length; c++){
    str+=tileBag[r][c]+" ";
      }
      str+="\n";
  }
  return str;
    }

    String toStringTile(){
  String str="";
  for(int x=0; x<bag.size(); x++){
      str+=bag.get(x).getLetter()+" ";
  }
  return str;
    }

    String toStringHand(ArrayList<Tile> hand){
  String str="";
  for(int x=0; x<hand.size(); x++){
      str+=hand.get(x).getLetter()+" ";
  }
  return str;
    }
}