def diamond(grid_size)
  counter = 1
  direction = 'increasing'

  loop do
    break if counter < 1
    puts ('*' * counter).center(grid_size)

    if(counter == grid_size)
      direction = 'decreasing'
    end

    direction == 'increasing'? counter += 2 : counter -= 2
  end
end

diamond(1)
diamond(3)
diamond(9)