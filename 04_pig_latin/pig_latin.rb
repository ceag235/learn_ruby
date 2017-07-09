#write your code here
def translate (text)
  word=text.split(" ")
  pigWords=""
  isFirst=true
  isQu=true
  isQu2=true
  word.each {|w|
    isVowel=w.start_with?("a","e","i","o","u")
    isVowel2=w.split("")[1].start_with?("a","e","i","o","u")
    isVowel3=w.split("")[2].start_with?("a","e","i","o","u")
    isQu=w[0,2]=="qu"
    isQu2=w[1,2]=="qu"
    leng=w.length
    if isVowel
      pigWord=w.concat("ay")
    elsif isQu
      pigWord=w[2,leng]+w[0,2]+"ay"
    elsif isQu2
      pigWord=w[3,leng]+w[0,3]+"ay"
    elsif isVowel2
      pigWord=w[1,leng]+w[0]+"ay"
    elsif isVowel3
      pigWord=w[2,leng]+w[0,2]+"ay"
    else
      pigWord=w[3,leng]+w[0,3]+"ay"
    end
    if isFirst
      pigWords=pigWord
      isFirst=false
    else
      pigWords=pigWord.prepend(pigWords+" ")
    end
  }
    pigWords

end
