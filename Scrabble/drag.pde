import java.util.*;

void dragFromHToC(Player p){
  for(int x = 0; x < p.getHand().size(); x++){
     if(mousePressed){
        println(mouseX);
        println(mouseY);
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
        }
        if(p.getHand().get(x).getBool() == true){
           p.getHand().get(x).setXYCor(mouseX, mouseY);
        }
  //      p.getHand().get(x).display(mouseX, mouseY);
        println(mouseX);
        println(mouseY);
        println(p.getHand().get(x).getXCor());
        println(p.getHand().get(x).getXCor() + 55);
        println(p.getHand().get(x).getYCor());
        println(p.getHand().get(x).getYCor() + 50);
      }
      else{
         if(mouseX > 0 && mouseX < 750 &&
            mouseY > 0 && mouseY < 750){
            if(p.getHand().get(x).getBool() == true){
               board[Math.round(mouseX / 50)][Math.round(mouseY / 50)].placeTile(p.getHand().get(x)); 
               p.getHand().get(x).setBool(false);
               p.getHand().remove(x);
            }
         }
      }
   }
}
/*void dragFromCToOther(){
   if(mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750){
      for(int r = 0; r < 15; r++){
         for(int c = 0; c < 15; c++){
            if(board[r][c] != null){
               board[r][c].getTile().setBool(true);
               board[r][c].getTile().setXYCor(mouseX, mouseY);
               storeR = r;
               storeC = c;
            }
         }
      }
   board[storeR][storeC].getTile().display(mouseX,mouseY);
   }
}


void displayDrag(ArrayList<Tile> a){
   for(int x = 0; x < a.size(); x++){
      if(a.get(x).getBool()){
         a.get(x).setXYCor(mouseX - 25, mouseY - 25); 
      }
      a.get(x).display(a.get(x).getXCor(), a.get(x).getYCor());
   }
}

void decider(Player p){
   if(mousePressed){
      if(
        (Math.round(mouseX)+25 > p.getHand().get(x).getXCor()) && 
        (Math.round(mouseX)+25 < p.getHand().get(x).getXCor() + 55) &&
        (Math.round(mouseY)+35 > p.getHand().get(x).getYCor()) &&
        (Math.round(mouseY)+35 < p.getHand().get(x).getYCor() + 50)){
            dragDecider = 0;
      }
      else{
        dragDecider = 1;
      }
   }   
}

*/