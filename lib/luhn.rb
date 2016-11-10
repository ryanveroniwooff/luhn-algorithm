module Luhn

  def self.is_valid?(number)
    sum = 0
    number.to_s.split("").each_with_index do |num, index|
      number.to_s.size % 2 == 0 ? (sum += index % 2 == 1 ? num.to_i : num.to_i * 2 > 9 ? (num.to_i * 2 - 9) : num.to_i * 2) : (sum += index % 2 == 0 ? num.to_i : num.to_i * 2 > 9 ? (num.to_i * 2 - 9) : num.to_i * 2) 
    end
    sum % 10 == 0 ? true : false
  end
end