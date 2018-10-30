def valid_triangle?(side1, side2, side3)
  sorted = [side1, side2, side3].sort
  sorted[0..1].sum > sorted.last
end

def triangle(side1, side2, side3)
  return :invalid if !valid_triangle?(side1, side2, side3)
  case
    when side1 == side2 && side2 == side3
      :equilateral
    when side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid