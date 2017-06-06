import java.util.*;
import java.io.*;

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

    public static void reader(String filename){
	try{
	    File text = new File(filename);
	    Scanner infile = new Scanner(text);
	    while(infile.hasNextLine()){
		String line = infile.nextLine();
		line = line.substring(5);
		int add = Integer.parseInt(line);
		availTiles.add(add);
	    }
	}
	catch(FileNotFoundException e){
	    System.out.println("Missing File");
	}
    }

    public static void afterPlay(ArrayList<String> used){
	char c = 'A';
	int valC = 0;
	while(used.size() > 0){
	    c = used.get(0).charAt(0);
	    valC = (int) c - 65;
	    availTiles.set(valC, availTiles.get(valC) - 1); 
	    used.remove(0);
	}	    
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
	reader("tileBag2.txt");
	usedTiles.add("A");
	usedTiles.add("B");
	//	availTiles.add(1);
	//	availTiles.add(2);
	afterPlay(usedTiles);
	System.out.println(availTiles);
	System.out.println(usedTiles);
	//	clear(usedTiles);
	//	System.out.println(returnString(usedTiles));
    }
    
}

    
