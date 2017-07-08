def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text,num=0)
  if num == 0
    texts=text+" "+text
  else
    texts=text
    while (num>1) do
      texts=texts+" "+text
      num=num-1
    end
  end
  texts
end

def start_of_word(text="a",num=0)
  if (num == 1 or num==0)
    letters=text[0]
  else
    letters=text[0,num]
    letter=letters
  end
  letters
end

def first_word (text)
  fWord=text.split(" ")
  fWord[0]
end

def titleize (text)
  caps = text.capitalize
  caps = caps.split(" ")
  word=""
  cant =0
  if caps.length > 1
    word=caps[0]
    while cant < caps.length-1 do
      cant=cant+1
      wordSub=caps[cant]
      isVocal=wordSub.start_with?("a","e","i","o","u")
      if wordSub.length >= 4 and isVocal==false
        wordSub=wordSub.capitalize
      end
      word=word+" "+wordSub
    end
  else
    word=caps[0]
  end
  word
end
