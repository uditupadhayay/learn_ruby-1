class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(num)
    ret = ""
    if(num/10 < 1)
      ret = "0"
    end
    ret = ret + num.to_s
  end
  
  def time_string
    if(@seconds == 0)
      return "00:00:00"
    end

    hh = @seconds/3600
    mm = (@seconds - (hh*3600)) / 60
    ss = @seconds - (hh*3600) - (mm * 60)

    if hh == 0
      hh_s = "00"
    elsif (hh/10) < 1
      hh_s = "0" + hh.to_s
    else
      hh_s = hh.to_s
    end

    if mm == 0
      mm_s = "00"
    elsif (mm/10) < 1
      mm_s = "0" + mm.to_s
    else
      mm_s = mm.to_s
    end

    if ss == 0
      ss_s = "00"
    elsif (ss/10) < 1
      ss_s = "0" + ss.to_s
    else
      ss_s = ss.to_s
    end

    return hh_s + ":" + mm_s + ":" + ss_s
  end
end
