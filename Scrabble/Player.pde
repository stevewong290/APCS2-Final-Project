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

    int getScore(){
  return score;
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