import java.util.*;
import java.io.*;
public class Action{
    String[][] tileBag;
    Tile[] bag;

    public Action(){
    }

    public Tile getBag(int index){
	return bag[index];
    }
    
    public void readBag(String filename){
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

    public void makeBag(){
	bag=new Tile[100];
	int index=0;
	for(int r=0; r<27; r++){
	    Tile t = new Tile(tileBag[r][0], Integer.parseInt(tileBag[r][1]));
	    for(int x = Integer.parseInt(tileBag[r][2]); x>0; x--){
		bag[index]=t;
		index++;
	    }
	}
	
    }
		    
		    

    public String toString(){
	String str="";
	for(int r=0; r<tileBag.length; r++){
	    for(int c=0; c<tileBag[0].length; c++){
		str+=tileBag[r][c]+" ";
	    }
	    str+="\n";
	}
	return str;
    }

    public String toStringTile(){
	String str="";
	for(int x=0; x<bag.length; x++){
	    str+=bag[x].getLetter()+" ";
	}
	return str;
    }

		
    public static void main(String[]args){
	Action test = new Action();
	test.readBag("tileBag.txt");
	System.out.println(test.toString());
	test.makeBag();
	//test.toStringTile();
	Tile x = test.getBag(98);
	System.out.println(x.getLetter());
	
    }

	    
}
