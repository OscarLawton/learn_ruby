class Timer

  attr_accessor :seconds

  def initialize
    @seconds=0
  end

  def seconds
    @seconds

  end

  def time_string
    if @seconds == 0
      return "00:00:00"
    else
     return  @time_string = Time.at(@seconds).utc.strftime("%H:%M:%S")
    end
  end

end
