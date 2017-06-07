import java.util.*;
import java.io.*;

public class Board{
    int[][] scoreRef;
    Tile[][] gameBoard;
    int[][] specialBoard;
    static ArrayList<Integer> availTiles = new ArrayList<Integer>();
    static ArrayList<String> usedTiles = new ArrayList<String>();
    static Tile[] bag;

    //Board constructor
    public Board(){
	scoreRef = new int[15][15];
	gameBoard = new Tile[15][15];
	specialBoard = new int[15][15];
    }

    public void specialReader(String filename){
	try{
	    File text = new File(filename);
	    Scanner infile = new Scanner(text);
	    //	    int count = 0;
	    while(infile.hasNextLine()){
		String line = infile.nextLine();
		if(line.substring(1,2).equals(" ")){
		    if(line.substring(4,5).equals(" ")){
			specialBoard[Integer.parseInt(line.substring(0,1))][Integer.parseInt(line.substring(3,4))] = Integer.parseInt(line.substring(6));
		    }
		    else {
			specialBoard[Integer.parseInt(line.substring(0,1))][Integer.parseInt(line.substring(3,5))] = Integer.parseInt(line.substring(6));
		    }
									    
		}
		else{
		    if(line.substring(4,5).equals(" ")){
			specialBoard[Integer.parseInt(line.substring(0,2))][Integer.parseInt(line.substring(3,4))] = Integer.parseInt(line.substring(6));
		    }
		    else {
			specialBoard[Integer.parseInt(line.substring(0,2))][Integer.parseInt(line.substring(3,5))] = Integer.parseInt(line.substring(6));
		    }
		}
		//	count++;
		//	System.out.println(count);
	    }
	}
	catch(FileNotFoundException e){
	    System.out.println("Missing File");
	}
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
    public Tile[][] get(){
	return gameBoard;
    }

    public int[][] arrget(){
	return specialBoard;
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

    public static String arrayString(int[][] arr){
	String ans = "";
	for(int r = 0; r < 15; r++){
	    for(int c = 0; c < 15; c++){
		ans = ans + arr[r][c] + " ";
	    }
	    ans += '\n';
	}
	return ans;

    }
    
    public static void main(String[] args){
	Board a = new Board();
	reader("tileBag2.txt");
	a.specialReader("SpecialSpot.txt");
	System.out.println(arrayString(a.arrget()));
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

    
