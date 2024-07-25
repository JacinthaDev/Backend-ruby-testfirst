class Timer
  #write your code here
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  # def time_string
  #   Time.at(seconds).utc.strftime("%H:%M:%S")
  # end

  def time_string
    hours = padded(@seconds / 3600)
    minutes = padded((@seconds / 60) % 60)
    seconds = padded(@seconds % 60)

    "#{hours}:#{minutes}:#{seconds}"
  end

  def padded(num)
    num_str = num.to_s
    num_str.length < 2 ? "0" + num_str : num_str
  end

end
