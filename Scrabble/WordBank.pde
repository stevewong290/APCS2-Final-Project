import java.util.*;
import java.io.*;

class WordBank{
    ArrayList<String> allWords;
    ArrayList<String> two;
    ArrayList<String> three;
    ArrayList<String> four;
    ArrayList<String> five;
    ArrayList<String> six;
    ArrayList<String> seven;
    ArrayList<String> eight;
    ArrayList<String> nine;
    ArrayList<String> ten;
    ArrayList<String> eleven;
    ArrayList<String> twelve;
    ArrayList<String> thirteen;
    ArrayList<String> fourteen;
    ArrayList<String> fifteen;
    
    
    //
    WordBank(String filename){
  
      allWords = new ArrayList<String>();
      String[] words = loadStrings(filename);
      for(int x = 0; x < words.length; x++){
        allWords.add(words[x]);
      }
   /*   File text = new File(filename);
      Scanner infile = new Scanner(text);
      while(infile.hasNextLine()){
    String line = infile.nextLine();
    allWords.add(line);
      }
      //infile.close();*/
    }
    

    String toString(){
  int x = allWords.size() - 1;
  String y = "";
  while(x >= 0){
      y += allWords.get(x);
      x--;
  }
  return y;
    }

    boolean checkWord(String s){
  return search(s);
    }
    
    String longestWord(ArrayList<String> a){
  String ans = "";
  for(int x = a.size() - 1; x >= 0; x--){
      if (a.get(x).length() > ans.length()){
    ans = a.get(x);
      }
  }
  
     return ans;
    }

    void sort(ArrayList<String> a){
  two=       new ArrayList<String>();
  three =    new ArrayList<String>();
  four =     new ArrayList<String>();
  five =     new ArrayList<String>();
  six =      new ArrayList<String>();
  seven =    new ArrayList<String>();
  eight =    new ArrayList<String>();
  nine =     new ArrayList<String>();
  ten =      new ArrayList<String>();
  eleven =   new ArrayList<String>();
  twelve =   new ArrayList<String>();
  thirteen = new ArrayList<String>();
  fourteen = new ArrayList<String>();
  fifteen =  new ArrayList<String>();
  for(int x = 0; x < a.size(); x++){
 
      if(a.get(x).length() == 2){
    two.add(a.get(x));
      }
      else if(a.get(x).length() == 3){
    three.add(a.get(x));
      }
      else if(a.get(x).length() == 4){
    four.add(a.get(x));
      }
      else if(a.get(x).length() == 5){
    five.add(a.get(x));
      }
      else if(a.get(x).length() == 6){
    six.add(a.get(x));
      }
      else if(a.get(x).length() == 7){
    seven.add(a.get(x));
      }
      else if(a.get(x).length() == 8){
    eight.add(a.get(x));
      }
      else if(a.get(x).length() == 9){
    nine.add(a.get(x));
      }
      else if(a.get(x).length() == 10){
    ten.add(a.get(x));
      }
      else if(a.get(x).length() == 11){
    eleven.add(a.get(x));
      }
      else if(a.get(x).length() == 12){
    twelve.add(a.get(x));
      }
      else if(a.get(x).length() == 13){
    thirteen.add(a.get(x));
      }
      else if(a.get(x).length() == 14){
    fourteen.add(a.get(x));
      }
      else{
    fifteen.add(a.get(x));
      }
  }
    }

    /*  public static String listToString(ArrayList<String> a){
        return a.get(0);
  }
    */

    boolean search(String s){
  if(s.length() < 2 || s.length() > 15){
      return false;
  }
  else{
      if(s.length() == 2){
    return binarySearch(two, s, 0, two.size() - 1);
      }
      else if(s.length() == 3){
    return binarySearch(three, s, 0, three.size() - 1);
      }
      else if(s.length() == 4){
    return binarySearch(four, s, 0, four.size() - 1);
      }
      else if(s.length() == 5){
    return binarySearch(five, s, 0, five.size() - 1);
      }
      else if(s.length() == 6){
    return binarySearch(six, s, 0, six.size() - 1);
      }
      else if(s.length() == 7){
    return binarySearch(seven, s, 0, seven.size() - 1);
      }
      else if(s.length() == 8){
    return binarySearch(eight, s, 0, eight.size() - 1);
      }
      else if(s.length() == 9){
    return binarySearch(nine, s, 0, nine.size() - 1);
      }
      else if(s.length() == 10){
    return binarySearch(ten, s, 0, ten.size() - 1);
      }
      else if(s.length() == 11){
    return binarySearch(eleven, s, 0, eleven.size() - 1);
      }
      else if(s.length() == 12){
    return binarySearch(twelve, s, 0, twelve.size() - 1);
      }
      else if(s.length() == 13){
    return binarySearch(thirteen, s, 0, thirteen.size() - 1);
      }
      else if(s.length() == 14){
    return binarySearch(fourteen, s, 0, fourteen.size() - 1);
      }
      else{
    return binarySearch(fifteen, s, 0, fifteen.size() - 1);
      }
  }
    }

    boolean binarySearch(ArrayList<String> a, String s, int lower, int upper){
  int lowerBound = lower;
  int upperBound = upper;
  if(s.length() < 2 || s.length() > 15){
      return false;
  }
  else if(lowerBound > upperBound){
      return false;
  }
  else{
      if(upperBound - lowerBound == 1){
    if(s.equals(a.get(lowerBound))){
        return true;
    }
    else if(s.equals(a.get(upperBound))){
        return true;
    }
    else{
        return false;
    }
      }
      else{
    if(s.compareTo(a.get((lowerBound + upperBound) / 2)) > 0){
        lowerBound = (((lowerBound + upperBound) / 2));
        return binarySearch(a, s, lowerBound, upperBound);
    }
    else if(s.compareTo(a.get((lowerBound + upperBound) / 2)) < 0){
        upperBound = (((lowerBound + upperBound) / 2));
        return binarySearch(a, s, lowerBound, upperBound);
    }
    else {
        if(s.equals(a.get((lowerBound + upperBound) / 2))){
      return true;
        }
        else {
      return false;
        }
    }
      }
  }
  
    } 
    
}