public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for(int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  
}
public int findFirstVowel(String sWord)
{
  char[] vowels = {'a', 'e', 'i', 'o', 'u'};
  for(int i = 0; i < sWord.length(); i++){
    for(char vow : vowels){
      if(vow == sWord.charAt(i)){
        return i;
      }
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
