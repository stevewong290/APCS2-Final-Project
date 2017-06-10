import java.util.*;
Player p1 = new Player();
Player p2 = new Player();
ArrayList<Tile> bag = new ArrayList<Tile>();
Cell[][] board;
WordBank dict;
PFont f;


void setup(){
  size(1500,1000);
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
  f = createFont("Arial",16,true);
}

void draw(){
  background(255);
  drawBoard();
  displayHands();
  dragging(p2);
  
  /*fill();
  textFont(f,16);
  textAlign(CENTER);
  fill(0,102,153);  
  text("TEST",500,500);*/

  
}

void drawBoard(){
  for(int r=0;r<15;r++){
    for(int c=0; c<15; c++){
      fill(999);
      if(board[r][c].getValue() != 0){
    int val=board[r][c].getValue();
    if(val==2){
      if(board[r][c].getXCor()/50==7 && board[r][c].getYCor()/50==7){
        board[r][c].setValue(245,193,223);
      }else{
      board[r][c].setValue(193,245,217);
    }
    }
    if(val==3){
      board[r][c].setValue(252,92,92);
    }
    if(val==5){
      board[r][c].setValue(184,221,250);
    }
    if(val==6){
      board[r][c].setValue(106,121,250);
    }
      }
      board[r][c].display(board[r][c].getXCor(), board[r][c].getYCor());
    }
  }
}
void dragging(Player p){
    for(int x = 0; x < p.getHand().size(); x++){
       if(mousePressed){ 
         println(mouseX + 25);
         println(mouseY + 35);
         println(p.getHand().get(x).getXCor());
         println(p.getHand().get(x).getXCor() + 55);
         println(p.getHand().get(x).getYCor());
         println(p.getHand().get(x).getYCor() + 50);
         if( 
       (Math.round(mouseX)+25 > p.getHand().get(x).getXCor()) && 
       (Math.round(mouseX)+25 < p.getHand().get(x).getXCor() + 55) &&
       (Math.round(mouseY)+35 > p.getHand().get(x).getYCor()) &&
       (Math.round(mouseY)+35 < p.getHand().get(x).getYCor() + 50)){
           p.getHand().get(x).setBool(true);
           dragTile(p.getHand());
         }
       }
       else{
      if(p.getSelectedTile() != null){
          if(mouseX >= 0 && mouseX <= 750 &&
             mouseY >= 0 && mouseY <= 750){
               board[Math.round(mouseX) / 50][Math.round(mouseY) / 50].placeTile(p.getSelectedTile());
               
          }
          println(p.getSelectedTile());
          p.getHand().remove(g);
          if(p.getHand().size() > 1){
          for(int g = 0; g < p.getHand().size(); g++){
            if(p.getHand().get(g).getBool() == true){
              p.getHand().remove(g);
            }
            p.getHand().get(g).setBool(false);
          }
          }
          
          else{
          p.getHand().remove(0);
          }
          
      }
      
     // println(p.getSelectedTile()) ;  
      }
            
    }
    }


void dragTile(ArrayList<Tile> a){
   for(int x = 0; x < a.size(); x++){
     if(a.get(x).getBool()){
      a.get(x).setXYCor(mouseX, mouseY); 
     }
   }
}

void displayHands(){
  textSize(32);
  fill(0);  
  text("TEST",900,700);
  text("SteveEEEE", 900,50);
  text("Stephanie",900,150);
  for(int x=0; x<7; x++){
    p1.getHand().get(x).display(900+(55*x),100);
    
  }
  for(int x=0; x<p2.getHand().size(); x++){
    p2.getHand().get(x).display(900+(55*x),200);
  }
    
}