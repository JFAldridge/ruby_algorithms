class Timer

  def initialize
    @seconds = 0
    @minutes = 0 
    @hours = 0
  end

  attr_accessor :seconds

  def padded num
    num.to_s.rjust(2, "0")
  end


  def time_string
    while @seconds > 60
      @seconds -= 60
      @minutes += 1
    end
    while @minutes > 60
      @minutes -= 60
      @hours += 1
    end

   str = padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds)
  end

end

timer1 = Timer.new
puts timer1.time_string
timer1.seconds = 1323
puts timer1.time_string