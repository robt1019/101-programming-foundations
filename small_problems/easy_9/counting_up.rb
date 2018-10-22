def sequence(number)
  if number > 0
    (1..number).to_a
  else
    (number..0).to_a
  end
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
p sequence(-10)