public void setup() {
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}


public void draw() {
  //not used
}


public int findFirstVowel(String sWord) {
  for (int i = 0; i < sWord.length(); i++)
    if (sWord.substring(i, i+1).equals("a") || sWord.substring(i, i+1).equals("e") || sWord.substring(i, i+1).equals("i") || sWord.substring(i, i+1).equals("o") || sWord.substring(i, i+1).equals("u"))
      return i;
  return -1;
}

public String pigLatin(String sWord) {
  if (findFirstVowel(sWord) == -1) { //consonant only words
    return sWord + "ay";
  } 
  else if (findFirstVowel(sWord) == 0) { //words that begin with vowels
    return sWord + "way";
  }
  else if (sWord.substring(0,1).equals("q") && sWord.substring(1,2).equals("u")) { //words beginning with qu
    return sWord.substring(2) + "qu" +"ay";
  }
  else if ((sWord.charAt(0) != 'q' && sWord.charAt(1) != 'u') && findFirstVowel(sWord) != 0){ //words that begin with consonants
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
  else {
    return "ERROR!";
  }
}
