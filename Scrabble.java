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
		if(Tile[r][c] != null){
		    //going from left to right
		    if(Tile[r][c + 1] == null && Tile[r][c + 2] == null && Tile[r][c + 3] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(Tile[r][c - 1] == null && Tile[r][c - 2] == null && Tile[r][c - 3] == null){
			posval += 200;
		    }
		    //going from top to bottom
		    if(Tile[r - 1][c] == null && Tile[r - 2][c] == null && Tile[r - 3][c] == null){
			posval += 30;
		    }
		    //going from bottom to top
		    if(Tile[r + 1][c] == null && Tile[r + 2][c] == null && Tile[r + 3][c] == null){
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
	
	Board a = new Board();
	gameBoard[0][0]
    }
}
