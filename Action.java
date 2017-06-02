import java.util.*;
import java.io.*;
public class Action{
    String[][] tileBag;
    ArrayList<Tile> bag;

    public Action(){
    }

    public Tile getBag(int index){
	return bag.get(index);
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

    public void draw(ArrayList<Tile> hand){
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
	

    public void updateBag(ArrayList<Tile> tilesDrawn){
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
	for(int x=0; x<bag.size(); x++){
	    str+=bag.get(x).getLetter()+" ";
	}
	return str;
    }

    public String toStringHand(ArrayList<Tile> hand){
	String str="";
	for(int x=0; x<hand.size(); x++){
	    str+=hand.get(x).getLetter()+" ";
	}
	return str;
    }

		
    public static void main(String[]args){
	Action test = new Action();
	test.readBag("tileBag.txt");
	System.out.println(test.toString());
	test.makeBag();
	System.out.println(test.toStringTile());
	//Tile x = test.getBag(98);
	//System.out.println(x.getLetter());
	Tile a = new Tile("A",1);
	Tile q = new Tile("Q",10);
	Tile s = new Tile("S",1);
	Tile v = new Tile("V",4);
	Tile qu = new Tile("?",0);
	ArrayList<Tile> used = new ArrayList<Tile>();
	used.add(a);
	used.add(q);
	used.add(s);
	used.add(v);
	used.add(qu);
	test.updateBag(used);
	System.out.println(test.toStringTile());
	ArrayList<Tile> hand1 = new ArrayList<Tile>();
	hand1.add(a);
	hand1.add(q);
	hand1.add(s);
	hand1.add(v);
	hand1.add(qu);
	System.out.println(test.toStringHand(hand1));
	test.draw(hand1);
	System.out.println(test.toStringHand(hand1));
	System.out.println(test.toStringTile());
    }

	    
}
