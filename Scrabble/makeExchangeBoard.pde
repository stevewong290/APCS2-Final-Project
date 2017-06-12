void makeExchangeBoard(){
   exboard = new Cell[7];
   for(int x = 0; x < 7; x++){
      exboard[x] = new Cell(x * 50, 300); 
   }
  
  
  
}

void drawExchangeBoard(){
  fill(0);
  text("Exchange", 900, 275);
  for(int x = 0; x < 7; x++){
    
    exboard[x].display(875 + (55 * x), 300);
  }
}