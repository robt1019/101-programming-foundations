def triangle(n)
  n.times do |index|
    stars = '*' * (n - index)
    puts stars.rjust(n)
  end
end

triangle(5)
triangle(9)