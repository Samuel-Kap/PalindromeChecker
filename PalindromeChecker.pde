public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{

  word=word.toLowerCase();
  //set lowercase
  String s= "";
  for(int i=0;i<word.length();i++){
    if(word.substring(i,i+1).equals(" ")){}else{s=s+word.substring(i,i+1);}
  }
  word= s;
  //remove space
  String q ="";
  for(int i=0;i<word.length();i++){
    if(Character.isLetter(word.charAt(i))){
      q+= word.substring(i,i+1);
    }
  }
  word=q;
  //remove punct fucnt
  String str="";
  for(int i=word.length();i>0;i--){
    str = str + word.substring(i-1,i);
  }
  if(str.equals(word))
  return true;
  return false;
  //reverse function
}
public String reverse(String str)
{
    String sNew = new String();
    sNew="";
  for(int i=str.length();i>0;i--){
    str = str + str.substring(i-1,i);
  }
    return sNew;
}
