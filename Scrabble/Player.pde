import java.util.*;
class Player{
    ArrayList<Tile> hand;
    int score;
    String name;
    ArrayList<Integer> playerScores;
    ArrayList<String> wordsPlayed;

    Player(){
  name = "";
  score = 0;
  hand = new ArrayList<Tile>();
  playerScores = new ArrayList<Integer>();
  wordsPlayed = new ArrayList<String>();
    }
    
    void drawTile(){
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
    
    void scramble(){
      ArrayList<Tile> newHand = new ArrayList<Tile>();
      for(int x = 0; x<7; x++){
        int index = (int)(Math.random() * (hand.size()));
        Tile t = hand.get(index);
        newHand.add(t);
        hand.remove(index);
      }
      hand = newHand;
    }
    
    void exchange(Tile t){
      int index = -1;
      for(int x=0; x<hand.size(); x++){
        if(hand.get(x).getLetter().equals(t.getLetter())){
          index = x;
          x = 8;
          hand.remove(index);
        }
      }
      bag.add(t);
      drawTile();
    }
    
    
    String printHand(){
      String str = "";
      for(int x=0; x<hand.size(); x++){
        str+=hand.get(x).getLetter()+" ";
      }
      return str;
    }
        
    Tile getSelectedTile(){
      for(int x=0; x<hand.size(); x++){
        if(hand.get(x).getBool()){
          return hand.get(x);
        }
      }
      return null;
    }
    


    int getScore(){
  return score;
    }

    void putBack(Tile a){
      hand.add(a);
    }

    ArrayList<Tile> getHand(){
  return hand;
    }

    ArrayList<Integer> getPlayerScores(){
  return playerScores;
    }

     ArrayList<String> getWordsPlayed(){
  return wordsPlayed;
    }

    void setScore(int x){
  score = x;
    }

    void setName(String n){
  name = n;
    }
    
}