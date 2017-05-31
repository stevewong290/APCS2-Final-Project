import java.util.*;
import java.io.*;
public class Action{
    int p1Score;
    int p2Score;
    int p3Score;
    int p4Score;
    String[][] tileBag;
    public Action(){

    }

    public void makeBag(String filename){
	try{
	    File text= new File(filename);
	    Scanner data = new Scanner(text);
	    tileBag=new String[26][3];
	    for(int r=0;r<26;r++){
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
		
    public static void main(String[]args){
	Action test = new Action();
	test.makeBag("tileBag.txt");
	System.out.println(test.toString());
    }

	    
}
