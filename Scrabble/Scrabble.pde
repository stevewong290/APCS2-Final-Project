import java.util.*;
import controlP5.*;
Player p1 = new Player();
Player p2 = new Player();
ArrayList<Integer> xvals = new ArrayList<Integer>();
ArrayList<Integer> yvals = new ArrayList<Integer>();
ArrayList<Tile> bag = new ArrayList<Tile>();
Cell[][] board;
WordBank dict;
PFont f;
ControlP5 cp5;
Textfield checkWord;
String textValue = "";
String wordCheck;
boolean placement;
int storeR;
int storeC;
int dragDecider;

 

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
 // f = createFont("Arial",16,true);
   PFont font = createFont("arial",20);
  
  cp5 = new ControlP5(this);
  fill(999);
  checkWord=cp5.addTextfield("input")
     .setPosition(1200,600)
     .setSize(200,40)
     .setFont(font)
     .setFocus(true)
     ;
   
}

void draw(){
  background(255);
  drawBoard();
  displayHands();
/*  if(mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750){
    dragDecider = 1;
  }
  if(mousePressed && mouseX > 900 && mouseX < 1285 && ((mouseY > 100 && mouseY < 150) || (mouseY > 200 && mouseY < 250))){
     dragDecider = 0; 
  }*/
  println(dragDecider);
  if(dragDecider != 1){
  dragging(p2);
  dragTile(p2.getHand());
  }else{
  cellToCell();
  }
  wordCheck=checkWord.getText().toUpperCase();
  //println(dict.search(wordCheck));
  fill(0);
  //text(wordCheck,850,850);
  if(dict.search(wordCheck)){
    text(wordCheck+" is a word.",950,850);
  }else{
    if(wordCheck.length()>0){
      text(wordCheck+" is not a word.",950,850);
    }
  }
    
  if(!(xvals.size() == 0) && !placement){
                 fill(0);
                 text("INVALID PLACEMENT", 250,850);
               }
  /*fill();
  textFont(f,16);
  textAlign(CENTER);
  fill(0,102,153);  
  text("TEST",500,500);*/
  /*for(int x = 0; x < bag.size();x++){
    println(bag.get(x).getLetter());
}*/
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
         //println(mouseX + 25);
         //println(mouseY + 35);
         //println(p.getHand().get(x).getXCor());
         //println(p.getHand().get(x).getXCor() + 55);
         //println(p.getHand().get(x).getYCor());
         //println(p.getHand().get(x).getYCor() + 50);
         if( 
       (Math.round(mouseX)+25 > p.getHand().get(x).getXCor()) && 
       (Math.round(mouseX)+25 < p.getHand().get(x).getXCor() + 55) &&
       (Math.round(mouseY)+35 > p.getHand().get(x).getYCor()) &&
       (Math.round(mouseY)+35 < p.getHand().get(x).getYCor() + 50)){
      //   dragDecider = 1;
           p.getHand().get(x).setBool(true);
         //  dragTile(p.getHand());
       }
       if(mouseX > 0 && mouseX < 750 &&
          mouseY > 0 && mouseY < 750 &&
          (board[Math.round(mouseX) / 50][Math.round(mouseY) / 50].getTile() != null)){
           //   println(Math.round(mouseX) / 50);
        //      println(mouseX);
              board[Math.round(mouseX) / 50][Math.round(mouseY) / 50].getTile().setBool(true);
          }
           // println(board[0][0]);
       }
       else{
        /* for(int r = 0; r < 15; r++){
           for(int c = 0; c < 15; c++){
             if(
           }
           
         }*/
        if(p.getSelectedTile() != null){
          if(mouseX >= 0 && mouseX <= 750 &&
             mouseY >= 0 && mouseY <= 750){
               board[Math.round(mouseX) / 50][Math.round(mouseY) / 50].placeTile(p.getSelectedTile());
             //  p.getSelectedTile().setBool(false);
             //  storeR = Math.round(mouseX) / 50;
             //  storeC = Math.round(mouseY) / 50;
               dragDecider = 1;
               xvals.add(new Integer(Math.round(mouseX)/50));
               yvals.add(new Integer(Math.round(mouseY)/50));
               placement=checkPlacement();
               //println(placement);
               /*if(!placement){
                 fill(0);
                 text("INVALID PLACEMENT", 100,850);
               }*/
             //  println(p.getSelectedTile());
       //   p.getHand().remove(g);
          if(p.getHand().size() > 1){
          for(int g = 0; g < p.getHand().size(); g++){
            if(p.getHand().get(g).getBool() == true){
              p.getHand().remove(g);
            }
          //  p.getHand().get(g).setBool(false);
          }
          }
          else{
            p.getHand().remove(0);
          }
          }
          
    
          
      }
      
     // println(p.getSelectedTile()) ;  
      }
            
    }
}


void dragTile(ArrayList<Tile> a){
   for(int x = 0; x < a.size(); x++){
     if(a.get(x).getBool()){
      a.get(x).setXYCor(mouseX - 25, mouseY - 25); 
     }
     a.get(x).display(a.get(x).getXCor(), a.get(x).getYCor());
   }
   //println(board[7][7].getTile());
   
}

void backDragTile(){
  for(int r = 0; r < 15; r++){
     for(int c = 0; c < 15; c++){
       if(board[r][c].getTile() != null
       && board[r][c].getTile().getBool() == true){
          storeR = r;
          storeC = c;
           //  println(board[r][c].getTile());
           //  board[r][c].getTile().setXYCor(mouseX - 25, mouseY - 25);
            
         //     board[r][c].removeTile();
          
       }
     }
   }
   board[storeR][storeC].getTile().display(mouseX, mouseY);
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

void cellToCell(){
  if(mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750){
    backDragTile();
  }
  if(mousePressed && mouseX > 900 && mouseX < 1285 && ((mouseY > 100 && mouseY < 150) || (mouseY > 200 && mouseY < 250))){
     dragDecider = 0; 
  }
  
  else{
   
    if(mouseX >= 0 && mouseX <= 750 &&
       mouseY >= 0 && mouseY <= 750 &&
       storeR > 0 && storeC > 0){
       board[Math.round(mouseX) / 50][Math.round(mouseY) / 50].placeTile(board[storeR][storeC].getTile());
       
     board[storeR][storeC].removeTile();
     storeR = Math.round(mouseX) / 50;
     storeC = Math.round(mouseY) / 50;
     
       }
     
  }
}
boolean checkPlacement(){
  boolean goodX = true;
  boolean goodY = true;
  int xval = xvals.get(0);
  int yval = yvals.get(0);
  for(int x = 0; x<xvals.size(); x++){
    if(xvals.get(x)!=xval){
       goodX = false;
    }
  }
  for(int y =0; y<yvals.size(); y++){
    if(yvals.get(y)!=yval){
      goodY = false;
    }
  }
  return goodX || goodY;
}

int findIndex(int cor, ArrayList<Integer> list){
  for(int i=0; i<list.size(); i++){
    if(list.get(i).intValue() == cor){
      return i;
    }
  }
  return -1;
}