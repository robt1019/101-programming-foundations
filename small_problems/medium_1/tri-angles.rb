def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if !(angles.sum == 180 && !angles.include?(0))
  case
  when angles.any?{ |angle| angle == 90 } 
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid