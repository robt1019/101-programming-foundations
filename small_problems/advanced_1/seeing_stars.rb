def star(n)
  right_outer = n - 1
  left_outer = 0
  mid_point = (n / 2) 

  n.times do |outer_index|
    row_array =  Array.new(n, ' ').map.with_index do |cell, inner_index|
      if inner_index == left_outer ||
         inner_index == right_outer ||
         inner_index == mid_point ||
         outer_index == mid_point
        '*'
      else
        cell
      end
    end
    puts row_array.join
    right_outer -= 1
    left_outer += 1
  end
  puts
end

def circle(r)
  h = k = r
  (r * 2).downto(0) do |y|
    row = ''
    0.upto(r * 2) do |x|
      if (x - h)**2 + (y - k)**2 <= r**2
        row += ' *'
      else
        row += '  '
      end
    end
    puts row
  end
end

circle(20)