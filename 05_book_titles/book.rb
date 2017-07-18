class Book

  def title= book
    @title=titleize(book)
  end

  def title
    @title
  end


  def isArticle (text)
    value = case text
      when "a" then true
      when "an" then true
      when "and" then true
      when "is" then true
      when "are" then true
      when "the" then true
      when "of" then true
      else false
      end
    value
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
        elsif isArticle(wordSub)==false and wordSub.length >= 3
          wordSub=wordSub.capitalize
        elsif wordSub=="i"
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
