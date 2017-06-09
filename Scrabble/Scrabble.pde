import java.util.*;
Player p1 = new Player();
Player p2 = new Player();
ArrayList<Tile> bag = new ArrayList<Tile>();
Cell[][] board;
WordBank dict;


void setup(){
  size(400,400);
  dict= new WordBank("words.txt");
  dict.sort(dict.allWords);
  makeLetters();
  //println(printBag());
  makeBoard();
  p1.drawTile();
  p2.drawTile();
  /*board[0][0].placeTile(bag.get(0));
  println(printBoard());
  println(printSpecialBoard());
  p1.drawTile();
  println(p1.printHand());
  p1.scramble();
  println(p1.printHand());
  p1.exchange(p1.hand.get(0));
  println(p1.printHand());
  println(dict.two.size());
  println(dict.two.get(0));
  println(dict.three.size());
  println(dict.seven.size());
  println(dict.eight.size());
  println(dict.search("A"));
  println(dict.search("ED"));
  println(dict.search("EG"));
  println(dict.checkWord("EG"));
  println(dict.checkWord("ED"));
  println(dict.checkWord("PARCHED"));*/
}

void draw(){
  ellipse(50,50,80,80);
}