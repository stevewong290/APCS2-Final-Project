public class Tile{
    String letter;
    int value;
    public Tile(String s, int v){
	letter = s;
	value = v;
    }

    public String getLetter(){
	return letter;
    }

    public int getValue(){
	return value;
    }
    public String toString(){
	return letter;
    }
}
