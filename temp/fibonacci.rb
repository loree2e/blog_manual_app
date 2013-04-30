class Integer
  def fibonacci
    n = self
    i_0 = 0
    i_1 = 1
    return 1 if n < 2 
    (2..n).each do |counter|
      temp = i_0
      i_0 = i_1
      i_1 = temp + i_1
    end
    return i_1
  end
end