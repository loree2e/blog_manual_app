module InWords
  def in_words
    word_num = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 
                5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 
                9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 
                13 => "thirteen"}
    tens_num = {0 => "", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 
                6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    hund_num = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 
                5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 
                9 => "nine"}
                
    n  = self
    
    if (0..13).include?(n)
      return word_num[ n]
    elsif (14..19).include?(n)
      return "fifteen" if n == 15
      return (n.to_s[-1].to_i).in_words + "teen"
    elsif (20..99).include?(n) && n % 10 == 0
      return tens_num[n.to_s[0].to_i] + (n.to_s[-1].to_i).in_words
    elsif (20..99).include?(n)
      return tens_num[n.to_s[0].to_i] + " " + (n.to_s[-1].to_i).in_words
    elsif (100..999).include?(n) && n % 100 == 0
      return word_num[n.to_s[0].to_i] + " hundred" + (n.to_s[1..-1].to_i).in_words
    elsif (100..999).include?(n) 
      return word_num[n.to_s[0].to_i] + " hundred " + (n.to_s[1..-1].to_i).in_words
    elsif (1000..999999).include?(n) && n % 1000 == 0
      return (n/1000).in_words + " thousand" + (n.to_s[-3..-1].to_i).in_words
    elsif (1000..999999).include?(n)
      return (n/1000).in_words + " thousand " + (n.to_s[-3..-1].to_i).in_words
    elsif (1000000..999999999).include?(n) && n % 1000000 == 0
      return (n/1000000).in_words + " million" + (n.to_s[-6..-1].to_i).in_words
    elsif (1000000..999999999).include?(n)
      return (n/1000000).in_words + " million " + (n.to_s[-6..-1].to_i).in_words
    elsif (1000000000..999999999999).include?(n) && n % 1000000000 == 0
      return (n/1000000000).in_words + " billion" + (n.to_s[-9..-1].to_i).in_words
    elsif (1000000000..999999999999).include?(n)
      return (n/1000000000).in_words + " billion " + (n.to_s[-9..-1].to_i).in_words
    else
      return "one trillion"        
    end
  end
end

class Fixnum
  include InWords
end