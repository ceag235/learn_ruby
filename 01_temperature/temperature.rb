#write your code here
def ftoc(tempF)
  tempC=(tempF.to_f-32.0)/1.8
  tempC.ceil
end
def ctof(tempC)
  tempF=(tempC.to_f*1.8)+32.0
  tempF
end
