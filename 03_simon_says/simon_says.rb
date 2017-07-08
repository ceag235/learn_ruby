def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text)
  text=text+" "+text
end

def repeat(text,num)
  texts=text
  while (num>1) do
    texts=texts+" "+text
    num=num-1
  end
end
