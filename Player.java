import java.util.*;
public class Player{
    ArrayList<Tile> hand;
    int score;
    String name;
    ArrayList<Integer> playerScores;
    ArrayList<String> wordsPlayed;

    public Player(){
	name = "";
	score = 0;
	hand = new ArrayList<Tile>();
	playerScores = new ArrayList<Integer>();
	wordsPlayed = new ArrayList<String>();
    }

    public int getScore(){
	return score;
    }

    public ArrayList<Tile> getHand(){
	return hand;
    }

    public ArrayList<Integer> getPlayerScores(){
	return playerScores;
    }

     public ArrayList<String> getWordsPlayed(){
	return wordsPlayed;
    }

    public void setScore(int x){
	score = x;
    }

    public void setName(String n){
	name = n;
    }
    
}
