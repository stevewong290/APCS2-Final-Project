import java.util.*;
Board gameBoard= new Board();
Player p1 = new Player();
Player p2 = new Player();
ArrayList<Tile> bag = new ArrayList<Tile>();
Action a = new Action();

void setup(){
  size(1000,800);
}

void draw(){
  ellipse(50,50,80,80);
}