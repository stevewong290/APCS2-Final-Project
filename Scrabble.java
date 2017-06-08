import java.util.*;

public class Scrabble{
    static ArrayList<Integer> xcor = new ArrayList<Integer>();
    static ArrayList<Integer> ycor = new ArrayList<Integer>();
    static ArrayList<Integer> dir  = new ArrayList<Integer>();
    static ArrayList<Integer> val  = new ArrayList<Integer>();
    //1000 = left to right, 200 = right to left, 30 = bottom to top, 4 = top to bottom
    
    public String BestWord(Board a, Player b){
	return " ";
    }

    public static void clearInt(ArrayList<Integer> array){
	while(array.size() > 0){
	    array.remove(0);
	}
    }

    /*  public static void spotRanker(ArrayList<Integer> x, ArrayList<Integer> y, ArrayList<Integer> direction, Board a){
	int[][] specspot = a.arrget();
	Tile[][] BOARD = a.get();
	//after rank spots, it clears the ArrayList
	clearInt(x);
	clearInt(y);
	clearInt(direction);
	}*/

    public static void ranker(int[][] specspotboard, int x, int y){
	int value = 0;
	if(specspotboard[x][y] == 5){
	    value = 4;
	}
	if(specspotboard[x][y] == 6){
	    value = 3;
	}
	if(specspotboard[x][y] == 2){
	    value = 2;
	}
	if(specspotboard[x][y] == 3){
	    value = 1;
	}
	if(value == 0){
	    value = 5;
	}
	return value;
    }

    public static int compare(int x, int y){
	if(x > y){
	    return y;
	}
	else{
	    return x;
	}
    }
	

    public static void findSpot(Tile[][] board){
	int posval = 0;
	for (int r = 0; r < 15; r++){
	    for (int c = 0; c < 15; c++){
		if(board[r][c] != null && r > 1 && r < 13 && c > 1 && c < 13){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 1 && c > 1 && c < 13){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 0 && c > 2 && c < 12){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r > 2 && r < 12 && c == 1){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r > 2 && r < 12 && c == 0){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
	       	if(board[r][c] != null && r == 13 && c > 1 && c < 13){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 14 && c > 1 && c < 13){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r > 1 && r < 13 && c == 13){
		    //going from left to right
		    if(board[r][c + 1] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r > 1 && r < 13 && c == 14){
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 1 && c == 1){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 13 && c == 1){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 1 && c == 13){
		    //going from left to right
		    if(board[r][c + 1] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 13 && c == 13){
		    //going from left to right
		    if(board[r][c + 1] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 0 && c == 0){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 0 && c == 1){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null){
			posval += 200;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 0 && c == 13){
		    //going from left to right
		    if(board[r][c + 1] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 0 && c == 14){
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 1 && c == 0){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 1 && c == 14){
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null && board[r + 2][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 13 && c == 0){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null){
			posval += 4;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 14 && c == 0){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 14 && c == 1){
		    //going from left to right
		    if(board[r][c + 1] == null && board[r][c + 2] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 14 && c == 13){
		    //going from left to right
		    if(board[r][c + 1] == null){
			posval = 1000;
		    }
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 14 && c == 14){
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    if(posval != 0){
			xcor.add(c);
			ycor.add(r);
			dir.add(posval);
		    }
		}
		if(board[r][c] != null && r == 13 && c == 14){
		    //going from right to left
		    if(board[r][c - 1] == null && board[r][c - 2] == null){
			posval += 200;
		    }
		    //going from bottom to top
		    if(board[r - 1][c] == null && board[r - 2][c] == null){
			posval += 30;
		    }
		    //going from top to bottom
		    if(board[r + 1][c] == null){
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
	a.set(13,14,a.get(),A);
	System.out.println(a.tileArrayString(a.get()));
	findSpot(a.get());
	spotRanker(xcor, ycor, dir, a);
	/*	System.out.println(xcor.get(0));
	System.out.println(ycor.get(0));
	System.out.println(dir.get(0));*/
    }
}
