import java.util.*;

public class Board{
    int[][] scoreRef;
    Tile[][] gameBoard;
    static ArrayList<Integer> availTiles = new ArrayList<Integer>();
    static ArrayList<String> usedTiles = new ArrayList<String>();
    static Tile[] bag;

    //Board constructor
    public Board(){
	scoreRef = new int[15][15];
	gameBoard = new Tile[15][15];
    }
    public void afterPlay(ArrayList<String> used){
	char c = 'A';
	int valC = 0;
	if(used.size() > 0){
	    c = used.get(0).charAt(0);
	    valC = (int) c - 64;
	    availTiles.get
	}
	    
    }
    public void change(int index, ArrayList<String> used){
	
    }
    public static void clear(ArrayList<String> used){
	while(used.size() > 0){
	    used.remove(0);
	}
    }
    public static String returnString(ArrayList<String> arrList){
	String ans = "{ ";
	while(arrList.size() > 0){
	    ans += arrList.get(0) + ", ";
	    arrList.remove(0);
	}
	return ans;
    }
    public static void main(String[] args){
	//	usedTiles.add("A");
	//	usedTiles.add("B");
	//	clear(usedTiles);
	//	System.out.println(returnString(usedTiles));
    }
    
}

    
