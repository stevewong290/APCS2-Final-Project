public class Tile extends Action{
    String letter;
    int value;
    public Tile(String s, int v){
	letter = s;
	value = v;
    }

    public String getLetter(){
	return letter;
    }

}
