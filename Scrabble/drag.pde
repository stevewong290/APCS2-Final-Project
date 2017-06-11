
void dragFromHToC(Player p){
  for(int x = 0; x < p.getHand().size(); x++){
     if(mousePressed){
    /*    println(mouseX);
        println(mouseY);
        println(p.getHand().get(x).getXCor());
        println(p.getHand().get(x).getXCor() + 55);
        println(p.getHand().get(x).getYCor());
        println(p.getHand().get(x).getYCor() + 50); */
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
        p.getHand().get(x).display(mouseX, mouseY);
     /*   println(mouseX);
        println(mouseY);
        println(p.getHand().get(x).getXCor());
        println(p.getHand().get(x).getXCor() + 55);
        println(p.getHand().get(x).getYCor());
        println(p.getHand().get(x).getYCor() + 50);*/
      }
      else{
         if(mouseX > 0 && mouseX < 750 &&
            mouseY > 0 && mouseY < 750){
            if(p.getHand().get(x).getBool() == true){
               board[Math.round(mouseR)][Math.round(mouseC)].placeTile(p.getHand().get(x));
               xvals.add(new Integer(Math.round(mouseR)));
               yvals.add(new Integer(Math.round(mouseC)));
               p.getHand().get(x).setBool(false);
               p.getHand().remove(x);
            }
         }
      }
   }
}
void dragFromCToOther(){
   if(mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750){
      //println("hi");
   //   if(board[mouseR][mouseC].getTile().getLocked() == false){
        if(board[mouseR][mouseC].getTile() != null){
           // println(board[r][c]);
         board[mouseR][mouseC].getTile().setBool(true);
         tileSelected = true;
        // lockedstuff = true;
         board[mouseR][mouseC].getTile().setXYCor(mouseX, mouseY);
         storeR = mouseR;
         storeC = mouseC;
         board[storeR][storeC].getTile().display(mouseX,mouseY);
      }
//     }
   }
    else if(!mousePressed && (mouseX > 750 || mouseY > 750) && tileSelected){
     println("bye");
     board[storeR][storeC].getTile().setBool(false);
     if(turn % 2 == 1){
        p1.getHand().add(board[storeR][storeC].getTile());
        
     }
     else{
        p2.getHand().add(board[storeR][storeC].getTile());
     }
     board[storeR][storeC].removeTile();
     xvals.remove(findIndex(storeR,xvals));
     yvals.remove(findIndex(storeC,yvals));
     tileSelected = false;
     
   }
   else if(!mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750 && tileSelected){
      if(mouseR != storeR || mouseC != storeC){
      board[mouseR][mouseC].placeTile(board[storeR][storeC].getTile());
      xvals.remove(findIndex(storeR,xvals));
      yvals.remove(findIndex(storeC,yvals));
      xvals.add(new Integer(mouseR));
      yvals.add(new Integer(mouseC));
      board[storeR][storeC].getTile().setBool(false);  
      board[storeR][storeC].removeTile();
      }
      tileSelected = false;
   }
   else if(!mousePressed){
     tileSelected = false;
   }
}


/*void dragFromCToH(){
   if(mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750){
       superiorTileSelected = true;
       if(board[mouseR][mouseC].getTile() != null){
         board[mouseR][mouseC].getTile().setBool(true);
         board[mouseR][mouseC].getTile().setXYCor(mouseX, mouseY);
         storeR = mouseR;
         storeC = mouseC;
         board[storeR][storeC].getTile().display(mouseX,mouseY);
   }  
   else if(!mousePressed && (mouseX > 750 || mouseY > 750) && tileSelected){
     if(turn % 2 == 1){
        p1.getHand().add(board[storeR][storeC].getTile());
        
     }
     else{
        p2.getHand().add(board[storeR][storeC].getTile());
     }
     board[storeR][storeC].removeTile();
     tileSelected = false;
     
   }
     else{
        tileSelected = false; 
     }
   }
}*/
//mouseX > 900 && mouseX < 1285 && (playa 1(mouseY > 100 && mouseY < 150) || playa 2(mouseY > 200 && mouseY < 250)))
void displayDrag(ArrayList<Tile> a){
   for(int x = 0; x < a.size(); x++){
      if(a.get(x).getBool()){
         a.get(x).setXYCor(mouseX - 25, mouseY - 25); 
      }
      a.get(x).display(a.get(x).getXCor(), a.get(x).getYCor());
   }
}
/*
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