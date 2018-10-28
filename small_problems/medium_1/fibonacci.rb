def fibonacci(n)

  last_two_fibs = [1, 1]

  3.upto(n) do |index|
    last_two_fibs << last_two_fibs.sum
    last_two_fibs.shift
  end

  last_two_fibs.last

end

# def fibonacci_last(n)
#   last_2 = [1, 1]
#   3.upto(n) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

FIBONACCI_FINAL_NUMBERS = [
  0, 1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7, 7, 4, 1, 5, 6, 1, 7, 8, 5, 3, 8, 1, 9, 0, 9, 9, 8, 7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3, 0, 3, 3, 6, 9, 5, 4, 9, 3, 2, 5, 7, 2, 9, 1
]

def fibonacci_last(n)
  FIBONACCI_FINAL_NUMBERS[n % 60]
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts
puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
# puts fibonacci(100_001) # => 4202692702.....8285979669707537501
puts
puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4

puts fibonacci_last(123_456_789_987_745)