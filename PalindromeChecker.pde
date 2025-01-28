public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = onlyLetters(word);
  String t = noSpaces(word);
  String u = noCapitals(word);
  if(s.equals(reverse(s)) || t.equals(reverse(t)) || u.equals(reverse(u))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
     String sNew = new String();
    for(int i = str.length(); i > 0; i--){
    sNew += str.substring(i-1, i);
  }
    return sNew;
}

public String onlyLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      s += sString.charAt(i);
    }
    
  }
  return s;
}

public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i)) == true){
    s += sWord.charAt(i);
  }

}
return s;
}

public String noCapitals(String sWord){
  sWord = sWord.toLowerCase();
  return sWord;
}
