// this was in the draw
/*  if(mousePressed && mouseX > 0 && mouseX < 750 && mouseY > 0 && mouseY < 750){
    dragDecider = 1;
  }
  if(mousePressed && mouseX > 900 && mouseX < 1285 && ((mouseY > 100 && mouseY < 150) || (mouseY > 200 && mouseY < 250))){
     dragDecider = 0; 
  }
  println(dragDecider);
  if(dragDecider != 1){
  dragging(p2);
  dragTile(p2.getHand());
  }else{
  cellToCell();
  }*/
  /*fill();
  textFont(f,16);
  textAlign(CENTER);
  fill(0,102,153);  
  text("TEST",500,500);*/
  /*for(int x = 0; x < bag.size();x++){
    println(bag.get(x).getLetter());
}*/

/*void dragging(Player p){
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
/*        if(p.getSelectedTile() != null){
          if(mouseX >= 0 && mouseX <= 750 &&
             mouseY >= 0 && mouseY <= 750){
               board[Math.round(mouseX) / 50][Math.round(mouseY) / 50].placeTile(p.getSelectedTile());
             //  p.getSelectedTile().setBool(false);
             //  storeR = Math.round(mouseX) / 50;
             //  storeC = Math.round(mouseY) / 50;
               dragDecider = 1;
               xvals.add(new Integer(Math.round(mouseX)/50));
               yvals.add(new Integer(Math.round(mouseY)/50));
               
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
}*/