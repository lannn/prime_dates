require "date"
require "prime"

date_1 = Date.new(2019, 9, 30)
date_2 = Date.new(2039, 9, 30)

def check_prime?(digits)
  is_prime = true

  loop do
    is_prime = Prime.prime?(digits.to_i)
    break if !is_prime || digits.size == 1

    digits = digits[1..-1]
  end

  is_prime
end

puts "List all prime dates from #{date_1} to #{date_2}"

(date_1..date_2).each do |date|
  date_in_digits = date.to_s.delete("-")

  if check_prime?(date_in_digits)
    puts date
  end
end
