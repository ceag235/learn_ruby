def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text,num=0)
  if num == 0
    text=text+" "+text
    exit
  else
    texts=text
    while (num>1) do
      texts=texts+" "+text
      num=num-1
    end
  end
end
