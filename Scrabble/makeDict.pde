void makeDict(){
  dict= new WordBank("words.txt");
  dict.sort(dict.allWords);
}