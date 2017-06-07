import java.util.*;

public class Scrabble{
    ArrayList<Integer> xcor = new ArrayList<Integer>();
    ArrayList<Integer> ycor = new ArrayList<Integer>();
    ArrayList<Integer> dir  = new ArrayList<Integer>();
    //1 = down, 2 = up, 3 = left, 4 = right
    
    public String BestWord(Board a, Player b){
	return " ";
    }
    public void findSpot(Tile[][] board){
	int posval = 0;
	for (int r = 0; r < 15; r++){
	    for (int c = 0; c < 15; c++){
		if(board[r][c] != null){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null && board[r][c + 3] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null && board[r][c - 3] == null){
			posval += 200;
		    }
		    //going from top to bottom
		    if(board[r - 1][c] == null && board[r - 2][c] == null && board[r - 3][c] == null){
			posval += 30;
		    }
		    //going from bottom to top
		    if(board[r + 1][c] == null && board[r + 2][c] == null && board[r + 3][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
	    }
	}
    }


    public static void main(String[] args){
	Tile A = new Tile("A", 1);
	
	Board a = new Board();
	a.set(0,0,a.get(),A);
	System.out.println(a.tileArrayString(a.get()));
    }
}
