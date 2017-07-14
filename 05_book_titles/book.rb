class Book

  def title= book
    @title=titleize(book)
  end

  def title
    @title
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


end
