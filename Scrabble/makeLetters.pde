void makeLetters(){
  for(int x=0; x<9; x++){
    Tile a = new Tile("A",1);
    Tile i = new Tile("I",1);
    bag.add(a);
    bag.add(i);
  }
  for(int x=0; x<12; x++){
    Tile e = new Tile("E",1);
    bag.add(e);
  }
  for(int x=0; x<8; x++){
    Tile o = new Tile("O",1);
    bag.add(o);
  }
  for(int x=0; x<6; x++){
    Tile n = new Tile("N",1);
    Tile r = new Tile("R",1);
    Tile t = new Tile("T",1);
    bag.add(n);
    bag.add(r);
    bag.add(t);
  }
  for(int x=0; x<4; x++){
    Tile l = new Tile("L",1);
    Tile s = new Tile("S",1);
    Tile u = new Tile("U",1);
    Tile d = new Tile("D",2);
    bag.add(l);
    bag.add(s);
    bag.add(u);
    bag.add(d);
  }
  for(int x=0; x<3; x++){
    Tile g = new Tile("G",2);
    bag.add(g);
  }
  for(int x=0; x<2; x++){
    Tile b = new Tile("B",3);
    Tile c = new Tile("C",3);
    Tile m = new Tile("M",3);
    Tile p = new Tile("P",3);
    Tile f = new Tile("F",4);
    Tile h = new Tile("H",4);
    Tile v = new Tile("V",4);
    Tile w = new Tile("W",4);
    Tile y = new Tile("Y",4);
    bag.add(b);
    bag.add(c);
    bag.add(m);
    bag.add(p);
    bag.add(f);
    bag.add(h);
    bag.add(v);
    bag.add(w);
    bag.add(y);
  }
  Tile k = new Tile("K",5);
  Tile j = new Tile("J",8);
  Tile x = new Tile("X",8);
  Tile q = new Tile("Q",10);
  Tile z = new Tile("Z",10);
  bag.add(k);
  bag.add(j);
  bag.add(x);
  bag.add(q);
  bag.add(z);
}

String printBag(){
  String str = "";
  for(int x=0; x<bag.size(); x++){
    str+=bag.get(x).getLetter()+" ";
  }
  return str;
}