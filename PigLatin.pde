public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for(int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  
}
public int findFirstVowel(String word){
  for(int i = 0; i < word.length(); i++){
  if(word.charAt(i)== 'a'){
  return i;
  }
  else if(word.charAt(i)== 'e'){
  return i;
  }
  else if(word.charAt(i)== 'i'){
  return i;
  }
  else if(word.charAt(i)== 'o'){
  return i;
  }
  }
  return -1;
}

public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0){
    return sWord + "way";
  }
  else if(findFirstVowel(sWord) == 1){
    return sWord.substring(1) + sWord.substring(0,1) + "ay";
  }
  else{
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
}
