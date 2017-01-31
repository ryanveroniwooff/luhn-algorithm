module Luhn
  def self.is_valid?(number)
    arr = number.to_s.reverse.split('').map{|e|e.to_i}
    arr.each_with_index.map{|v,i| i.odd? ? double(v) : v }.inject(:+) % 10 == 0
  end

  private

  def self.double(v)
    v * 2 > 9 ? (v * 2 - 9) : v * 2
  end
end
