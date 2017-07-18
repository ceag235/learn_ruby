class Timer

  def initialize
    @seconds=0;
  end

  def seconds= time
    @seconds=time
  end

  def seconds
    @seconds
  end

  def time_string
     minutes=@seconds/60
     hour=minutes/60
     scdns=@seconds%60

     if minutes >60
       minutes=minutes%60
     elsif minutes == 60
       minutes=0
     end


     if minutes<10
       minString = "0"+minutes.to_s
     else
       minString = minutes.to_s
     end

     if hour<10
       hrString = "0"+hour.to_s
     else
       hrString = hour.to_s
     end

     if scdns<10
       scdnString = "0"+scdns.to_s
     else
       scdnString = scdns.to_s
     end

     timeString=hrString+":"+ minString+":"+scdnString

  end


end
