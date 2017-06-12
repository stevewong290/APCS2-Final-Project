import java.util.*;
import controlP5.*;

//variables of actual game
Player p1 = new Player("Player 1");
Player p2 = new Player("Player 2");
Player current = p1;
ArrayList<Tile> bag = new ArrayList<Tile>();
Cell[][] board;
Cell[] exboard;
WordBank dict;
int turn = 0;

//variables for checking placement of word
ArrayList<Integer> xvals = new ArrayList<Integer>();
ArrayList<Integer> yvals = new ArrayList<Integer>();
String wordCheck;
boolean placement;

//GUI Stuff
PFont f;
ControlP5 cp5;
Textfield checkWord;
String textValue = "";
Button p1scramble;
Button p2scramble;
Button endTurn;
PImage startImg;
PImage endImg;
int screen = 0;

//Steve's Drag stuff
int storeR;
int storeC;
int mouseR = mouseX / 50;
int mouseC = mouseY / 50;
int dragDecider;
boolean tileSelected;
boolean superiorTileSelected;
boolean exchangeSelected;
boolean lockedstuff;

//variables for points
int rawWordScore = 0;
int multiplier = 1;
int finalWordScore = 0;
int pass = 0;
 

void setup(){
  size(1500,1000);
  makeDict();
  makeLetters();
  makeBoard();
  makeGUI();
  p1.drawTile();
  p2.drawTile();
  startImg = loadImage("startscreen.jpg");
  endImg = loadImage("end.jpg");
  dragDecider = 0;
//  makeExchangeBoard();
  //println(printBag());
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
 // f = createFont("Arial",16,true);
   
   
}

void draw(){
  mouseR = mouseX / 50;
  mouseC = mouseY / 50;
  if(screen == 0){
    //display start screen
    image(startImg, 0, 0, startImg.width * (1.125), startImg.height);
    textSize(50);
    text("Click Here to Start!", 300,800);
    if(mousePressed){
      screen=1;
      updateGUI();
    }
  }
  dragFromHToC(current);
  /*if(superiorTileSelected == false){
  dragFromHToE(current);
  }*/
  
  dragFromCToOther();
 // dragFromCToH();
/*  if(dragDecider == 1){
     dragFromCToC();
  }*/
  
  if(screen == 1){
  background(255);
  drawBoard();
  displayHands();
  wordChecker();
  placeChecker();
  displayTurn();
  displayBagCount();
  displayScores();
  displayDictionary();
 // drawExchangeBoard();
  println(pass);
  if(pass == 3){
    screen = 2;
  }
  }
  
  if(screen == 2){
    hideEverything();
    image(endImg, 0, 0, endImg.width*2, endImg.height*2);
    fill(999);
    textSize(50);
    textAlign(CENTER);
    text("The Winner is: " + findWinner(), 500 , 500);
  }
  //updateTurn();
  
  
  

}