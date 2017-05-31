import java.util.*;

public class Board{
    int[][] scoreRef;
    Tile[][] gameBoard;
    static ArrayList<int> availTiles;
    static ArrayList<String> usedTiles;
    static Tile[] bag;
    //Board constructor
    public Board(){
	scoreRef = new int[15][15];
	gameBoard = new Tile[15][15];
    }
    public void afterUse(ArrayList<String> used){
	
	    
    }
    public static void clear(ArrayList used){
	while(used.size() > 0){
	    used.remove(0);
	}
    }
    public static void main(String[] args){
	usedTiles = {"A", "B"};
	clear(usedTiles);
	
    }
    
}

    
